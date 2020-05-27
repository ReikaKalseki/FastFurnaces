require "functions"
local recipe1 = getUpgradeRecipe("pump")
local recipe2 = getUpgradeRecipe("offshore-pump")

if data.raw.item["advanced-processing-unit"] then
  table.insert(recipe1.ingredients,{"advanced-processing-unit", 2})
  table.insert(recipe2.ingredients,{"electronic-processing-board", 1})
else
  table.insert(recipe1.ingredients,{"processing-unit", 10})
  table.insert(recipe1.ingredients,{"advanced-circuit", 20})
  table.insert(recipe2.ingredients,{"advanced-circuit", 6})
end

if data.raw.item["nitinol-alloy"] then
  table.insert(recipe1.ingredients,{"nitinol-alloy", 2})
else
  table.insert(recipe1.ingredients,{"steel-plate", 20})
end

if data.raw.item["tungsten-gear-wheel"] then
  table.insert(recipe1.ingredients,{"tungsten-gear-wheel", 2})
  table.insert(recipe2.ingredients,{"tungsten-gear-wheel", 1})
else
  table.insert(recipe1.ingredients,{"iron-gear-wheel", 20})
  table.insert(recipe2.ingredients,{"iron-gear-wheel", 10})
end


