-- todo: spoil times

data.raw["item"]["iron-plate"].spoil_result = "rusted-iron-plate"
data.raw["item"]["iron-plate"].spoil_ticks = 1 * minute

data.raw["item"]["copper-plate"].spoil_result = "rusted-copper-plate"
data.raw["item"]["copper-plate"].spoil_ticks= 1 * minute

for key, value in pairs(data.raw.item) do
  if not value.spoil_result then
      value.spoil_result = "spoilage"
      value.spoil_ticks = settings.startup["everything-spoilage-spoil_time"].value * minute
  end
end

local rusted_iron_plate =
{
  type = "item",
  name = "rusted-iron-plate",
  icon = "__everything-spoilage__/graphics/icons/rusted-iron-plate.png",
  icon_size = 64,
  stack_size = 100,
  spoil_result = "metal-scrap",
  spoil_ticks = 1 * minute
}

local rusted_copper_plate =
{
  type = "item",
  name = "rusted-copper-plate",
  icon = "__everything-spoilage__/graphics/icons/rusted-copper-plate.png",
  icon_size = 64,
  stack_size = 100,
  spoil_result = "metal-scrap",
  spoil_ticks = 1 * minute
}

local metal_scrap = 
{
  type = "item",
  name = "metal-scrap",
  icon = "__space-age__/graphics/icons/scrap.png", --todo: icon
  icon_size = 64,
  stack_size = 100
}

data:extend({rusted_iron_plate, rusted_copper_plate, metal_scrap})


