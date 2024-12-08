require("prototypes.function")
--[[
  TODO: tweak spoilage times
]]--


--[[
normal spoiling items.
schema: {item_name, spoil_result, spoil_time}
]]--
local general_spoilage = 
{
  {"iron-plate", "rusted-iron-plate", 30*minute},
  {"copper-plate", "rusted-copper-plate", 30*minute},
  {"steel-plate", "rusted-steel-plate", 5*hour},
  {"rusted-iron-plate", "basic-scrap-metal", 15*minute},
  {"rusted-copper-plate", "basic-scrap-metal", 15*minute},
  {"rusted-steel-plate", "basic-scrap-metal", 45*minute},
  {"advanced-scrap-metal", "basic-scrap-metal", 1*hour},
  {"electronic-waste", "basic-scrap-metal", 1*hour},
  {"oily-waste", "spoilage", 1*hour},
  {"iron-gear-wheel", "basic-scrap-metal", 30*minute},
  {"iron-stick", "basic-scrap-metal", 30*minute},
  {"copper-cable", "basic-scrap-metal", 30*minute},
  {"barrel", "basic-scrap-metal", 30*minute},
  {"pipe", "basic-scrap-metal", 30*minute},
  {"pipe-to-ground", "basic-scrap-metal", 30*minute},
  {"carbon-fiber", "carbon", 5*hour},
  {"carbon", "spoilage", 5*hour},
  {"wood", "spoilage", 1*hour},
  {"wooden-chest", "wood", 1*hour},
  {"small-electric-pole", "wood", 30*minute},
  {"rocket-fuel", "oily-waste", 1*hour},
  {"solid-fuel", "oily-waste", 30*minute},
  {"plastic-bar", "oily-waste", 10*hour},
  {"sulfur", "oily-waste", 1*hour},
  {"battery", "oily-waste", 1*hour},
  {"explosives", "oily-waste", 3*hour},
  {"flying-robot-frame", "electronic-waste",  1*hour},
  {"logistic-robot", "electronic-waste",  1*hour},
  {"construction-robot", "electronic-waste",  1*hour},
  {"substation", "electronic-waste",  1*hour},
  {"rail-signal", "electronic-waste",  30*minute},
  {"rail-chain-signal", "electronic-waste",  30*minute},
  {"decider-combinator", "electronic-waste",  30*minute},
  {"arithmetic-combinator", "electronic-waste",  30*minute},
  {"constant-combinator", "electronic-waste",  30*minute},
  {"selector-combinator", "electronic-waste",  30*minute},
  {"display-panel", "electronic-waste",  30*minute},
  {"beacon", "electronic-waste",  1*hour},
  {"electronic-circuit", "electronic-waste",  30*minute},
  {"advanced-circuit", "electronic-waste",  1*hour},
  {"processing-unit", "electronic-waste",  2*hour},
  {"quantum-processor", "electronic-waste",  2*hour},
  {"transport-belt", "basic-scrap-metal", 30*minute},
  {"fast-transport-belt", "basic-scrap-metal", 30*minute},
  {"express-transport-belt", "basic-scrap-metal", 1*hour},
  {"turbo-transport-belt", "advanced-scrap-metal", 2*hour},
  {"underground-belt", "basic-scrap-metal", 30*minute},
  {"fast-underground-belt", "basic-scrap-metal", 30*minute},
  {"express-underground-belt", "basic-scrap-metal", 1*hour},
  {"turbo-underground-belt", "advanced-scrap-metal", 2*hour},
  {"splitter", "basic-scrap-metal", 30*minute},
  {"fast-splitter", "basic-scrap-metal", 30*minute},
  {"express-splitter", "basic-scrap-metal", 1*hour},
  {"turbo-splitter", "advanced-scrap-metal", 2*hour},
  {"inserter", "basic-scrap-metal", 30*minute},
  {"long-handed-inserter", "basic-scrap-metal", 30*minute},
  {"burner-inserter", "basic-scrap-metal", 30*minute},
  {"fast-inserter", "basic-scrap-metal", 30*minute},
  {"bulk-inserter", "basic-scrap-metal", 30*minute},
  {"stack-inserter", "basic-scrap-metal", 30*minute},
  {"engine-unit", "basic-scrap-metal", 1*hour},
  {"electric-engine-unit", "basic-scrap-metal", 1*hour},
  {"medium-electric-pole", "basic-scrap-metal", 30*minute},
  {"big-electric-pole", "basic-scrap-metal", 1*hour},
  {"small-lamp", "basic-scrap-metal", 1*hour},
  {"train-stop", "basic-scrap-metal", 1*hour},
  {"low-density-structure", "basic-scrap-metal", 1*hour},
  {"rail-support", "basic-scrap-metal", 1*hour},
  {"power-switch", "basic-scrap-metal", 30*minute},
  {"programmable-speaker", "basic-scrap-metal", 30*minute},
  {"electric-mining-drill", "basic-scrap-metal", 1*hour},
  {"burner-mining-drill", "basic-scrap-metal", 30*minute},
  {"pumpjack", "basic-scrap-metal", 1*hour},
  {"offshore-pump", "basic-scrap-metal", 1*hour},
  {"steel-furnace", "basic-scrap-metal", 1*hour},
  {"electric-furnace", "basic-scrap-metal", 2*hour},
  {"recycler", "basic-scrap-metal", 1*hour},
  {"heating-tower", "basic-scrap-metal", 1*hour},
  {"agricultural-tower", "basic-scrap-metal", 1*hour},
  {"assembling-machine-1", "basic-scrap-metal", 30*minute},
  {"assembling-machine-2", "basic-scrap-metal", 1*hour},
  {"assembling-machine-3", "basic-scrap-metal", 2*hour},
  {"oil-refinery", "basic-scrap-metal", 1*hour},
  {"chemical-plant", "basic-scrap-metal", 1*hour},
  {"centrifuge", "basic-scrap-metal", 1*hour},
  {"lab", "basic-scrap-metal", 1*hour},
  {"lightning-rod", "basic-scrap-metal", 1*hour},
  {"biochamber", "basic-scrap-metal", 1*hour},
  {"roboport", "basic-scrap-metal", 1*hour},
  {"boiler", "basic-scrap-metal", 30*minute},
  {"steam-engine", "basic-scrap-metal", 30*minute},
  {"solar-panel", "basic-scrap-metal", 1*hour},
  {"accumulator", "basic-scrap-metal", 1*hour},
  {"nuclear-reactor", "basic-scrap-metal", 4*hour},
  {"heat-pipe", "basic-scrap-metal", 1*hour},
  {"heat-exchanger", "basic-scrap-metal", 1*hour},
  {"steam-turbine", "basic-scrap-metal", 1*hour},
  {"fusion-reactor", "advanced-scrap-metal", 5*hour},
  {"fusion-generator", "advanced-scrap-metal", 5*hour},
  {"tungsten-carbide", "advanced-scrap-metal", 2*hour},
  {"tungsten-plate", "advanced-scrap-metal", 2*hour},
  {"holmium-plate", "advanced-scrap-metal", 2*hour},
  {"lithium-plate", "advanced-scrap-metal", 2*hour},
  {"lithium", "advanced-scrap-metal", 2*hour},
  {"big-mining-drill", "advanced-scrap-metal", 2*hour},
  {"foundry", "advanced-scrap-metal", 2*hour},
  {"electromagnetic-plant", "advanced-scrap-metal", 2*hour},
  {"lightning-collector", "advanced-scrap-metal", 2*hour},
  {"supercapacitor", "advanced-scrap-metal", 2*hour},
  {"superconductor", "advanced-scrap-metal", 2*hour},
  {"fusion-power-cell", "advanced-scrap-metal", 2*hour},
  {"cryogenic-plant", "advanced-scrap-metal", 2*hour},
  {"uranium-235", "radioactive-waste", 2^32-1},
  {"uranium-238", "radioactive-waste", 2^32-1},
  {"uranium-fuel-cell", "radioactive-waste", 4*hour},
  {"depleted-uranium-fuel-cell", "radioactive-waste", 2*hour},
  {"nuclear-fuel", "radioactive-waste", 4*hour},
  {"fission-reactor-equipment", "radioactive-waste", 4*hour},
  {"iron-chest", "basic-scrap-metal", 1*hour},
  {"steel-chest", "basic-scrap-metal", 2*hour},
  {"buffer-chest", "basic-scrap-metal", 2*hour},
  {"requester-chest", "basic-scrap-metal", 2*hour},
  {"active-provider-chest", "basic-scrap-metal", 2*hour},
  {"passive-provider-chest", "basic-scrap-metal", 2*hour},
  {"storage-chest", "basic-scrap-metal", 2*hour},
  {"storage-tank", "basic-scrap-metal", 2*hour},
  {"pump", "basic-scrap-metal", 1*hour},
}


