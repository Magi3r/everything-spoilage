require("prototypes.function")
set_seed(settings.startup["everything-spoilage_random-spoilage-seed"].value)

local random_item_blacklist = {
    "coin",
    "empty-module-slot",
    "green-wire",
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
    "red-wire",
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
    "heat-interface"
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

for _, category in pairs(categories) do
    for _, item in pairs(data.raw[category]) do
        if not item.hidden and not has_value(random_item_blacklist, item.name) then 
            local spoil_result = item.name
            while spoil_result == item.name do
                -- make sure items cant spoil into themselves
                spoil_result = all_items[randomValue(table_size(all_items))]
            end
            -- This log is used for the graphing script
            -- log(item.name .. ", " .. spoil_result)
            item.spoil_result = spoil_result
            local spoil_minute =  math.floor(settings.startup["everything-spoilage_random-spoilage-min-spoil-time"].value+(settings.startup["everything-spoilage_random-spoilage-max-spoil-time"].value - settings.startup["random-spoilage-min-spoil-time"].value)*randomValue()^3)
            item.spoil_ticks = spoil_minute * minute
        end
    end
end