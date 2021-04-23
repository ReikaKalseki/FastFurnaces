require "functions"

data.raw["assembling-machine"]["oil-refinery"].fast_replaceable_group = "oil-refinery"

if Config.fastLongInserter and data.raw.inserter["long-handed-inserter"].fast_replaceable_group == "long-handed-inserter" then
	data.raw.inserter["long-handed-inserter"].next_upgrade = "fast-long-handed-inserter"
end

if Config.fastDrill and data.raw["mining-drill"]["electric-mining-drill"].next_upgrade == nil then
	local n = getFastName("electric-mining-drill")
	data.raw["mining-drill"]["electric-mining-drill"].fast_replaceable_group = "mining-drill"
	data.raw["mining-drill"]["electric-mining-drill"].next_upgrade = n
end

if Config.fastChemical and data.raw["assembling-machine"]["chemical-plant"].next_upgrade == nil then
	local n = getFastName("chemical-plant")
	data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "chemical-plant"
	data.raw["assembling-machine"]["chemical-plant"].next_upgrade = n
end

if Config.fastBeacon and data.raw.beacon.beacon.next_upgrade == nil then
	local n1 = getFastName("beacon")
	--local n2 = getFastName(n1, "-2")
	data.raw.beacon.beacon.fast_replaceable_group = "beacon"
	data.raw.beacon.beacon.next_upgrade = n1
	--data.raw.beacon[n1].next_upgrade = n2
end