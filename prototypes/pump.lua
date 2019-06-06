if not Config.fastPump then return end

data:extend(
{
  {
    type = "item",
    name = "fast--pump",
    icon = "__FastFurnaces__/graphics/icons/small-pump.png",
	icon_size = 32,
    flags = {},
    subgroup = "energy-pipe-distribution",
    order = "f[pump]-f[fast--pump-1-2]",
    place_result = "fast--pump",
    stack_size = 50
  },
    {
    type = "item",
    name = "big-offshore-pump",
    icon = "__FastFurnaces__/graphics/icons/offshore-pump.png",
	icon_size = 32,
    flags = {},
    subgroup = "extraction-machine",
    order = "b[fluids]-a[big-offshore-pump]",
    place_result = "big-offshore-pump",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "fast--pump",
    enabled = "false",
	energy_required = 60,
    ingredients =
    {
      {"pump", 1},
    },
    result = "fast--pump"
  },

  {
    type = "recipe",
    name = "big-offshore-pump",
    enabled = "false",
	energy_required = 20,
    ingredients =
    {
      {"offshore-pump", 1},
      {"electric-engine-unit", 8},
    },
    result = "big-offshore-pump"
  },

  {
    type = "pump",
    name = "fast--pump",
    icon = "__FastFurnaces__/graphics/icons/small-pump.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    collision_mask = { "ground-tile", "object-layer" },
    fluid_box_tile_collision_test = { "ground-tile" },
    adjacent_tile_collision_test = { "water-tile" },
    minable = {mining_time = 1, result = "fast--pump"},
    max_health = 250,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 24,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1}, type="output" },
        { position = {0, 1}, type="input" },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 3.6
    },
    energy_usage = "150kW",
    pumping_speed = 800,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animations =
    {
      north =
      {
        filename = "__FastFurnaces__/graphics/entity/small-pump/small-pump-up.png",
        width = 46,
        height = 52,
        frame_count = 8,
        shift = {0.09375, 0.03125},
        animation_speed = 0.5
      },
      east =
      {
        filename = "__FastFurnaces__/graphics/entity/small-pump/small-pump-right.png",
        width = 51,
        height = 56,
        frame_count = 8,
        shift = {0.265625, -0.21875},
        animation_speed = 0.5
      },
      south =
      {
        filename = "__FastFurnaces__/graphics/entity/small-pump/small-pump-down.png",
        width = 61,
        height = 58,
        frame_count = 8,
        shift = {0.421875, -0.125},
        animation_speed = 0.5
      },
      west =
      {
        filename = "__FastFurnaces__/graphics/entity/small-pump/small-pump-left.png",
        width = 56,
        height = 44,
        frame_count = 8,
        shift = {0.3125, 0.0625},
        animation_speed = 0.5
      }
    },
    circuit_wire_connection_points = circuit_connector_definitions["pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["pump"].sprites,
    circuit_wire_max_distance = 12.5

  },
    {
    type = "offshore-pump",
    name = "big-offshore-pump",
    icon = "__FastFurnaces__/graphics/icons/offshore-pump.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation", "filter-directions"},
    minable = {mining_time = 1, result = "big-offshore-pump"},
    max_health = 200,
    fluid_box_tile_collision_test = { "ground-tile" },
    adjacent_tile_collision_test = { "water-tile" },
    corpse = "small-remnants",
    fluid = "water",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.6, -0.3}, {0.6, 0.3}},
    selection_box = {{-1, -1.49}, {1, 0.49}},
    fluid_box =
    {
      base_area = 8,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 1} },
      },
    },
    pumping_speed = 80,
    tile_width = 1,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      north =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {0.9, 0.05},
        width = 160,
        height = 102
      },
      east =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {0.9, 0.05},
        x = 160,
        width = 160,
        height = 102
      },
      south =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {0.9, 0.65},
        x = 320,
        width = 160,
        height = 102
      },
      west =
      {
        filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
        priority = "high",
        shift = {1.0, 0.05},
        x = 480,
        width = 160,
        height = 102
      }
    },
    circuit_wire_connection_points = circuit_connector_definitions["offshore-pump"].points,
    circuit_connector_sprites = circuit_connector_definitions["offshore-pump"].sprites,
    circuit_wire_max_distance = 12.5

  },
  
  
}
)


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
        recipe = "fast--pump"
      },
	   {
        type = "unlock-recipe",
        recipe = "big-offshore-pump"
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

