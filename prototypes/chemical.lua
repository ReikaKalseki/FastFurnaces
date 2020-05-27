require "functions"

if not Config.fastChemical then return end

local chem = createFastVersion("assembling-machine", "chemical-plant")

chem.entity.module_specification.module_slots = 8
chem.entity.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
chem.entity.crafting_speed = 3
chem.entity.energy_source.emissions_per_minute = data.raw["assembling-machine"]["chemical-plant"].energy_source.emissions_per_minute*2.4
chem.entity.energy_usage = "400kW"

registerObjectArray(refin)

data:extend({
	createUpgradeRecipe("chemical-plant", 30, {}, true)
})

data:extend(
{
  {
    type = "technology",
    name = "fast-chemicals",
    icon = "__FastFurnaces__/graphics/technology/chemical.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = chem.name
      },
    },
    prerequisites =
    {
      "advanced-electronics-2",
      "fluid-handling",
      "advanced-material-processing-2",
      "advanced-oil-processing",
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
	icon_size = 128,
  },
}
)

