if not Config.fastRefinery then return end

data:extend(
{
  {
    type = "item",
    name = "fast-refinery",
    icon = "__FastFurnaces__/graphics/icons/oil-refinery.png",
	icon_size = 32,
    flags = {},
    subgroup = "production-machine",
    order = "f[oil-refinery]-f[fast-refinery-1-2]",
    place_result = "fast-refinery",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "fast-refinery",
    enabled = "false",
	energy_required = 45,
    ingredients =
    {
      {"oil-refinery", 1},
    },
    result = "fast-refinery"
  },

  {
    type = "assembling-machine",
    name = "fast-refinery",
    icon = "__FastFurnaces__/graphics/icons/oil-refinery.png",
	icon_size = 32,
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "fast-refinery"},
    max_health = 500,
    fast_replaceable_group = "refinery",
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 8
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"oil-processing"},
    crafting_speed = 2.5,
    has_backer_name = true,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = data.raw["assembling-machine"]["oil-refinery"].energy_source.emissions_per_minute*1.6
    },
    energy_usage = "900kW",
    ingredient_count = 4,
    animation =
    {
      north =
      {
        filename = "__FastFurnaces__/graphics/entity/oil-refinery/oil-refinery.png",
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      east =
      {
        filename = "__FastFurnaces__/graphics/entity/oil-refinery/oil-refinery.png",
        x = 337,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      south =
      {
        filename = "__FastFurnaces__/graphics/entity/oil-refinery/oil-refinery.png",
        x = 674,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      west =
      {
        filename = "__FastFurnaces__/graphics/entity/oil-refinery/oil-refinery.png",
        x = 1011,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      }
    },
    working_visualisations =
    {
      {
        north_position = {1.03125, -1.55},
        east_position = {-1.65625, -1.3},
        south_position = {-1.875, -2.0},
        west_position = {1.8437, -1.2},
        animation =
        {
          filename = "__FastFurnaces__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          frame_count = 29,
          width = 16,
          height = 35,
          scale = 1.5,
          shift = {0, -0.5625},
          run_mode="backward"
        },
        light = {intensity = 0.4, size = 6}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
  },
  
  
}
)


data:extend(
{
  {
    type = "technology",
    name = "fast-refinerys",
    icon = "__FastFurnaces__/graphics/technology/refinery.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fast-refinery"
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

