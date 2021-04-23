require "functions"

if not Config.fastBeacon then return end

data.raw.beacon.beacon.fast_replaceable_group = "beacon"

local tier1 = createFastVersion("beacon", "beacon")
local tier2 = createFastVersion("beacon", "beacon", "-2")

tier1.entity.allowed_effects = {"consumption", "speed", "pollution"}
tier1.entity.supply_area_distance = 6
tier1.entity.energy_usage = "800kW"
tier1.entity.distribution_effectivity = 0.8
tier1.entity.module_specification = {module_slots = 4, module_info_icon_shift = {0, 0.5}, module_info_multi_row_initial_height_modifier = -0.3}

tier2.entity.allowed_effects = {"consumption", "speed", "pollution"}
tier2.entity.supply_area_distance = 9
tier2.entity.energy_usage = "4000kW"
tier2.entity.distribution_effectivity = 1
tier2.entity.module_specification = {module_slots = 12, module_info_icon_shift = {0, 0.5}, module_info_multi_row_initial_height_modifier = -0.3}
tier2.entity.next_upgrade = tier1.entity.name

registerObjectArray(tier1)
registerObjectArray(tier2)

data:extend({
	createUpgradeRecipe("beacon", 60, {}, true),
	createUpgradeRecipeWithName(getFastName("beacon"), tier1.name .. "-2", 90, {}, true)
})

data:extend(
{
  {
    type = "technology",
    name = "fast-beacons",
    icon = "__FastFurnaces__/graphics/technology/beacon.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = tier1.name
      },
    },
    prerequisites =
    {
      "advanced-electronics-2",
      "logistics-3",
      "automation-3",
	  "effect-transmission",
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"automation-science-pack", 4},
        {"logistic-science-pack", 2},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "a-f",
	icon_size = 128,
  },
    {
    type = "technology",
    name = "fast-beacons-2",
    icon = "__FastFurnaces__/graphics/technology/beacon.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = tier2.name
      },
    },
    prerequisites =
    {
      "fast-beacons",
    },
    unit =
    {
      count = 800,
      ingredients =
      {
        {"automation-science-pack", 4},
        {"logistic-science-pack", 4},
        {"chemical-science-pack", 2},
        {"utility-science-pack", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "a-f",
	icon_size = 128,
  },
}
)

