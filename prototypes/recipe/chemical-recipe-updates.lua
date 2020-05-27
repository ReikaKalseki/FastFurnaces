require "functions"
local recipe = getUpgradeRecipe("chemical-plant")

if data.raw.item["advanced-processing-unit"] then
  table.insert(recipe.ingredients,{"advanced-processing-unit", 2})
else
  table.insert(recipe.ingredients,{"processing-unit", 10})
  table.insert(recipe.ingredients,{"advanced-circuit", 20})
end

if data.raw.item["nitinol-alloy"] then
  table.insert(recipe.ingredients,{"nitinol-alloy", 2})
else
  table.insert(recipe.ingredients,{"steel-plate", 20})
end

if data.raw.item["tungsten-gear-wheel"] then
  table.insert(recipe.ingredients,{"tungsten-gear-wheel", 2})
else
  table.insert(recipe.ingredients,{"iron-gear-wheel", 20})
end


