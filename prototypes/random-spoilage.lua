
math.randomseed(settings.startup["random-spoilage-seed"].value)

local number_items = 0
for key, value in pairs(data.raw.item) do
    number_items = number_items+1
end

for key, value in pairs(data.raw.item) do
    if not value.spoil_result then
        value.spoil_result = "spoilage"
        local spoil_minute =  math.floor(settings.startup["random-spoilage-min-spoil-time"].value+(settings.startup["random-spoilage-max-spoil-time"].value - settings.startup["random-spoilage-min-spoil-time"].value)*math.random()^5)
        value.spoil_ticks = spoil_minute * minute
    end
end

-- data.raw["item"]["iron-plate"].spoil_result = data.raw.item[math.random(number_items)]
-- data.raw["item"]["iron-plate"].spoil_ticks = number_items * hour

-- settings.startup["everything-spoilage-spoil_time"].value