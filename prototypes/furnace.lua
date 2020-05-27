require "functions"

if not Config.fastFurnace then return end

local furn = createFastVersion("furnace", "electric-furnace")

furn.entity.module_specification.module_slots = 8
furn.entity.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
furn.entity.crafting_speed = 3.5
furn.entity.energy_usage = "300kW"
furn.entity.energy_source.emissions_per_minute = data.raw["furnace"]["electric-furnace"].energy_source.emissions_per_minute*1.5

registerObjectArray(furn)

data:extend({
	createUpgradeRecipe("electric-furnace", 30, {}, true)
})

data:extend(
{
  {
    type = "technology",
    name = "fast-furnaces",
    icon = "__FastFurnaces__/graphics/technology/furnace.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = furn.name
      },
    },
    prerequisites =
    {
      "advanced-electronics-2",
      "logistics-2",
      "advanced-material-processing-2",
    },
    unit =
    {
      count = 100,
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
	icon_size = 128,
  },
}
)