--[[
special spoiling items.
schema: {type, item_name, spoil_result, spoil_time}
]]--
local special_spoilage = 
{
  {"module", "efficiency-module", "electronic-waste",  1*hour},
  {"module", "efficiency-module-2", "electronic-waste",  2*hour},
  {"module", "efficiency-module-3", "electronic-waste",  4*hour},
  {"module", "productivity-module", "electronic-waste",  1*hour},
  {"module", "productivity-module-2", "electronic-waste",  2*hour},
  {"module", "productivity-module-3", "electronic-waste",  4*hour},
  {"module", "quality-module", "electronic-waste",  1*hour},
  {"module", "quality-module-2", "electronic-waste",  2*hour},
  {"module", "quality-module-3", "electronic-waste",  4*hour},
  {"module", "speed-module", "electronic-waste",  1*hour},
  {"module", "speed-module-2", "electronic-waste",  2*hour},
  {"module", "speed-module-3", "electronic-waste",  4*hour},
  {"item-with-entity-data", "locomotive", "basic-scrap-metal",  1*hour},
  {"item-with-entity-data", "car", "basic-scrap-metal",  1*hour},
  {"item-with-entity-data", "artillery-wagon", "basic-scrap-metal",  1*hour},
  {"item-with-entity-data", "cargo-wagon", "basic-scrap-metal",  1*hour},
  {"item-with-entity-data", "fluid-wagon", "basic-scrap-metal",  1*hour},
  {"item-with-entity-data", "spidertron", "basic-scrap-metal",  1*hour},
  {"item-with-entity-data", "tank", "basic-scrap-metal",  1*hour},
  {"rail-planner", "rail", "basic-scrap-metal",  1*hour},
  {"rail-planner", "rail-ramp", "basic-scrap-metal",  1*hour},
  {"tool", "automation-science-pack", "basic-scrap-metal",  1*hour},
  {"tool", "logistic-science-pack", "basic-scrap-metal",  1*hour},
  {"tool", "military-science-pack", "basic-scrap-metal",  1*hour},
  {"tool", "production-science-pack", "basic-scrap-metal",  1*hour},
  {"tool", "space-science-pack", "basic-scrap-metal",  1*hour},
  {"tool", "chemical-science-pack", "oily-waste",  1*hour},
  {"tool", "utility-science-pack", "electronic-waste",  1*hour},
  {"tool", "agricultural-science-pack", "spoilage",  1*hour},
  {"tool", "metallurgic-science-pack", "advanced-scrap-metal",  1*hour},
  {"tool", "electromagnetic-science-pack", "advanced-scrap-metal",  1*hour},
  {"tool", "cryogenic-science-pack", "advanced-scrap-metal",  1*hour},
  {"tool", "promethium-science-pack", "advanced-scrap-metal",  1*hour},
  {"ammo", "uranium-rounds-magazine", "radioactive-waste",  2*hour},
}

