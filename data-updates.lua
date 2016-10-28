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

if Config.modules then
	require("prototypes.recipe.module-recipes")
end

if Config.extendBobPower then
	require("prototypes.recipe.power-recipe-updates")
end

require("prototypes.general-updates")