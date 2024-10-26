for key, value in pairs(data.raw.item) do
    if not value.spoil_result then
        value.spoil_result = "spoilage"
        value.spoil_ticks = settings.startup["everything-spoilage-spoil_time"].value * minute
    end
end