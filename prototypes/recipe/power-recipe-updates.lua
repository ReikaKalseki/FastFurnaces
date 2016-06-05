if data.raw.item["electronic-processing-board-2"] then
  table.insert(data.raw["recipe"]["solar-panel-4"].ingredients,{"electronic-processing-board-2", 10})
  table.insert(data.raw["recipe"]["solar-panel-5"].ingredients,{"electronic-processing-board-2", 20})
  
  table.insert(data.raw["recipe"]["steam-engine-4"].ingredients,{"electronic-logic-board", 5})
  table.insert(data.raw["recipe"]["steam-engine-5"].ingredients,{"electronic-logic-board", 10})
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

if data.raw.item["silver-plate"] then
  table.insert(data.raw["recipe"]["solar-panel-4"].ingredients,{"silver-plate", 10})
  table.insert(data.raw["recipe"]["solar-panel-5"].ingredients,{"silver-plate", 20})
else
  table.insert(data.raw["recipe"]["solar-panel-4"].ingredients,{"copper-plate", 15})
  table.insert(data.raw["recipe"]["solar-panel-5"].ingredients,{"copper-plate", 30})
end

if data.raw.item["gold-plate"] then
  table.insert(data.raw["recipe"]["solar-panel-4"].ingredients,{"gold-plate", 2})
  table.insert(data.raw["recipe"]["solar-panel-5"].ingredients,{"gold-plate", 4})
end

if data.raw.item["silicon-wafer"] then
  table.insert(data.raw["recipe"]["solar-panel-4"].ingredients,{"silicon-wafer", 20})
  table.insert(data.raw["recipe"]["solar-panel-5"].ingredients,{"silicon-wafer", 30})
end


