if data.raw.item["electronic-processing-board-2"] then
  table.insert(data.raw["recipe"]["fast-beacon"].ingredients,{"electronic-processing-board-2", 2})
  table.insert(data.raw["recipe"]["fast-beacon-2"].ingredients,{"electronic-processing-board-2", 20})
else
  table.insert(data.raw["recipe"]["fast-beacon"].ingredients,{"processing-unit", 10})
  table.insert(data.raw["recipe"]["fast-beacon"].ingredients,{"advanced-circuit", 20})
  table.insert(data.raw["recipe"]["fast-beacon-2"].ingredients,{"processing-unit", 100})
  table.insert(data.raw["recipe"]["fast-beacon-2"].ingredients,{"advanced-circuit", 200})
end

if data.raw.item["nitinol-alloy"] then
  table.insert(data.raw["recipe"]["fast-beacon"].ingredients,{"nitinol-alloy", 2})
  table.insert(data.raw["recipe"]["fast-beacon-2"].ingredients,{"nitinol-alloy", 20})
else
  table.insert(data.raw["recipe"]["fast-beacon"].ingredients,{"steel-plate", 20})
  table.insert(data.raw["recipe"]["fast-beacon-2"].ingredients,{"steel-plate", 200})
end

if data.raw.item["tungsten-gear-wheel"] then
  table.insert(data.raw["recipe"]["fast-beacon"].ingredients,{"tungsten-gear-wheel", 2})
  table.insert(data.raw["recipe"]["fast-beacon-2"].ingredients,{"tungsten-gear-wheel", 20})
else
  table.insert(data.raw["recipe"]["fast-beacon"].ingredients,{"iron-gear-wheel", 20})
  table.insert(data.raw["recipe"]["fast-beacon-2"].ingredients,{"iron-gear-wheel", 200})
end

if data.raw.technology["automation-6"] then
	table.insert(data.raw["technology"]["fast-beacons-2"].prerequisites,"automation-6")
end

