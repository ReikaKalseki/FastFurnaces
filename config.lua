Config = {}

--This enables or disables the late-tier solars and steam engines to extend bobpower. Does nothing without that mod installed.
Config.extendBobPower = settings.startup["extend-bob-power"].value--true

--This makes the Tier-5 productivity modules have no restrictions on their use.
Config.freeUseModules = settings.startup["free-use-modules"].value--true

--Should the upper-tier modules be enabled?
Config.modules = settings.startup["bigger-modules"].value--true

--Should the fast refineries be enabled?
Config.fastRefinery = settings.startup["fast-refinery"].value--false

--Should the fast chemical plants be enabled?
Config.fastChemical = settings.startup["fast-chemical"].value--false

--Should the fast furnaces be enabled?
Config.fastFurnace = settings.startup["fast-furnace"].value--false

--Should the fast beacons be enabled?
Config.fastBeacon = settings.startup["fast-beacon"].value--true

--Should the fast drills be enabled?
Config.fastDrill = settings.startup["fast-drill"].value--true

--Should the fast pumps be enabled?
Config.fastPump = settings.startup["fast-pump"].value--true

--Should the big chests be enabled?
Config.bigChest = settings.startup["bigger-chests"].value--true