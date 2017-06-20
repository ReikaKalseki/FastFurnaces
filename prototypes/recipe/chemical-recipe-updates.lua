if data.raw.item["advanced-processing-unit"] then
  table.insert(data.raw["recipe"]["fast-chemical"].ingredients,{"advanced-processing-unit", 2})
else
  table.insert(data.raw["recipe"]["fast-chemical"].ingredients,{"processing-unit", 10})
  table.insert(data.raw["recipe"]["fast-chemical"].ingredients,{"advanced-circuit", 20})
end

if data.raw.item["nitinol-alloy"] then
  table.insert(data.raw["recipe"]["fast-chemical"].ingredients,{"nitinol-alloy", 2})
else
  table.insert(data.raw["recipe"]["fast-chemical"].ingredients,{"steel-plate", 20})
end

if data.raw.item["tungsten-gear-wheel"] then
  table.insert(data.raw["recipe"]["fast-chemical"].ingredients,{"tungsten-gear-wheel", 2})
else
  table.insert(data.raw["recipe"]["fast-chemical"].ingredients,{"iron-gear-wheel", 20})
end


