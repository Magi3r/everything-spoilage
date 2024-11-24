-- todo: spoil times
local genral_spoilage = 
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
  {"explosives", "oil-scrap", 3*hour},
  {"flying-robot-frame", "electronic-scrap",  1*hour},
  {"logistic-robot", "electronic-scrap",  1*hour},
  {"construction-robot", "electronic-scrap",  1*hour},
  {"substation", "electronic-scrap",  1*hour},
  {"rail-signal", "electronic-scrap",  30*minute},
  {"rail-chain-signal", "electronic-scrap",  30*minute},
  {"decider-combinator", "electronic-scrap",  30*minute},
  {"arithmetic-combinator", "electronic-scrap",  30*minute},
  {"constant-combinator", "electronic-scrap",  30*minute},
  {"constant-combinator", "electronic-scrap",  30*minute},
  {"display-panel", "electronic-scrap",  30*minute},
  {"beacon", "electronic-scrap",  1*hour},
  {"electronic-circuit", "electronic-scrap",  30*minute},
  {"advanced-circuit", "electronic-scrap",  1*hour},
  {"processing-unit", "electronic-scrap",  2*hour},
  {"quantum-processor", "electronic-scrap",  2*hour},
}

local special_spoilage = 
{
  {"module", "efficiency-module", "electronic-scrap",  1*hour},
  {"module", "efficiency-module-2", "electronic-scrap",  2*hour},
  {"module", "efficiency-module-3", "electronic-scrap",  4*hour},
  {"module", "productivity-module", "electronic-scrap",  1*hour},
  {"module", "productivity-module-2", "electronic-scrap",  2*hour},
  {"module", "productivity-module-3", "electronic-scrap",  4*hour},
  {"module", "quality-module", "electronic-scrap",  1*hour},
  {"module", "quality-module-2", "electronic-scrap",  2*hour},
  {"module", "quality-module-3", "electronic-scrap",  4*hour},
  {"module", "speed-module", "electronic-scrap",  1*hour},
  {"module", "speed-module-2", "electronic-scrap",  2*hour},
  {"module", "speed-module-3", "electronic-scrap",  4*hour},
}

for key, value in pairs(genral_spoilage) do
  data.raw["item"][value[1]].spoil_result = value[2]
  data.raw["item"][value[1]].spoil_ticks = value[3]
end

for key, value in pairs(special_spoilage) do
  data.raw[value[1]][value[2]].spoil_result = value[3]
  data.raw[value[1]][value[2]].spoil_ticks = value[4]
end

-- for key, value in pairs(data.raw.item) do
--   if not value.spoil_result then
--       value.spoil_result = "spoilage"
--       value.spoil_ticks = settings.startup["everything-spoilage-spoil_time"].value * minute
--   end
-- end