data:extend(
{
  {
    type = "item",
    name = "fast-drill",
    icon = "__FastFurnaces__/graphics/icons/basic-mining-drill.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "f[electric-mining-drill]-f[fast-drill-1-2]",
    place_result = "fast-drill",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "fast-drill",
    enabled = "false",
	energy_required = 20,
    ingredients =
    {
      {"electric-mining-drill", 1},
      {"steel-plate", 25},
      {"advanced-circuit", 10},
    },
    result = "fast-drill"
  },

  {
    type = "mining-drill",
    name = "fast-drill",
    icon = "__FastFurnaces__/graphics/icons/basic-mining-drill.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "fast-drill"},
    max_health = 500,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__FastFurnaces__/graphics/entity/basic-mining-drill/north.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__FastFurnaces__/graphics/entity/basic-mining-drill/east.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__FastFurnaces__/graphics/entity/basic-mining-drill/south.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__FastFurnaces__/graphics/entity/basic-mining-drill/west.png",
        frame_count = 64,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
      }
    },
    mining_speed = 1,
    energy_source =
    {
      type = "electric",
      -- will produce this much * energy pollution units per tick
      emissions = 0.075 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "100kW",
    mining_power = 4,
    resource_searching_radius = 2.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 3
    },
    radius_visualisation_picture =
    {
      filename = "__FastFurnaces__/graphics/entity/basic-mining-drill/mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    },
    fast_replaceable_group = "mining-drill"
  },
  
  
}
)


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
        recipe = "fast-drill"
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
        {"science-pack-1", 4},
        {"science-pack-2", 2},
        {"science-pack-3", 1},
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