--[[
exploding spoiling items
schema: {type, item_name, spoil_result, spoil_time}
]]--
local explosive_spoilage = 
{
  {"ammo", "rocket", "grenade", 1*hour},
  {"ammo", "explosive-rocket", "explosive-rocket", 1*hour},
  {"ammo", "atomic-bomb", "atomic-rocket", 3*hour},
  {"ammo", "cannon-shell", "grenade", 1*hour},
  {"ammo", "explosive-cannon-shell", "explosive-cannon-projectile", 1*hour},
  {"ammo", "uranium-cannon-shell", "grenade", 1*hour},
  {"ammo", "explosive-uranium-cannon-shell", "explosive-uranium-cannon-projectile", 1*hour},
  {"ammo", "artillery-shell", "artillery-projectile", 1*hour},
  {"ammo", "railgun-ammo", "grenade", 3*hour},
  {"capsule", "grenade", "grenade", 1*hour},
  {"capsule", "cluster-grenade", "cluster-grenade", 1*hour},
  {"item", "land-mine", "grenade", 1*hour}
}



general_spoilage = filterTable(general_spoilage, "item")
special_spoilage = filterTable(special_spoilage)
explosive_spoilage = filterTable(explosive_spoilage, "explosives")
-- apply spoiling to regular items
for _, spoilage_recipe in pairs(general_spoilage) do
  data.raw["item"][spoilage_recipe[1]].spoil_result = spoilage_recipe[2]
  data.raw["item"][spoilage_recipe[1]].spoil_ticks = spoilage_recipe[3]
end

-- apply spoiling to special items
for _, spoilage_recipe in pairs(special_spoilage) do
  data.raw[spoilage_recipe[1]][spoilage_recipe[2]].spoil_result = spoilage_recipe[3]
  data.raw[spoilage_recipe[1]][spoilage_recipe[2]].spoil_ticks = spoilage_recipe[4]
end

-- apply spoiling to explosive items
if settings.startup["everything-spoilage_normal-exploding-explosives"].value then
  for _, spoilage_recipe in pairs(explosive_spoilage) do
    local type = "projectile"
    if spoilage_recipe[2] == "artillery-shell" then
      type = "artillery"
    end

    local spoilage_result = 
    {
      items_per_trigger = 1,
      trigger =
      {
        type = "direct",
        action_delivery =
        {
          type = type,
          projectile = spoilage_recipe[3],
          starting_speed = 0
        }
      }
    }

    data.raw[spoilage_recipe[1]][spoilage_recipe[2]].spoil_ticks = spoilage_recipe[4]
    data.raw[spoilage_recipe[1]][spoilage_recipe[2]].spoil_to_trigger_result = spoilage_result
    if type == "artillery" then
      type = "artillery-projectile"
    end
    data.raw[type][spoilage_recipe[3]].icon = "__base__/graphics/icons/explosion.png"
  end
end