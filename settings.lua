-- Settings
data:extend(
{
    {
        type = "string-setting",
        name = "everything-spoilage_mod-mode",
        localised_name = { "mod-setting-name.mod-mode" },
        localised_description = { "mod-setting-description.mod-mode" },
        allowed_values = {
            "peak-gleba", -- there is only spoilage
            "normal",     -- actual gameplay changes, new intermediat spoil results, ...
            "random"      -- random spoil time, random spoil results
        },
        setting_type = "startup",
        default_value = "peak-gleba",
        order = "a"
    },
    {
        type = "double-setting",
        name = "everything-spoilage_spoil-time",
        localised_name = { "mod-setting-name.spoil-time" },
        localised_description = { "mod-setting-description.spoil-time" },
        setting_type = "startup",
        default_value = 60.0,
        order = "b1"
    },
    {
        type = "int-setting",
        name = "everything-spoilage_random-spoilage-seed",
        localised_name = { "mod-setting-name.random-spoilage-seed" },
        localised_description = { "mod-setting-description.random-spoilage-seed" },
        setting_type = "startup",
        default_value = 4096,
        minimum_value = 0,
        maximum_value = 1000000,
        order = "c1"
    },
    {
        type = "int-setting",
        name = "everything-spoilage_random-spoilage-min-spoil-time",
        localised_name = { "mod-setting-name.random-spoilage-min-spoil-time" },
        localised_description = { "mod-setting-description.random-spoilage-min-spoil-time" },
        setting_type = "startup",
        default_value = 10,
        minimum_value = 1,
        maximum_value = 100 * 60,
        order = "c2"
    },
    {
        type = "int-setting",
        name = "everything-spoilage_random-spoilage-max-spoil-time",
        localised_name = { "mod-setting-name.random-spoilage-max-spoil-time" },
        localised_description = { "mod-setting-description.random-spoilage-max-spoil-time" },
        setting_type = "startup",
        default_value = 10 * 60,
        minimum_value = 1,
        maximum_value = 100 * 60,
        order = "c3"
    },
    {
        type = "bool-setting",
        name = "everything-spoilage_exploding-explosives",
        localised_name = { "mod-setting-name.exploding-explosives" },
        localised_description = { "mod-setting-description.exploding-explosives" },
        setting_type = "startup",
        default_value = false
    },
    {
        type = "bool-setting",
        name = "everything-spoilage-debug",
        setting_type = "startup",
        default_value = true,
        hidden = true
    }
})
