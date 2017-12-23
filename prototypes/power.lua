if not (Config.extendBobPower and data.raw.generator["steam-engine-3"] and data.raw.generator["solar-panel-3"]) then return end

data:extend(
{
   {
    type = "item",
    name = "solar-panel-4",
    icon = "__base__/graphics/icons/solar-panel.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    --subgroup = "bob-energy-solar-panel",
    order = "d[solar-panel]-a[solar-panel-4-b]",
    place_result = "solar-panel-4",
    stack_size = 50
  },
   {
    type = "item",
    name = "solar-panel-5",
    icon = "__base__/graphics/icons/solar-panel.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    --subgroup = "bob-energy-solar-panel",
    order = "d[solar-panel]-a[solar-panel-5-b]",
    place_result = "solar-panel-5",
    stack_size = 50
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "steam-engine-4",
    icon = "__base__/graphics/icons/steam-engine.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    --subgroup = "bob-energy-steam-engine",
    order = "b[steam-power]-b[steam-engine]-4",
    place_result = "steam-engine-4",
    stack_size = 10,
  },
  {
    type = "item",
    name = "steam-engine-5",
    icon = "__base__/graphics/icons/steam-engine.png",
	icon_size = 32,
    flags = {"goes-to-quickbar"},
    --subgroup = "bob-energy-steam-engine",
    order = "b[steam-power]-b[steam-engine]-5",
    place_result = "steam-engine-5",
    stack_size = 10,
  },
}
)

data:extend(
{
  
  {
    type = "recipe",
    name = "solar-panel-4",
    energy_required = 20,
    enabled = "false",
    ingredients =
    {
      {"solar-panel-3", 1},
    },
    result = "solar-panel-4"
  },
    {
    type = "recipe",
    name = "solar-panel-5",
    energy_required = 30,
    enabled = "false",
    ingredients =
    {
      {"solar-panel-4", 1},
    },
    result = "solar-panel-5"
  },
}
)

data:extend(
{
  {
    type = "recipe",
    name = "steam-engine-4",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"steam-engine-3", 1},
    },
    result = "steam-engine-4",
  },
  {
    type = "recipe",
    name = "steam-engine-5",
    enabled = "false",
    energy_required = 2.5,
    ingredients =
    {
      {"steam-engine-4", 1},
    },
    result = "steam-engine-5",
  },
}
)


data:extend(
{
  {
    type = "solar-panel",
    name = "solar-panel-4",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-4"},
    max_health = 250,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__FastFurnaces__/graphics/entity/solar-panel/solar-panel-2.png",
      priority = "high",
      width = 104,
      height = 97
    },
    production = "200kW",
    fast_replaceable_group = "solar-panel",
  },
    {
    type = "solar-panel",
    name = "solar-panel-5",
    icon = "__base__/graphics/icons/solar-panel.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "solar-panel-5"},
    max_health = 400,
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__FastFurnaces__/graphics/entity/solar-panel/solar-panel-2.png",
      priority = "high",
      width = 104,
      height = 97
    },
    production = "300kW",
    fast_replaceable_group = "solar-panel",
  },
}
)

data:extend(
{
  {
    type = "generator",
    name = "steam-engine-4",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-4"},
    max_health = 750,
    maximum_temperature = 165,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 7.5,
    fluid_usage_per_tick = 0.075,
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    fluid_input =
    {
      name = "steam",
      amount = 0.0,
      minimum_temperature = 100.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output",
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5,
    fast_replaceable_group = "steam-engine",
  },
    {
    type = "generator",
    name = "steam-engine-5",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-5"},
    max_health = 750,
    maximum_temperature = 165,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 12.5,
    fluid_usage_per_tick = 0.1,
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    fluid_input =
    {
      name = "steam",
      amount = 0.0,
      minimum_temperature = 100.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output",
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5,
    fast_replaceable_group = "steam-engine",
  },
}
)

data:extend(
{
  {
    type = "technology",
    name = "solar-energy-5",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-4"
      },
    },
    prerequisites = {"bob-solar-energy-4", "advanced-electronics-2"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "a-h-c-d",
	icon_size = 128,
  },
    {
    type = "technology",
    name = "solar-energy-6",
    icon = "__base__/graphics/technology/solar-energy.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-5"
      },
    },
    prerequisites = {"solar-energy-5", "advanced-electronics-2"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "a-h-c-d",
	icon_size = 128,
  },
}
)

data:extend(
{
  {
    type = "technology",
    name = "steam-engine-generator-3",
    prerequisites =
    {
      "steam-engine-generator-2"
    },
    icon = "__base__/graphics/icons/steam-engine.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-engine-4"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "[steam]-1",
	icon_size = 128,
  },

  {
    type = "technology",
    name = "steam-engine-generator-4",
    prerequisites =
    {
      "steam-engine-generator-3",
    },
    icon = "__base__/graphics/icons/steam-engine.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-engine-5"
      },
    },
    unit =
    {
      count = 250,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "[steam]-2",
	icon_size = 128,
  },
}
)





