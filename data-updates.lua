if (settings.startup["everything-spoilage_mod-mode"].value == "random") then
    require("prototypes.random-spoilage")
else if (settings.startup["everything-spoilage-mod_mode"].value == "normal") then
    require("prototypes.item")
    require("prototypes.spoilage")
    require("prototypes.item_groups")
    require("prototypes.recipe")
end
end