require "functions"

if not Config.fastRefinery then return end

local refin = createFastVersion("assembling-machine", "oil-refinery")

refin.entity.module_specification.module_slots = 8
refin.entity.allowed_effects = {"consumption", "speed", "productivity", "pollution"}
refin.entity.crafting_speed = 2.5
refin.entity.has_backer_name = true
refin.entity.energy_source.emissions_per_minute = data.raw["assembling-machine"]["oil-refinery"].energy_source.emissions_per_minute*1.6
refin.entity.energy_usage = "900kW"

registerObjectArray(refin)

data:extend({
	createUpgradeRecipe("oil-refinery", 45, {}, true)
})

data:extend(
{
  {
    type = "technology",
    name = "fast-refineries",
    icon = "__FastFurnaces__/graphics/technology/refinery.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = refin.name
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
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 2},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
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

