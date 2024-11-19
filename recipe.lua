data:extend(
{
    {
        type = "recipe",
        name = "basic-metal-scrap-smelting-foundry",
        icon= "__everything-spoilage__/graphics/icons/iron-copper-plate.png",
        icon_size = 64,
        category = "metallurgy",
        energy_required = 5,
        subgroup = "scrap-processing",
        ingredients = {{type = "item", name = "basic-metal-scrap", amount = 10}},
        results = {{type="fluid", name="molten-iron", amount=25},
                    {type="fluid", name="molten-copper", amount=25}}
    },
    {
        type = "recipe",
        name = "basic-metal-scrap-breakdown",
        icon= "__everything-spoilage__/graphics/icons/iron-copper-plate.png",
        icon_size = 64,
        category = "crafting",
        energy_required = 15,
        subgroup = "scrap-processing",
        ingredients = {{type = "item", name = "basic-metal-scrap", amount = 20}},
        results = {{type = "item", name = "iron-ore", amount=5, probability=0.5},
                    {type = "item", name = "copper-ore", amount=5, probability=0.5}}
    },
    {
        type = "recipe",
        name = "rusted-iron-plate",
        icon = "__everything-spoilage__/graphics/icons/rusted-iron-plate.png",
        icon_size = 64,
        category = "crafting-with-fluid",
        energy_required = 2.5,
        subgroup = "spoilage-crafting",
        ingredients = {{type = "item", name = "iron-plate", amount = 1},
                        {type = "fluid", name = "water", amount = 10}},
        results = {{type="item", name="rusted-iron-plate", amount=1},
                    {type="fluid", name="water", amount=5}}
    },
    {
        type = "recipe",
        name = "rusted-copper-plate",
        icon = "__everything-spoilage__/graphics/icons/rusted-copper-plate.png",
        icon_size = 64,
        category = "crafting-with-fluid",
        energy_required = 2.5,
        subgroup = "spoilage-crafting",
        ingredients = {{type = "item", name = "copper-plate", amount = 1},
                        {type = "fluid", name = "water", amount = 10}},
        results = {{type="item", name="rusted-copper-plate", amount=1},
                    {type="fluid", name="water", amount=5}}
    }
}
)