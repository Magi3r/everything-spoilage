local space_age = {
    {
        type = "recipe",
        name = "basic-scrap-metal-smelting-foundry",
        icons = {
            {
                icon = "__everything-spoilage__/graphics/icons/basic-scrap-metal.png",
                icon_size = 64,
                scale = 0.625,
                shift = {0, -12}
            },
            {
                icon = "__everything-spoilage__/graphics/icons/melting.png",
                scale = 0.8,
                icon_size = 64
            }
        },
        category = "metallurgy",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = {{type = "item", name = "basic-scrap-metal", amount = 10}},
        results = { { type = "fluid", name = "molten-iron", amount = 10 },
            { type = "fluid", name = "molten-copper", amount = 10 } },
        order = "b1"
    },
    {
        type = "recipe",
        name = "advanced-scrap-metal-smelting-foundry",
        icons = {
            {
                icon = "__everything-spoilage__/graphics/icons/advanced-scrap-metal.png",
                icon_size = 64,
                scale = 0.625,
                shift = {0, -12}
            },
            {
                icon = "__everything-spoilage__/graphics/icons/melting.png",
                scale = 0.8,
                icon_size = 64
            }
        },
        category = "metallurgy",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = {{type = "item", name = "advanced-scrap-metal", amount = 10}},
        results = { { type = "fluid", name = "molten-iron", amount = 15 },
            { type = "fluid", name = "molten-copper", amount = 15 } },
        order = "b3"
    },
    {
        type = "recipe",
        name = "electronic-waste-smelting-foundry",
        icons = {
            {
                icon = "__everything-spoilage__/graphics/icons/electronic-waste.png",
                icon_size = 64,
                scale = 0.625,
                shift = {0, -12}
            },
            {
                icon = "__everything-spoilage__/graphics/icons/melting.png",
                scale = 0.8,
                icon_size = 64
            }
        },
        category = "metallurgy",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = {{type = "item", name = "electronic-waste", amount = 10}},
        results = { { type = "fluid", name = "molten-iron", amount = 15 },
            { type = "fluid", name = "molten-copper", amount = 15 } },
        order = "b2"
    },
    {
        type = "recipe",
        name = "green-circuit-from-electronic-waste",
        icons = {
            {
                icon = "__everything-spoilage__/graphics/icons/electronic-waste.png",
                scale = 0.625,
                shift = {-12, -12}
            },
            {
                icon = "__base__/graphics/icons/electronic-circuit.png",
                scale = 0.625,
                shift = {12, 12}
            },
            {
                icon = "__everything-spoilage__/graphics/icons/arrow.png",
                scale = 1.0
            }
        },
        category = "electronics-or-assembling",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "electronic-waste", amount = 10 } },
        results = { { type = "item", name = "electronic-circuit", amount = 2 } },
        order = "c1"
    },
    {
        type = "recipe",
        name = "red-circuit-from-electronic-waste",
        icons = {
            {
                icon = "__everything-spoilage__/graphics/icons/electronic-waste.png",
                scale = 0.625,
                shift = {-12, -12}
            },
            {
                icon = "__base__/graphics/icons/advanced-circuit.png",
                scale = 0.625,
                shift = {12, 12}
            },
            {
                icon = "__everything-spoilage__/graphics/icons/arrow.png",
                scale = 1.0
            }
        },
        category = "electromagnetics",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "electronic-waste", amount = 10 },
            { type = "item", name = "plastic-bar",      amount = 10 } },
        results = { { type = "item", name = "advanced-circuit", amount = 2 } },
        order = "c2"
    },
    {
        type = "recipe",
        name = "tungsten-carbide-from-advanced-scrap-metal",
        icons = {
            {
                icon = "__everything-spoilage__/graphics/icons/advanced-scrap-metal.png",
                scale = 0.625,
                shift = {-12, -12}
            },
            {
                icon = "__space-age__/graphics/icons/tungsten-carbide.png",
                scale = 0.625,
                shift = {12, 12}
            },
            {
                icon = "__everything-spoilage__/graphics/icons/arrow.png",
                scale = 1.0
            }
        },
        category = "crafting-with-fluid-or-metallurgy",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "carbon",   amount = 1 },
            { type = "item", name = "tungsten-ore",         amount = 2 },
            { type = "item", name = "advanced-scrap-metal", amount = 5 },
            { type = "fluid", name = "sulfuric-acid",       amount = 30 }},
        results = { { type = "item", name = "tungsten-carbide", amount = 3 } },
        order = "d1"
    },
    {
        type = "recipe",
        name = "tungsten-plate-from-advanced-scrap-metal",
        icons = {
            {
                icon = "__everything-spoilage__/graphics/icons/advanced-scrap-metal.png",
                scale = 0.625,
                shift = {-12, -12}
            },
            {
                icon = "__space-age__/graphics/icons/tungsten-plate.png",
                scale = 0.625,
                shift = {12, 12}
            },
            {
                icon = "__everything-spoilage__/graphics/icons/arrow.png",
                scale = 1.0
            }
        },
        category = "metallurgy",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "advanced-scrap-metal", amount = 5 },
            { type = "item", name = "tungsten-ore", amount = 4 },
            { type = "fluid", name = "sulfuric-acid",           amount = 50 },
            { type = "fluid", name = "molten-iron",             amount = 20 } },
        results = { { type = "item", name = "tungsten-plate",   amount = 2 } },
        order = "d2"
    },
    {
        type = "recipe",
        name = "holmium-from-advanced-scrap-metal",
        icons = {
            {
                icon = "__everything-spoilage__/graphics/icons/advanced-scrap-metal.png",
                scale = 0.625,
                shift = {-12, -12}
            },
            {
                icon = "__space-age__/graphics/icons/holmium-plate.png",
                scale = 0.625,
                shift = {12, 12}
            },
            {
                icon = "__everything-spoilage__/graphics/icons/arrow.png",
                scale = 1.0
            }
        },
        category = "electromagnetics",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "advanced-scrap-metal", amount = 10 },
            { type = "fluid", name = "sulfuric-acid",           amount = 30 },
            { type = "fluid", name = "holmium-solution",        amount = 20 } },
        results = { { type = "item", name = "holmium-plate",    amount = 2 } },
        order = "d3"
    },
    {
        type = "recipe",
        name = "lithium-from-advanced-scrap-metal",
        icons = {
            {
                icon = "__everything-spoilage__/graphics/icons/advanced-scrap-metal.png",
                scale = 0.625,
                shift = {-12, -12}
            },
            {
                icon = "__space-age__/graphics/icons/lithium.png",
                scale = 0.625,
                shift = {12, 12}
            },
            {
                icon = "__everything-spoilage__/graphics/icons/arrow.png",
                scale = 1.0
            }
        },
        category = "cryogenics",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "advanced-scrap-metal", amount = 10 },
            { type = "item", name = "holmium-plate",    amount = 1 },
            { type = "fluid", name = "sulfuric-acid",   amount = 30 },
            { type = "fluid", name = "lithium-brine",   amount = 50 },
            { type = "fluid", name = "ammonia",         amount = 50 } },
        results = { { type = "item", name = "lithium",  amount = 7 },
            { type = "item", name = "nutrients",  amount = 1 }  }, -- Ammonia + Sulfuric Acid = Ammonium Sulfate (Fertiliser)
        order = "d4"
    },
    {
        type = "recipe",
        name = "oily-waste-recycle-chemical",
        icons = {
            {
                icon = "__everything-spoilage__/graphics/icons/oily-waste.png",
                scale = 0.625,
                shift = {-12, -12}
            },
            {
                icon = "__base__/graphics/icons/fluid/heavy-oil.png",
                scale = 0.625,
                shift = {12, 12}
            },
            {
                icon = "__everything-spoilage__/graphics/icons/arrow.png",
                scale = 1.0
            }
        },
        category = "oil-processing",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "oily-waste", amount = 10 },
            { type = "fluid", name = "steam",      amount = 50 } },
        results = { { type = "fluid", name = "heavy-oil", amount = 50 },
            { type = "item",  name = "carbon",    amount = 1, probability = 0.4 } },
        order = "a5"
    },
}

