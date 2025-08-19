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
                "normal", -- actual gameplay changes, new intermediat spoil results, ...
                "random"  -- random spoil time, random spoil results
            },
            setting_type = "startup",
            default_value = "normal",
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
            order = "d1"
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
            order = "d2"
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
            order = "d3"
        },
        {
            type = "string-setting",
            name = "everything-spoilage_random-exploding-explosives",
            localised_name = { "mod-setting-name.random-exploding-explosives" },
            localised_description = { "mod-setting-description.random-exploding-explosives" },
            allowed_values = {
                "off", -- no spoiling into explosives
                "small", -- exploding into granade explosives
                "all" -- all explosions possible (also atomic)
            },
            setting_type = "startup",
            default_value = "off",
            order = "d4"
        },
        {
            type = "bool-setting",
            name = "everything-spoilage_random-biter-spoilage",
            localised_name = { "mod-setting-name.random-biter-spoilage" },
            localised_description = { "mod-setting-description.random-biter-spoilage" },
            setting_type = "startup",
            default_value = false,
            order = "d5"
        },
        {
            type="bool-setting",
            name = "everything-spoilage_normal-modules-spoil",
            localised_name = { "mod-setting-name.normal-modules-spoil" },
            localised_description = { "mod-setting-description.normal-modules-spoil" },
            setting_type = "startup",
            default_value = true,
            order = "c1"
        },
        {
            type = "bool-setting",
            name = "everything-spoilage_normal-exploding-explosives",
            localised_name = { "mod-setting-name.normal-exploding-explosives" },
            localised_description = { "mod-setting-description.normal-exploding-explosives" },
            setting_type = "startup",
            default_value = true,
            order = "c2"
        },
        {
            type = "bool-setting",
            name = "everything-spoilage-debug",
            setting_type = "startup",
            default_value = false,
            hidden = true
        },
    })

if mods["space-age"] then
    data:extend(
        {{
            type = "bool-setting",
            name = "everything-spoilage_random-pentapod-spoilage",
            localised_name = { "mod-setting-name.random-pentapod-spoilage" },
            localised_description = { "mod-setting-description.random-pentapod-spoilage" },
            setting_type = "startup",
            default_value = false,
            order = "d6"
        }}
    )
end
