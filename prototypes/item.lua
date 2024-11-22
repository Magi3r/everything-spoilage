data:extend(
{
    {
        type = "item",
        name = "rusted-iron-plate",
        icon = "__everything-spoilage__/graphics/icons/rusted-iron-plate.png",
        icon_size = 64,
        stack_size = 100,
        subgroup = "spoilage-items",
        weight = 1 * kg
    },
    {
        type = "item",
        name = "rusted-copper-plate",
        icon = "__everything-spoilage__/graphics/icons/rusted-copper-plate.png",
        icon_size = 64,
        stack_size = 100,
        subgroup = "spoilage-items",
        weight = 1 * kg
    },
    {
        type = "item",
        name = "rusted-steel-plate",
        icon = "__everything-spoilage__/graphics/icons/rusted-steel-plate.png",
        icon_size = 64,
        stack_size = 100,
        subgroup = "spoilage-items",
        weight = 1 * kg
    },
    {
        type = "item",
        name = "basic-metal-scrap",
        icon = "__space-age__/graphics/icons/scrap.png", --todo: icon
        icon_size = 64,
        stack_size = 100,
        subgroup = "spoilage-items",
        weight = 1 * kg
    },
    {
        type = "item",
        name = "advanced-metal-scrap",
        icon = "__space-age__/graphics/icons/scrap.png", --todo: icon
        icon_size = 64,
        stack_size = 100,
        subgroup = "spoilage-items",
        weight = 1 * kg
    },
    {
        type = "item",
        name = "electronic-scrap",
        icon = "__space-age__/graphics/icons/scrap.png", --todo: icon
        icon_size = 64,
        stack_size = 100,
        subgroup = "spoilage-items",
        weight = 1 * kg
    }
    ,
    {
        type = "item",
        name = "oil-scrap",
        icon = "__everything-spoilage__/graphics/icons/oil-scrap.png", --todo: icon
        icon_size = 64,
        stack_size = 100,
        spoil_result = "spoilage",
        spoil_ticks = 1 * minute,
        subgroup = "spoilage-items",
        weight = 1 * kg,
        fuel_value = "250kJ",
        fuel_category = "chemical",
        fuel_acceleration_multiplier = 0.5,
        fuel_top_speed_multiplier = 0.5,
    }
}
)