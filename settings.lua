-- Settings
data:extend({
    {
        type = "double-setting",
        name = "everything-spoilage-spoil_time",
        localised_name = {"everything-spoilage-settings.spoil_time_name"},
        localised_description = {"everything-spoilage-settings.spoil_time_description"},
        setting_type = "startup",
        default_value = 60.0
    },
    {
        type = "bool-setting",
        name = "random-spoilage-mode",
        setting_type = "startup",
        default_value = false
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