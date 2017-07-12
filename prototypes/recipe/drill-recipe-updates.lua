if data.raw.module["green-module-5"] then
  table.insert(data.raw["recipe"]["fast-drill"].ingredients,{"green-module-5", 1})
  table.insert(data.raw["technology"]["fast-drills"].prerequisites,"green-module-5")
elseif data.raw.module["effectivity-module-5"] then
  table.insert(data.raw["recipe"]["fast-drill"].ingredients,{"effectivity-module-5", 1})
  table.insert(data.raw["technology"]["fast-drills"].prerequisites,"effectivity-module-5")
else
  table.insert(data.raw["recipe"]["fast-drill"].ingredients,{"effectivity-module-3", 1})
  table.insert(data.raw["technology"]["fast-drills"].prerequisites,"effectivity-module-3")
end
