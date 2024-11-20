-- Settings
local spoilage_time_setting =
{
    type = "double-setting",
    name = "everything-spoilage-spoil_time",
    localised_name = { "mod-setting-name.spoil_time" },
    localised_description = { "mod-setting-description.spoil_time" },
    setting_type = "startup",
    default_value = 60.0
}

local mod_mode_setting =
{
    type = "string",
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
}

data:extend({ spoilage_time_setting, mod_mode_setting })
