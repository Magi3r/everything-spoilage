require("prototypes.function")
set_seed(settings.startup["everything-spoilage_random-spoilage-seed"].value)

local random_item_blacklist = {
    "coin",
    "empty-module-slot",
    "green-wire",
    "red-wire",
    "copper-wire",
    "discharge-defense-remote",
    "item-unknown",
    "parameter-0",
    "parameter-1",
    "parameter-2",
    "parameter-3",
    "parameter-4",
    "parameter-5",
    "parameter-6",
    "parameter-7",
    "parameter-8",
    "parameter-9",
    "rocket-part",
    "science",
    "infinity-chest",
    "infinity-pipe",
    "linked-chest",
    "linked-belt",
    "simple-entity-with-owner",
    "simple-entity-with-force",
    "lane-splitter",
    "loader",
    "express-loader",
    "fast-loader",
    "turbo-loader",
    "burner-generator",
    "electric-energy-interface",
    "heat-interface",
    "artillery-targeting-remote"
}

local categories = {
    "item",
    "tool",
    "module",
    "item-with-entity-data",
    "rail-planner",
    "ammo",
    "gun",
    "armor",
    "capsule",
}

local all_items = {}
local i = 1

for _, category in pairs(categories) do
    for _, item in pairs(data.raw[category]) do
        if not item.hidden and not has_value(random_item_blacklist, item.name) then
            all_items[i] = item.name
            i = i+1
        end
    end
end

if settings.startup["everything-spoilage_random-exploding-explosives"].value == "small" or settings.startup["everything-spoilage_random-exploding-explosives"].value == "all" then
    all_items[i] = "explosion_grenade"
    i = i+1
end

if settings.startup["everything-spoilage_random-exploding-explosives"].value == "all" then
    all_items[i] = "explosion_explosive-rocket"
    all_items[i+1] = "explosion_atomic-rocket"
    all_items[i+2] = "explosion_cluster-grenade"
    i = i+3
end

if settings.startup["everything-spoilage_random-biter-spoilage"].value then
    all_items[i] = "spawn_big-biter"
    i = i+1
end

if mods["space-age"] then
    if settings.startup["everything-spoilage_random-pentapod-spoilage"].value then
        all_items[i+1] = "spawn_big-wriggler-pentapod-premature"
        i = i+1
    end
end

for _, category in pairs(categories) do
    for _, item in pairs(data.raw[category]) do
        if not item.hidden and not has_value(random_item_blacklist, item.name) then 
            local spoil_minute =  math.floor(settings.startup["everything-spoilage_random-spoilage-min-spoil-time"].value+(settings.startup["everything-spoilage_random-spoilage-max-spoil-time"].value - settings.startup["everything-spoilage_random-spoilage-min-spoil-time"].value)*randomValue()^3)
            item.spoil_ticks = spoil_minute * minute

            local spoil_result = item.name
            while spoil_result == item.name do
                -- make sure items cant spoil into themselves
                spoil_result = all_items[randomValue(table_size(all_items)+1)]
            end
                -- This log is used for the graphing script
                -- log("now spoilign: " .. item.name .. ", " .. spoil_result)

            if starts_with(spoil_result, "explosion") then
                local projectile = split(spoil_result, "_")[2]
                local spoilage_result = 
                {
                    items_per_trigger = 1,
                    trigger =
                    {
                        type = "direct",
                        action_delivery =
                        {
                            type = "projectile",
                            projectile = projectile,
                            starting_speed = 0
                        }
                    }
                }

                item.spoil_to_trigger_result = spoilage_result
                data.raw["projectile"][projectile].icon = "__base__/graphics/icons/explosion.png"

            else if starts_with(spoil_result, "spawn") then
                local enemy = split(spoil_result, "_")[2]
                local spoilage_result = 
                {
                  items_per_trigger = 1,
                  trigger =
                  {
                    type = "direct",
                    action_delivery =
                    {
                      type = "instant",
                      source_effects =
                      {
                        {
                          type = "create-entity",
                          entity_name = enemy,
                          affects_target = true,
                          show_in_tooltip = true,
                          as_enemy = true,
                          find_non_colliding_position = true,
                          offset_deviation = {{-5, -5}, {5, 5}},
                          non_colliding_fail_result =
                          {
                            type = "direct",
                            action_delivery =
                            {
                              type = "instant",
                              source_effects =
                              {
                                {
                                  type = "create-entity",
                                  entity_name = enemy,
                                  affects_target = true,
                                  show_in_tooltip = false,
                                  as_enemy = true,
                                  offset_deviation = {{-1, -1}, {1, 1}},
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
                item.spoil_to_trigger_result = spoilage_result    
                
            else
                item.spoil_result = spoil_result
                
            end 
            end
        end
    end
end