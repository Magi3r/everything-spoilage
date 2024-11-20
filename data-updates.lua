if (settings.startup["random-spoilage-mode"].value) then
    require("prototypes.random-spoilage")
else
    require("prototypes.spoilage")
    require("prototypes.item")
    require("prototypes.item_groups")
    require("prototypes.recipe")
end
