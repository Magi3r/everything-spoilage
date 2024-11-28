------------- PEAK GLEBA MODE -------------
if settings.startup["everything-spoilage-mod_mode"].value == "peak-gleba" then
    -- Make space age optionally required
    local spoil_result = "wood"
    if mods["space-age"] then
        spoil_result = "spoilage"
    end

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

    for _, category in pairs(categories) do
        for _, item in pairs(data.raw[category]) do
            if not item.spoil_result and not item.hidden and item.name ~= spoil_result then
                item.spoil_result = spoil_result
                item.spoil_ticks = settings.startup["everything-spoilage-spoil_time"].value * minute
            end
        end
    end
end
