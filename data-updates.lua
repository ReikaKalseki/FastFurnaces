require("config")

require("prototypes.recipe.furnace-recipe-updates")
require("prototypes.recipe.chemical-recipe-updates")
require("prototypes.recipe.refinery-recipe-updates")
require("prototypes.recipe.beacon-recipe-updates")
require("prototypes.recipe.pump-recipe-updates")
require("prototypes.recipe.module-recipes")
if Config.extendBobPower then
	require("prototypes.recipe.power-recipe-updates")
end

require("prototypes.general-updates")