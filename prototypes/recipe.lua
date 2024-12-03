local space_age = {
    {
        type = "recipe",
        name = "basic-scrap-metal-smelting-foundry",
        icon= "__space-age__/graphics/icons/fluid/molten-iron.png",
        icon_size = 64,
        category = "metallurgy",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = {{type = "item", name = "basic-scrap-metal", amount = 10}},
        results = {{type="fluid", name="molten-iron", amount=25},
                    {type="fluid", name="molten-copper", amount=25}}
    },
    {
        type = "recipe",
        name = "advanced-scrap-metal-smelting-foundry",
        icon= "__space-age__/graphics/icons/fluid/molten-iron.png",
        icon_size = 64,
        category = "metallurgy",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = {{type = "item", name = "advanced-scrap-metal", amount = 10}},
        results = {{type="fluid", name="molten-iron", amount=75},
                    {type="fluid", name="molten-copper", amount=75}}
    },
    {
        type = "recipe",
        name = "electronic-waste-smelting-foundry",
        icon= "__space-age__/graphics/icons/fluid/molten-iron.png",
        icon_size = 64,
        category = "metallurgy",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = {{type = "item", name = "electronic-waste", amount = 10}},
        results = {{type="fluid", name="molten-iron", amount=50},
                    {type="fluid", name="molten-copper", amount=50}}
    },
    {
        type = "recipe",
        name = "green-circuit-from-electronic-waste",
        icon = "__base__/graphics/icons/electronic-circuit.png",
        icon_size = 64,
        category = "electronics-or-assembling",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "electronic-waste", amount = 10 } },
        results = { { type = "item", name = "electronic-circuit", amount = 2 } }
    },
    {
        type = "recipe",
        name = "red-circuit-from-electronic-waste",
        icon = "__base__/graphics/icons/advanced-circuit.png",
        icon_size = 64,
        category = "electromagnetics",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "electronic-waste", amount = 10 },
            { type = "item", name = "plastic-bar",      amount = 10 } },
        results = { { type = "item", name = "advanced-circuit", amount = 2 } }
    },
    {
        type = "recipe",
        name = "tungsten-carbide-from-advanced-scrap-metal-foundry",
        icon = "__space-age__/graphics/icons/tungsten-carbide.png",
        icon_size = 64,
        category = "crafting-with-fluid-or-metallurgy",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "carbon",   amount = 1 },
            { type = "item", name = "tungsten-ore",         amount = 2 },
            { type = "item", name = "advanced-scrap-metal", amount = 5 },
            { type = "fluid", name = "sulfuric-acid",       amount = 30 }},
        results = { { type = "item", name = "tungsten-carbide", amount = 3 } }
    },
    {
        type = "recipe",
        name = "tungsten-plate-from-advanced-scrap-metal-foundry",
        icon = "__space-age__/graphics/icons/tungsten-plate.png",
        icon_size = 64,
        category = "metallurgy",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "advanced-scrap-metal", amount = 5 },
            { type = "item", name = "tungsten-ore", amount = 4 },
            { type = "fluid", name = "sulfuric-acid",           amount = 50 },
            { type = "fluid", name = "molten-iron",             amount = 20 } },
        results = { { type = "item", name = "tungsten-plate",   amount = 2 } }
    },
    {
        type = "recipe",
        name = "holmium-from-advanced-scrap-metal-foundry",
        icon = "__space-age__/graphics/icons/holmium-plate.png",
        icon_size = 64,
        category = "electromagnetics",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "advanced-scrap-metal", amount = 10 },
            { type = "fluid", name = "sulfuric-acid",           amount = 30 },
            { type = "fluid", name = "holmium-solution",        amount = 20 } },
        results = { { type = "item", name = "holmium-plate",    amount = 2 } }
    },
    {
        type = "recipe",
        name = "lithium-from-advanced-scrap-metal-foundry",
        icon = "__space-age__/graphics/icons/lithium.png",
        icon_size = 64,
        category = "cryogenics",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "advanced-scrap-metal", amount = 10 },
            { type = "item", name = "holmium-plate",    amount = 1 },
            { type = "fluid", name = "sulfuric-acid",   amount = 30 },
            { type = "fluid", name = "lithium-brine",   amount = 50 },
            { type = "fluid", name = "ammonia",         amount = 50 } },
        results = { { type = "item", name = "lithium",  amount = 7 },
            { type = "item", name = "nutrients",  amount = 1 }  } -- Ammonia + Sulfuric Acid = Ammonium Sulfate (Fertiliser)
    },
    {
        type = "recipe",
        name = "oily-waste-recycle-chemical",
        icon = "__base__/graphics/icons/fluid/heavy-oil.png",
        icon_size = 64,
        category = "oil-processing",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "oily-waste", amount = 10 },
            { type = "fluid", name = "steam",      amount = 50 } },
        results = { { type = "fluid", name = "heavy-oil", amount = 50 },
            { type = "item",  name = "carbon",    amount = 1, probability = 0.4 } }
    },
}
local quality = {
    {
        type = "recipe",
        name = "basic-scrap-metal-recycle",
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        category = "recycling",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "basic-scrap-metal", amount = 1 } },
        results = { { type = "item", name = "iron-plate", amount = 1, probability = 0.2 },
            { type = "item", name = "copper-plate", amount = 1, probability = 0.2 } }
    },
}
local core = {
    {
        type = "recipe",
        name = "basic-scrap-metal-recycle-chemical",
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        category = "chemistry",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "basic-scrap-metal", amount = 10 },
            { type = "fluid", name = "sulfuric-acid",     amount = 30 } },
        results = { { type = "item", name = "iron-plate", amount = 3, probability = 0.5 },
            { type = "item", name = "copper-plate", amount = 3, probability = 0.5 } }
    },
    {
        type = "recipe",
        name = "derust-iron",
        icon = "__base__/graphics/icons/iron-plate.png",
        icon_size = 64,
        category = "chemistry",
        energy_required = 0.5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "rusted-iron-plate", amount = 1 },
            { type = "fluid", name = "sulfuric-acid",     amount = 5 } },
        results = { { type = "item", name = "iron-plate", amount = 1, probability = 0.95 } },
    },
    {
        type = "recipe",
        name = "derust-copper",
        icon = "__base__/graphics/icons/copper-plate.png",
        icon_size = 64,
        category = "chemistry",
        energy_required = 0.5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "rusted-copper-plate", amount = 1 },
            { type = "fluid", name = "sulfuric-acid",       amount = 5 } },
        results = { { type = "item", name = "copper-plate", amount = 1, probability = 0.95 } },
    },
    {
        type = "recipe",
        name = "derust-steel",
        icon = "__base__/graphics/icons/steel-plate.png",
        icon_size = 64,
        category = "chemistry",
        energy_required = 0.5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "rusted-steel-plate", amount = 1 },
            { type = "fluid", name = "sulfuric-acid",      amount = 5 } },
        results = { { type = "item", name = "steel-plate", amount = 1, probability = 0.95 } },
    },

    {
        type = "recipe",
        name = "electronic-waste-recyle",
        icon = "__base__/graphics/icons/electronic-circuit.png",
        icon_size = 64,
        category = "recycling",
        energy_required = 5,
        subgroup = "waste-processing",
        ingredients = { { type = "item", name = "electronic-waste", amount = 1 } },
        results = { { type = "item", name = "iron-plate", amount = 1, probability = 0.2 },
            { type = "item", name = "copper-wire", amount = 1, probability = 0.2 } }
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
