require "functions"

if not Config.fastDrill then return end

local drill = createFastVersion("mining-drill", "electric-mining-drill")

drill.entity.mining_speed = 1
drill.entity.energy_usage = "80kW"
drill.entity.mining_power = 4 --removed in mid 0.17
drill.entity.energy_source.emissions_per_minute = 7

registerObjectArray(drill)

data:extend({
	createUpgradeRecipe("electric-mining-drill", 20, {{"steel-plate", 25}, {"advanced-circuit", 10}}, true)
})

data:extend(
{
  {
    type = "technology",
    name = "fast-drills",
    icon = "__FastFurnaces__/graphics/technology/drill.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = drill.name
      },
    },
    prerequisites =
    {
      "advanced-electronics-2",
      "advanced-material-processing-2",
    },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 4},
        {"logistic-science-pack", 2},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1}
      },
      time = 60
    },
    upgrade = true,
    order = "a-f",
	icon_size = 32,
  },
}
)

