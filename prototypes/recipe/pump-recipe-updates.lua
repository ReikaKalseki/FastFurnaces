if data.raw.item["advanced-processing-unit"] then
  table.insert(data.raw["recipe"]["fast--pump"].ingredients,{"advanced-processing-unit", 2})
  table.insert(data.raw["recipe"]["big-offshore-pump"].ingredients,{"electronic-processing-board", 1})
else
  table.insert(data.raw["recipe"]["fast--pump"].ingredients,{"processing-unit", 10})
  table.insert(data.raw["recipe"]["fast--pump"].ingredients,{"advanced-circuit", 20})
  table.insert(data.raw["recipe"]["big-offshore-pump"].ingredients,{"advanced-circuit", 6})
end

if data.raw.item["nitinol-alloy"] then
  table.insert(data.raw["recipe"]["fast--pump"].ingredients,{"nitinol-alloy", 2})
else
  table.insert(data.raw["recipe"]["fast--pump"].ingredients,{"steel-plate", 20})
end

if data.raw.item["tungsten-gear-wheel"] then
  table.insert(data.raw["recipe"]["fast--pump"].ingredients,{"tungsten-gear-wheel", 2})
  table.insert(data.raw["recipe"]["big-offshore-pump"].ingredients,{"tungsten-gear-wheel", 1})
else
  table.insert(data.raw["recipe"]["fast--pump"].ingredients,{"iron-gear-wheel", 20})
  table.insert(data.raw["recipe"]["big-offshore-pump"].ingredients,{"iron-gear-wheel", 10})
end


