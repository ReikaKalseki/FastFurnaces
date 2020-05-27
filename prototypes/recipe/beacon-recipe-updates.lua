require "functions"
local recipe1 = getUpgradeRecipe("beacon")
local recipe2 = data.raw.recipe[recipe1.name .. "-2"]

if data.raw.item["advanced-processing-unit"] then
  table.insert(recipe1.ingredients,{"advanced-processing-unit", 2})
  table.insert(recipe2.ingredients,{"advanced-processing-unit", 20})
else
  table.insert(recipe1.ingredients,{"processing-unit", 10})
  table.insert(recipe1.ingredients,{"advanced-circuit", 20})
  table.insert(recipe2.ingredients,{"processing-unit", 100})
  table.insert(recipe2.ingredients,{"advanced-circuit", 200})
end

if data.raw.item["nitinol-alloy"] then
  table.insert(recipe1.ingredients,{"nitinol-alloy", 2})
  table.insert(recipe2.ingredients,{"nitinol-alloy", 20})
else
  table.insert(recipe1.ingredients,{"steel-plate", 20})
  table.insert(recipe2.ingredients,{"steel-plate", 200})
end

if data.raw.item["tungsten-gear-wheel"] then
  table.insert(recipe1.ingredients,{"tungsten-gear-wheel", 2})
  table.insert(recipe2.ingredients,{"tungsten-gear-wheel", 20})
else
  table.insert(recipe1.ingredients,{"iron-gear-wheel", 20})
  table.insert(recipe2.ingredients,{"iron-gear-wheel", 200})
end

if data.raw.technology["automation-6"] then
	table.insert(data.raw["technology"]["fast-beacons-2"].prerequisites,"automation-6")
end

