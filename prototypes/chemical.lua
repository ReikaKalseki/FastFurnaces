if not Config.fastChemical then return end

data:extend(
{
  {
    type = "item",
    name = "fast-chemical",
    icon = "__FastFurnaces__/graphics/icons/chemical-plant.png",
	icon_size = 32,
    flags = {},
    subgroup = "production-machine",
    order = "f[chemical-plant]-f[fast-chemical-1-2]",
    place_result = "fast-chemical",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "fast-chemical",
    enabled = "false",
	energy_required = 30,
    ingredients =
    {
      {"chemical-plant", 1},
    },
    result = "fast-chemical"
  },

  {
    type = "assembling-machine",
    name = "fast-chemical",
    icon = "__FastFurnaces__/graphics/icons/chemical-plant.png",
	icon_size = 32,
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "fast-chemical"},
    max_health = 500,
    fast_replaceable_group = "chemical",
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 8
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    animation =
    {
      north =
      {
        filename = "__FastFurnaces__/graphics/entity/chemical-plant/chemical-plant.png",
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      },
      west =
      {
        filename = "__FastFurnaces__/graphics/entity/chemical-plant/chemical-plant.png",
        x = 156,
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      },
      south =
      {
        filename = "__FastFurnaces__/graphics/entity/chemical-plant/chemical-plant.png",
        x = 312,
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      },
      east =
      {
        filename = "__FastFurnaces__/graphics/entity/chemical-plant/chemical-plant.png",
        x = 468,
        width = 156,
        height = 141,
        frame_count = 1,
        shift = {0.5, -0.078125}
      }
    },
    working_visualisations =
    {
      {
        north_position = {0.94, -0.73},
        west_position = {-0.3, 0.02},
        south_position = {-0.97, -1.47},
        east_position = {0.05, -1.46},
        animation =
        {
          filename = "__FastFurnaces__/graphics/entity/chemical-plant/boiling-green-patch.png",
          frame_count = 35,
          width = 17,
          height = 12,
          animation_speed = 0.15
        }
      },
      {
        north_position = {1.4, -0.23},
        west_position = {-0.3, 0.55},
        south_position = {-1, -1},
        east_position = {0.05, -0.96},
        north_animation =
        {
          filename = "__FastFurnaces__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
          frame_count = 1,
          width = 21,
          height = 10
        },
        west_animation =
        {
          filename = "__FastFurnaces__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
          x = 21,
          frame_count = 1,
          width = 21,
          height = 10
        },
        south_animation =
        {
          filename = "__FastFurnaces__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
          x = 42,
          frame_count = 1,
          width = 21,
          height = 10
        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/chemical-plant.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_speed = 3,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = data.raw["assembling-machine"]["chemical-plant"].energy_source.emissions_per_minute*2.4
    },
    energy_usage = "400kW",
    ingredient_count = 4,
    crafting_categories = {"chemistry"},
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, 2} }}
      }
    }
  },
  
  
}
)


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
        recipe = "fast-chemical"
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

