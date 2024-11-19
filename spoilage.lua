-- todo: spoil times
data.raw["item"]["iron-plate"].spoil_result = "rusted-iron-plate"
data.raw["item"]["iron-plate"].spoil_ticks = 1 * hour

data.raw["item"]["copper-plate"].spoil_result = "rusted-copper-plate"
data.raw["item"]["copper-plate"].spoil_ticks= 1 * hour

for key, value in pairs(data.raw.item) do
  if not value.spoil_result then
      value.spoil_result = "spoilage"
      value.spoil_ticks = settings.startup["everything-spoilage-spoil_time"].value * minute
  end
end