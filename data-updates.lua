------------- PEAK GLEBA MODE -------------
if settings.startup["everything-spoilage_mod-mode"].value == "peak-gleba" then
    require("prototypes.peak-gleba-spoilage")
end

------------- RANDOM MODE -------------
if (settings.startup["everything-spoilage_mod-mode"].value == "random") then
    require("prototypes.random-spoilage")
end

------------- NORMAL MODE -------------
if (settings.startup["everything-spoilage_mod-mode"].value == "normal") then
    require("prototypes.normal-spoilage")
end

