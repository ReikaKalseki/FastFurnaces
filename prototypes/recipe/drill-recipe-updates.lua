if data.raw.module["green-module-5"] then
  table.insert(data.raw["recipe"]["fast-drill"].ingredients,{"green-module-5", 1})
elseif data.raw.module["effectivity-module-5"] then
  table.insert(data.raw["recipe"]["fast-drill"].ingredients,{"effectivity-module-5", 1})
else
  table.insert(data.raw["recipe"]["fast-drill"].ingredients,{"effectivity-module-3", 1})
end