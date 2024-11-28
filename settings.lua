-- Settings
data:extend(
{
    {
        type = "double-setting",
        name = "everything-spoilage-spoil_time",
        localised_name = { "mod-setting-name.spoil_time" },
        localised_description = { "mod-setting-description.spoil_time" },
        setting_type = "startup",
        default_value = 60.0
    },
    {
        type = "string-setting",
        name = "everything-spoilage-mod_mode",
        localised_name = { "mod-setting-name.mod_mode" },
        localised_description = { "mod-setting-description.mod_mode" },
        allowed_values = {
            "peak-gleba", -- there is only spoilage
            "normal",     -- actual gameplay changes, new intermediat spoil results, ...
            "random"      -- random spoil time, random spoil results
        },
        setting_type = "startup",
        default_value = "peak-gleba"
    },
    {
        type = "int-setting",
        name = "random-spoilage-seed",
        setting_type = "startup",
        default_value = 4096,
        minimum_value = 0,
        maximum_value = 1000000,
    },
    {
        type = "int-setting",
        name = "random-spoilage-min-spoil-time",
        setting_type = "startup",
        default_value = 10,
        minimum_value = 1,
        maximum_value = 100 * 60,
    },
    {
        type = "int-setting",
        name = "random-spoilage-max-spoil-time",
        setting_type = "startup",
        default_value = 10 * 60,
        minimum_value = 1,
        maximum_value = 100 * 60,
    }
})
