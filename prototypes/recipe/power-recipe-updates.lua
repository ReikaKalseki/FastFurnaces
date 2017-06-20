if data.raw.item["advanced-processing-unit"] then
  table.insert(data.raw["recipe"]["solar-panel-4"].ingredients,{"advanced-processing-unit", 10})
  table.insert(data.raw["recipe"]["solar-panel-5"].ingredients,{"advanced-processing-unit", 20})
  
  table.insert(data.raw["recipe"]["steam-engine-4"].ingredients,{"processing-unit", 8})
  table.insert(data.raw["recipe"]["steam-engine-5"].ingredients,{"advanced-processing-unit", 8})
else
  table.insert(data.raw["recipe"]["solar-panel-4"].ingredients,{"processing-unit", 10})
  table.insert(data.raw["recipe"]["solar-panel-4"].ingredients,{"advanced-circuit", 20})
  table.insert(data.raw["recipe"]["solar-panel-5"].ingredients,{"processing-unit", 20})
  table.insert(data.raw["recipe"]["solar-panel-5"].ingredients,{"advanced-circuit", 40})
  
  table.insert(data.raw["recipe"]["steam-engine-4"].ingredients,{"processing-unit", 10})
  table.insert(data.raw["recipe"]["steam-engine-5"].ingredients,{"processing-unit", 20})
end

if data.raw.item["nitinol-alloy"] then
  table.insert(data.raw["recipe"]["solar-panel-4"].ingredients,{"nitinol-alloy", 5})
  table.insert(data.raw["recipe"]["solar-panel-5"].ingredients,{"nitinol-alloy", 10})
  table.insert(data.raw["recipe"]["steam-engine-4"].ingredients,{"nitinol-alloy", 10})
  table.insert(data.raw["recipe"]["steam-engine-5"].ingredients,{"nitinol-alloy", 20})
else
  table.insert(data.raw["recipe"]["solar-panel-4"].ingredients,{"steel-plate", 30})
  table.insert(data.raw["recipe"]["solar-panel-5"].ingredients,{"steel-plate", 60})
  table.insert(data.raw["recipe"]["steam-engine-4"].ingredients,{"steel-plate", 50})
  table.insert(data.raw["recipe"]["steam-engine-5"].ingredients,{"steel-plate", 100})
end

if data.raw.item["tungsten-gear-wheel"] then
  table.insert(data.raw["recipe"]["steam-engine-4"].ingredients,{"tungsten-gear-wheel", 10})
  table.insert(data.raw["recipe"]["steam-engine-5"].ingredients,{"tungsten-gear-wheel", 20})
else
  table.insert(data.raw["recipe"]["steam-engine-4"].ingredients,{"iron-gear-wheel", 50})
  table.insert(data.raw["recipe"]["steam-engine-5"].ingredients,{"iron-gear-wheel", 100})
end

if data.raw.item["nitinol-bearing"] then
  table.insert(data.raw["recipe"]["steam-engine-4"].ingredients,{"nitinol-bearing", 5})
  table.insert(data.raw["recipe"]["steam-engine-5"].ingredients,{"nitinol-bearing", 10})
end

if data.raw.item["electrum-plate"] then
  table.insert(data.raw["recipe"]["solar-panel-4"].ingredients,{"electrum", 8})
  table.insert(data.raw["recipe"]["solar-panel-5"].ingredients,{"electrum", 16})
end

if data.raw.item["silicon-wafer"] then
  table.insert(data.raw["recipe"]["solar-panel-4"].ingredients,{"silicon-wafer", 48})
  table.insert(data.raw["recipe"]["solar-panel-5"].ingredients,{"silicon-wafer", 60})
end


