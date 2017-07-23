require("config")

if Config.fastFurnace then
	require("prototypes.recipe.furnace-recipe-updates")
end

if Config.fastChemical then
	require("prototypes.recipe.chemical-recipe-updates")
end

if Config.fastRefinery then
	require("prototypes.recipe.refinery-recipe-updates")
end

if Config.fastBeacon then
	require("prototypes.recipe.beacon-recipe-updates")
end

if Config.fastPump then
	require("prototypes.recipe.pump-recipe-updates")
end

if Config.fastDrill then
	require("prototypes.recipe.drill-recipe-updates")
end

if Config.extendBobPower and data.raw.generator["steam-engine-3"] and data.raw.generator["solar-panel-3"] then
	require("prototypes.recipe.power-recipe-updates")
end

require("prototypes.general-updates")