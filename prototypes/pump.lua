require "functions"

if not Config.fastPump then return end

local fastpump = createFastVersion("pump", "pump")
local fastoffpump = createFastVersion("offshore-pump", "offshore-pump")

fastpump.entity.fluid_box.base_area = 24
fastpump.entity.energy_source.emissions_per_minute = 3.6
fastpump.entity.energy_usage = "150kW"
fastpump.entity.pumping_speed = 800
fastpump.entity.circuit_wire_max_distance = 12.5
fastpump.entity.max_health = 250

fastoffpump.entity.max_health = 500
fastoffpump.entity.fluid_box.base_area = 8
fastoffpump.entity.pumping_speed = 80
fastoffpump.entity.circuit_wire_max_distance = 12.5

registerObjectArray(fastpump)
registerObjectArray(fastoffpump)

data:extend({
	createUpgradeRecipe("pump", 60, {}, true),
	createUpgradeRecipe("offshore-pump", 20, {{"electric-engine-unit", 8}}, true),
})

data:extend(
{
  {
    type = "technology",
    name = "fast--pumps",
    icon = "__FastFurnaces__/graphics/technology/pumps.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = fastpump.name
      },
	   {
        type = "unlock-recipe",
        recipe = fastoffpump.name
      },
    },
    prerequisites =
    {
      "fluid-handling",
      "automation-3",
      "logistics-3",
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"automation-science-pack", 2},
        {"logistic-science-pack", 2},
        {"chemical-science-pack", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "a-f",
	icon_size = 128,
  },
}
)

