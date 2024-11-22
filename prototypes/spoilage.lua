-- todo: spoil times
local spoilage = 
{
  {"iron-plate", "rusted-iron-plate", 30*minute},
  {"copper-plate", "rusted-copper-plate", 30*minute},
  {"steel-plate", "rusted-steel-plate", 5*hour},
  {"rusted-iron-plate", "basic-metal-scrap", 15*minute},
  {"rusted-copper-plate", "basic-metal-scrap", 15*minute},
  {"rusted-steel-plate", "basic-metal-scrap", 45*minute},
  {"advanced-metal-scrap", "basic-metal-scrap", 60*minute},
  {"electronic-scrap", "basic-metal-scrap", 60*minute},
  {"oil-scrap", "spoilage", 60*minute},
  {"iron-gear-wheel", "basic-metal-scrap", 30*minute},
  {"iron-stick", "basic-metal-scrap", 30*minute},
  {"copper-cable", "basic-metal-scrap", 30*minute},
  {"barrel", "basic-metal-scrap", 30*minute},
  {"pipe", "basic-metal-scrap", 30*minute},
  {"pipe-to-ground", "basic-metal-scrap", 30*minute},
  {"carbon-fiber", "carbon", 5*hour},
  {"carbon", "spoilage", 5*hour},
  {"wood", "spoilage", 1*hour},
  {"wooden-chest", "wood", 1*hour},
  {"small-electric-pole", "wood", 30*minute},
  {"rocket-fuel", "oil-scrap", 1*hour},
  {"solid-fuel", "oil-scrap", 30*minute},
  {"plastic-bar", "oil-scrap", 10*hour},
  {"sulfur", "oil-scrap", 1*hour},
  {"battery", "oil-scrap", 1*hour},
  {"explosives", "oil-scrap", 3*hour}
} 

for key, value in pairs(spoilage) do
  data.raw["item"][value[1]].spoil_result = value[2]
  data.raw["item"][value[1]].spoil_ticks = value[3]
end

-- for key, value in pairs(data.raw.item) do
--   if not value.spoil_result then
--       value.spoil_result = "spoilage"
--       value.spoil_ticks = settings.startup["everything-spoilage-spoil_time"].value * minute
--   end
-- end