local quality = {
    {
        type = "recipe",
        name = "basic-scrap-metal-recycle",
        icons = {
            {
                icon = "__quality__/graphics/icons/recycling.png"
            },
            {
                icon = "__everything-spoilage__/graphics/icons/basic-scrap-metal.png",
                scale = 0.4
            },
            {
                icon = "__quality__/graphics/icons/recycling-top.png"
            }
        },
        category = "recycling",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "basic-scrap-metal", amount = 5 } },
        results = { { type = "item", name = "iron-plate", amount = 4, probability = 0.25 },
            { type = "item", name = "copper-plate", amount = 4, probability = 0.25 } },
        order = "e1"
    },
    {
        type = "recipe",
        name = "electronic-waste-recyle",
        icons = {
            {
                icon = "__quality__/graphics/icons/recycling.png"
            },
            {
                icon = "__everything-spoilage__/graphics/icons/electronic-waste.png",
                scale = 0.4
            },
            {
                icon = "__quality__/graphics/icons/recycling-top.png"
            }
        },
        category = "recycling",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "electronic-waste", amount = 1 } },
        results = { { type = "item", name = "electronic-circuit", amount = 1, probability = 0.1 },
            { type = "item", name = "iron-plate", amount = 1, probability = 0.2 },
            { type = "item", name = "copper-wire", amount = 1, probability = 0.3 } },
        order = "e2"
    },
    {
        type = "recipe",
        name = "advanced-scrap-metal-recycle",
        icons = {
            {
                icon = "__quality__/graphics/icons/recycling.png"
            },
            {
                icon = "__everything-spoilage__/graphics/icons/advanced-scrap-metal.png",
                scale = 0.4
            },
            {
                icon = "__quality__/graphics/icons/recycling-top.png"
            }
        },
        category = "recycling",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "advanced-scrap-metal", amount = 1 } },
        results = { { type = "item", name = "basic-scrap-metal", amount = 1, probability = 0.2 },
            { type = "item", name = "tungsten-plate", amount = 1, probability = 0.05 },
            { type = "item", name = "lithium", amount = 1, probability = 0.05 },
            { type = "item", name = "holmium-plate", amount = 1, probability = 0.05 },
            { type = "item", name = "tungsten-carbide", amount = 1, probability = 0.05 }, },
        order = "e3"
    },
}

