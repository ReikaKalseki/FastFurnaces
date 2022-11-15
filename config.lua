Config = {}

--This enables or disables the late-tier solars and steam engines to extend bobpower. Does nothing without that mod installed.
Config.extendBobPower = settings.startup["extend-bob-power"].value--[[@as number]]

--This makes the Tier-5 productivity modules have no restrictions on their use.
Config.freeUseModules = settings.startup["free-use-modules"].value--[[@as boolean]]

--Should the upper-tier modules be enabled?
Config.modules = settings.startup["bigger-modules"].value--[[@as boolean]]

--Should the fast refineries be enabled?
Config.fastRefinery = settings.startup["fast-refinery"].value--[[@as boolean]]

--Should the fast chemical plants be enabled?
Config.fastChemical = settings.startup["fast-chemical"].value--[[@as boolean]]

--Should the fast furnaces be enabled?
Config.fastFurnace = settings.startup["fast-furnace"].value--[[@as boolean]]

--Should the fast beacons be enabled?
Config.fastBeacon = settings.startup["fast-beacon"].value--[[@as boolean]]

--Should the fast drills be enabled?
Config.fastDrill = settings.startup["fast-drill"].value--[[@as boolean]]

--Should the fast pumps be enabled?
Config.fastPump = settings.startup["fast-pump"].value--[[@as boolean]]

Config.fastLongInserter = settings.startup["fast-long-inserter"].value--[[@as boolean]]

--Should the big chests be enabled?
Config.bigChest = settings.startup["bigger-chests"].value--[[@as boolean]]