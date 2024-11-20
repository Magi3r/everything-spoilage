------------- PEAK GLEBA MODE -------------
if settings.startup["everything-spoilage.mod_mode"].value == "peak-gleba" then
    -- Make space age optionally required
    local spoil_result = "wood"
    if mods["space-age"] then
        spoil_result = "spoilage"
    end
    for key, value in pairs(data.raw.item) do
        if not value.spoil_result then
            value.spoil_result = spoil_result
            value.spoil_ticks = settings.startup["everything-spoilage-spoil_time"].value * minute
        end
    end
end
