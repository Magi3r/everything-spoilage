-- todo: spoil times
local genral_spoilage = 
{
  {"iron-plate", "rusted-iron-plate", 30*minute},
  {"copper-plate", "rusted-copper-plate", 30*minute},
  {"steel-plate", "rusted-steel-plate", 5*hour},
  {"rusted-iron-plate", "basic-metal-scrap", 15*minute},
  {"rusted-copper-plate", "basic-metal-scrap", 15*minute},
  {"rusted-steel-plate", "basic-metal-scrap", 45*minute},
  {"advanced-metal-scrap", "basic-metal-scrap", 1*hour},
  {"electronic-scrap", "basic-metal-scrap", 1*hour},
  {"oil-scrap", "spoilage", 1*hour},
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
  {"transport-belt", "basic-metal-scrap", 30*minute},
  {"fast-transport-belt", "basic-metal-scrap", 30*minute},
  {"express-transport-belt", "basic-metal-scrap", 1*hour},
  {"turbo-transport-belt", "advanced-metal-scrap", 2*hour},
  {"inserter", "basic-metal-scrap", 30*minute},
  {"long-handed-inserter", "basic-metal-scrap", 30*minute},
  {"burner-inserter", "basic-metal-scrap", 30*minute},
  {"fast-inserter", "basic-metal-scrap", 30*minute},
  {"bulk-inserter", "basic-metal-scrap", 30*minute},
  {"stack-inserter", "basic-metal-scrap", 30*minute},
  {"engine-unit", "basic-metal-scrap", 1*hour},
  {"electric-engine-unit", "basic-metal-scrap", 1*hour},
  {"medium-electric-pole", "basic-metal-scrap", 30*minute},
  {"big-electric-pole", "basic-metal-scrap", 1*hour},
  {"small-lamp", "basic-metal-scrap", 1*hour},
  {"train-stop", "basic-metal-scrap", 1*hour},
  {"low-density-structure", "basic-metal-scrap", 1*hour},
  {"rail-support", "basic-metal-scrap", 1*hour},
  {"power-switch", "basic-metal-scrap", 30*minute},
  {"programmable-speaker", "basic-metal-scrap", 30*minute},
  {"electric-mining-drill", "basic-metal-scrap", 1*hour},
  {"burner-mining-drill", "basic-metal-scrap", 30*minute},
  {"pumpjack", "basic-metal-scrap", 1*hour},
  {"offshore-pump", "basic-metal-scrap", 1*hour},
  -- {"stone-furnace", "basic-metal-scrap", 30*minute},
  {"steel-furnace", "basic-metal-scrap", 1*hour},
  {"electric-furnace", "basic-metal-scrap", 2*hour},
  {"recycler", "basic-metal-scrap", 1*hour},
  {"heating-tower", "basic-metal-scrap", 1*hour},
  {"agricultural-tower", "basic-metal-scrap", 1*hour},
  {"assembling-machine-1", "basic-metal-scrap", 30*minute},
  {"assembling-machine-2", "basic-metal-scrap", 1*hour},
  {"assembling-machine-3", "basic-metal-scrap", 2*hour},
  {"oil-refinery", "basic-metal-scrap", 1*hour},
  {"chemical-plant", "basic-metal-scrap", 1*hour},
  {"centrifuge", "basic-metal-scrap", 1*hour},
  {"lab", "basic-metal-scrap", 1*hour},
  {"lightning-rod", "basic-metal-scrap", 1*hour},
  {"biochamber", "basic-metal-scrap", 1*hour},
  {"roboport", "basic-metal-scrap", 1*hour},
  {"boiler", "basic-metal-scrap", 30*minute},
  {"steam-engine", "basic-metal-scrap", 30*minute},
  {"solar-panel", "basic-metal-scrap", 1*hour},
  {"accumulator", "basic-metal-scrap", 1*hour},
  {"nuclear-reactor", "basic-metal-scrap", 4*hour},
  {"heat-pipe", "basic-metal-scrap", 1*hour},
  {"heat-exchanger", "basic-metal-scrap", 1*hour},
  {"steam-turbine", "basic-metal-scrap", 1*hour},
  {"fusion-reactor", "advanced-metal-scrap", 5*hour},
  {"fusion-generator", "advanced-metal-scrap", 5*hour},
  {"tungsten-carbide", "advanced-metal-scrap", 2*hour},
  {"tungsten-plate", "advanced-metal-scrap", 2*hour},
  {"holmium-plate", "advanced-metal-scrap", 2*hour},
  {"lithium-plate", "advanced-metal-scrap", 2*hour},
  {"big-mining-drill", "advanced-metal-scrap", 2*hour},
  {"foundry", "advanced-metal-scrap", 2*hour},
  {"electromagnetic-plant", "advanced-metal-scrap", 2*hour},
  {"lightning-collector", "advanced-metal-scrap", 2*hour},
  {"supercapacitor", "advanced-metal-scrap", 2*hour},
  {"superconductor", "advanced-metal-scrap", 2*hour},
  {"fusion-power-cell", "advanced-metal-scrap", 2*hour},
  {"cryogenic-plant", "advanced-metal-scrap", 2*hour},
  {"uranium-235", "atomic-scrap", 2^32-1},
  {"uranium-238", "atomic-scrap", 2^32-1},
  {"uranium-fuel-cell", "atomic-scrap", 4*hour},
  {"depleted-uranium-fuel-cell", "atomic-scrap", 2*hour},
  {"nuclear-fuel", "atomic-scrap", 4*hour},
  {"fission-reactor-equipment", "atomic-scrap", 4*hour},
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
  {"item-with-entity-data", "locomotive", "basic-metal-scrap",  1*hour},
  {"item-with-entity-data", "car", "basic-metal-scrap",  1*hour},
  {"item-with-entity-data", "artillery-wagon", "basic-metal-scrap",  1*hour},
  {"item-with-entity-data", "cargo-wagon", "basic-metal-scrap",  1*hour},
  {"item-with-entity-data", "fluid-wagon", "basic-metal-scrap",  1*hour},
  {"item-with-entity-data", "spidertron", "basic-metal-scrap",  1*hour},
  {"item-with-entity-data", "tank", "basic-metal-scrap",  1*hour},
  {"rail-planner", "rail", "basic-metal-scrap",  1*hour},
  {"rail-planner", "rail-ramp", "basic-metal-scrap",  1*hour},
  {"tool", "automation-science-pack", "basic-metal-scrap",  1*hour},
  {"tool", "logistic-science-pack", "basic-metal-scrap",  1*hour},
  {"tool", "military-science-pack", "basic-metal-scrap",  1*hour},
  {"tool", "production-science-pack", "basic-metal-scrap",  1*hour},
  {"tool", "space-science-pack", "basic-metal-scrap",  1*hour},
  {"tool", "chemical-science-pack", "oil-scrap",  1*hour},
  {"tool", "utility-science-pack", "electronic-scrap",  1*hour},
  {"tool", "agricultural-science-pack", "spoilage",  1*hour},
  {"tool", "metallurgic-science-pack", "advanced-metal-scrap",  1*hour},
  {"tool", "electromagnetic-science-pack", "advanced-metal-scrap",  1*hour},
  {"tool", "cryogenic-science-pack", "advanced-metal-scrap",  1*hour},
  {"tool", "promethium-science-pack", "advanced-metal-scrap",  1*hour},
  {"ammo", "uranium-rounds-magazine", "atomic-scrap",  2*hour},
}

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
  {"item", "land-mine", "grenade", 1*hour},
}

for _, spoilage_recipe in pairs(genral_spoilage) do
  if settings.startup["everything-spoilage-debug"].value then
    log("now spoiling: " .. spoilage_recipe[1])
  end

  data.raw["item"][spoilage_recipe[1]].spoil_result = spoilage_recipe[2]
  data.raw["item"][spoilage_recipe[1]].spoil_ticks = spoilage_recipe[3]
end

for _, spoilage_recipe in pairs(special_spoilage) do
  if settings.startup["everything-spoilage-debug"].value then
    log("now spoiling: " .. spoilage_recipe[2])
  end

  data.raw[spoilage_recipe[1]][spoilage_recipe[2]].spoil_result = spoilage_recipe[3]
  data.raw[spoilage_recipe[1]][spoilage_recipe[2]].spoil_ticks = spoilage_recipe[4]
end

for _, spoilage_recipe in pairs(explosive_spoilage) do
  if settings.startup["everything-spoilage-debug"].value then
    log("now spoiling: " .. spoilage_recipe[2])
  end

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