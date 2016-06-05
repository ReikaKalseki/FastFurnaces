if data.raw.item["electronic-processing-board-2"] then
  table.insert(data.raw["recipe"]["fast-refinery"].ingredients,{"electronic-processing-board-2", 2})
else
  table.insert(data.raw["recipe"]["fast-refinery"].ingredients,{"processing-unit", 10})
  table.insert(data.raw["recipe"]["fast-refinery"].ingredients,{"advanced-circuit", 20})
end

if data.raw.item["nitinol-alloy"] then
  table.insert(data.raw["recipe"]["fast-refinery"].ingredients,{"nitinol-alloy", 2})
else
  table.insert(data.raw["recipe"]["fast-refinery"].ingredients,{"steel-plate", 20})
end

if data.raw.item["tungsten-gear-wheel"] then
  table.insert(data.raw["recipe"]["fast-refinery"].ingredients,{"tungsten-gear-wheel", 2})
else
  table.insert(data.raw["recipe"]["fast-refinery"].ingredients,{"iron-gear-wheel", 20})
end


