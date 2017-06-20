require("config")

require("prototypes.category")

require("prototypes.overrides")

-----------
if Config.fastFurnace then
	require("prototypes.furnace")
end

if Config.fastChemical then
	require("prototypes.chemical")
end

if Config.fastChemical then
	require("prototypes.refinery")
end

if Config.modules then
	require("prototypes.module")
end

if Config.fastDrill then
	require("prototypes.drill")
end

if Config.fastBeacon then
	require("prototypes.beacon")
end

if Config.fastPump then
	require("prototypes.pump")
end

if Config.bigChest then
	require("prototypes.chest")
end

if Config.extendBobPower and data.raw.generator["steam-engine-3"] and data.raw.generator["solar-panel-3"] then
	require("prototypes.power")
end