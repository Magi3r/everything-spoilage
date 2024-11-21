require("prototypes.function")
set_seed(settings.startup["random-spoilage-seed"].value)

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

local all_items = {}
local i = 1
for key, value in pairs(data.raw.item) do
    if (not has_value(random_item_blacklist, value.name)) then
        all_items[i] = value.name
        i = i+1
    end
end

for key, value in pairs(data.raw.item) do
    if (not has_value(random_item_blacklist, value.name)) then 
        value.spoil_result = all_items[randomValue(table_size(all_items))]
        local spoil_minute =  math.floor(settings.startup["random-spoilage-min-spoil-time"].value+(settings.startup["random-spoilage-max-spoil-time"].value - settings.startup["random-spoilage-min-spoil-time"].value)*randomValue()^3)
        value.spoil_ticks = spoil_minute * minute
    end
end