local core = {
    {
        type = "recipe",
        name = "basic-scrap-metal-recycle-chemical",
        icons = {
            {
                icon = "__everything-spoilage__/graphics/icons/basic-scrap-metal.png",
                scale = 0.625,
                shift = {-12, -12}
            },
            {
                icon = "__base__/graphics/icons/iron-plate.png",
                scale = 0.5,
                shift = {8, 16}
            },
            {
                icon = "__base__/graphics/icons/copper-plate.png",
                scale = 0.5,
                shift = {16, 8}
            },
            {
                icon = "__everything-spoilage__/graphics/icons/arrow.png",
                scale = 1.0
            }
        },
        category = "chemistry",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "basic-scrap-metal", amount = 10 },
            { type = "fluid", name = "sulfuric-acid",     amount = 30 } },
        results = { { type = "item", name = "iron-plate", amount = 1, probability = 0.5 },
            { type = "item", name = "copper-plate", amount = 1, probability = 0.5 } },
        order = "a4"
    },
    {
        type = "recipe",
        name = "derust-iron",
        icons = {
            {
                icon = "__everything-spoilage__/graphics/icons/rusted-iron-plate.png",
                scale = 0.625,
                shift = {-12, -12}
            },
            {
                icon = "__base__/graphics/icons/iron-plate.png",
                scale = 0.625,
                shift = {12, 12}
            },
            {
                icon = "__everything-spoilage__/graphics/icons/arrow.png",
                scale = 1.0
            }
        },
        category = "chemistry",
        energy_required = 0.5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "rusted-iron-plate", amount = 1 },
            { type = "fluid", name = "sulfuric-acid",     amount = 2 } },
        results = { { type = "item", name = "iron-plate", amount = 1, probability = 0.95 } },
        order = "a1"
    },
    {
        type = "recipe",
        name = "derust-copper",
        icons = {
            {
                icon = "__everything-spoilage__/graphics/icons/rusted-copper-plate.png",
                scale = 0.625,
                shift = {-12, -12}
            },
            {
                icon = "__base__/graphics/icons/copper-plate.png",
                scale = 0.625,
                shift = {12, 12}
            },
            {
                icon = "__everything-spoilage__/graphics/icons/arrow.png",
                scale = 1.0
            }
        },
        category = "chemistry",
        energy_required = 0.5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "rusted-copper-plate", amount = 1 },
            { type = "fluid", name = "sulfuric-acid",       amount = 2 } },
        results = { { type = "item", name = "copper-plate", amount = 1, probability = 0.95 } },
        order = "a2"
    },
    {
        type = "recipe",
        name = "derust-steel",
        icons = {
            {
                icon = "__everything-spoilage__/graphics/icons/rusted-steel-plate.png",
                scale = 0.625,
                shift = {-12, -12}
            },
            {
                icon = "__base__/graphics/icons/steel-plate.png",
                scale = 0.625,
                shift = {12, 12}
            },
            {
                icon = "__everything-spoilage__/graphics/icons/arrow.png",
                scale = 1.0
            }
        },
        category = "chemistry",
        energy_required = 0.5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "rusted-steel-plate", amount = 1 },
            { type = "fluid", name = "sulfuric-acid",      amount = 2 } },
        results = { { type = "item", name = "steel-plate", amount = 1, probability = 0.95 } },
        order = "a3"
    },
}
-- always load core
data:extend(core)

-- load space_age if enabled
if mods["space-age"] then
    data:extend(space_age)
end

-- load quality if enabled
if mods["quality"] then
    data:extend(quality)
end
