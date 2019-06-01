if not Config.fastLongInserter then return end

data:extend(
{
  {
    type = "item",
    name = "fast-long-handed-inserter",
    icon = "__FastFurnaces__/graphics/icons/fast-long-inserter.png",
	icon_size = 32,
    flags = {},
    subgroup = "inserter",
    order = "c[long-handed-inserter]",
    place_result = "fast-long-handed-inserter",
    stack_size = 50
  },
})

data:extend(
{
  {
    type = "recipe",
    name = "fast-long-handed-inserter",
    enabled = false,
    ingredients =
    {
      {"electronic-circuit", 5},
      {"iron-gear-wheel", 4},
      {"long-handed-inserter", 1}
    },
    result = "fast-long-handed-inserter",
    requester_paste_multiplier = 4
  },
})

data:extend(
{
  {
    type = "inserter",
    name = "fast-long-handed-inserter",
    icon = "__FastFurnaces__/graphics/icons/fast-long-inserter.png",
	icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "fast-long-handed-inserter"},
    max_health = 180,
    corpse = "small-remnants",
    allow_custom_vectors = false,
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = {0, -2},
    insert_position = {0, 2.2},
    energy_per_movement = "10KJ",
    energy_per_rotation = "10KJ",
    rotation_speed = 0.05,
    extension_speed = 0.1,
    hand_size = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.6kW"
    },
    fast_replaceable_group = "long-handed-inserter",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      match_progress_to_activity = true,
      sound =
      {
        {
          filename = "__base__/sound/inserter-long-handed-1.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-long-handed-2.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-long-handed-3.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-long-handed-4.ogg",
          volume = 0.75
        },
        {
          filename = "__base__/sound/inserter-long-handed-5.ogg",
          volume = 0.75
        }
      }
    },
    hand_base_picture =
    {
      filename = "__FastFurnaces__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34,
      hr_version = {
        filename = "__FastFurnaces__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-hand-base.png",
        priority = "extra-high",
        width = 32,
        height = 136,
        scale = 0.25
      }
    },
    hand_closed_picture =
    {
      filename = "__FastFurnaces__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version = {
        filename = "__FastFurnaces__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-hand-closed.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_picture =
    {
      filename = "__FastFurnaces__/graphics/entity/long-handed-inserter/long-handed-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version = {
        filename = "__FastFurnaces__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-hand-open.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    hand_base_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 33,
      hr_version = {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-base-shadow.png",
        priority = "extra-high",
        width = 32,
        height = 132,
        scale = 0.25
      }
    },
    hand_closed_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version = {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-closed-shadow.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    hand_open_shadow =
    {
      filename = "__base__/graphics/entity/burner-inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41,
      hr_version = {
        filename = "__base__/graphics/entity/burner-inserter/hr-burner-inserter-hand-open-shadow.png",
        priority = "extra-high",
        width = 72,
        height = 164,
        scale = 0.25
      }
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__FastFurnaces__/graphics/entity/long-handed-inserter/long-handed-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.09375, 0},
        hr_version = {
          filename = "__FastFurnaces__/graphics/entity/long-handed-inserter/hr-long-handed-inserter-platform.png",
          priority = "extra-high",
          width = 105,
          height = 79,
          shift = util.by_pixel(1.5, 7.5-1),
          scale = 0.5
        }
      }
    },
    circuit_wire_connection_point = inserter_circuit_wire_connection_point,
    circuit_connector_sprites = inserter_circuit_connector_sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance,
    default_stack_control_input_signal = inserter_default_stack_control_input_signal
  },
})

data:extend(
{
	{
	type = "technology",
	name = "fast-long-inserters",
	icon = "__FastFurnaces__/graphics/fast-long-inserters.png",
	prerequisites =
	{
	  "logistics-3",
	  "advanced-electronics-2"
	},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fast-long-handed-inserter"
      }
    },
	unit =
	{
	  count = 100,
	  ingredients =
	  {
		{"automation-science-pack", 1},
		{"logistic-science-pack", 1},
		{"chemical-science-pack", 1},
		{"production-science-pack", 1},
	  },
	  time = 30
	},
	order = "a-f",
	icon_size = 32,
  },
})