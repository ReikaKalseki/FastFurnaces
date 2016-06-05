require("config")

require("prototypes.category")

require("prototypes.overrides")

require("prototypes.furnace")
require("prototypes.chemical")
require("prototypes.refinery")
require("prototypes.module")
require("prototypes.drill")
require("prototypes.beacon")
require("prototypes.pump")
require("prototypes.chest")

if Config.extendBobPower then
	require("prototypes.power")
end