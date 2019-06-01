if not Config.fastBeacon then return end

--[[
local tier1 = table.deepcopy(data.raw.beacon.beacon)
local tier2 = table.deepcopy(data.raw.beacon.beacon)

tier1.name = "fast-beacon"
tier1.icon = "__FastFurnaces__/graphics/icons/basic-beacon.png"
tier1.icon_size = 32
tier1.minable.result = tier1.name
tier1.max_health = 500
tier1.
--]]

data:extend(
{
  {
    type = "item",
    name = "fast-beacon",
    icon = "__FastFurnaces__/graphics/icons/basic-beacon.png",
	icon_size = 32,
    flags = {},
    subgroup = "module",
    order = "f[basic-beacon]-f[fast-beacon-1-2]",
    place_result = "fast-beacon",
    stack_size = 50
  },
    {
    type = "item",
    name = "fast-beacon-2",
    icon = "__FastFurnaces__/graphics/icons/basic-beacon-2.png",
	icon_size = 32,
    flags = {},
    subgroup = "module",
    order = "f[fast-beacon]-f[fast-beacon-2-1-2]",
    place_result = "fast-beacon-2",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "fast-beacon",
    enabled = "false",
	energy_required = 60,
    ingredients =
    {
      {"beacon", 1},
    },
    result = "fast-beacon"
  },

  {
    type = "recipe",
    name = "fast-beacon-2",
    enabled = "false",
	energy_required = 60,
    ingredients =
    {
      {"fast-beacon", 1},
    },
    result = "fast-beacon-2"
  },

  {
    type = "beacon",
    name = "fast-beacon",
    icon = "__FastFurnaces__/graphics/icons/basic-beacon.png",
	icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "fast-beacon"},
    max_health = 500,
    fast_replaceable_group = "beacon",
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    allowed_effects = {"consumption", "speed", "pollution"},
    base_picture =
    {
      filename = "__FastFurnaces__/graphics/entity/basic-beacon/basic-beacon-base.png",
      width = 116,
      height = 93,
      shift = { 0.34, 0.06}
    },
    animation =
    {
      filename = "__FastFurnaces__/graphics/entity/basic-beacon/basic-beacon-antenna.png",
      width = 54,
      height = 50,
      line_length = 8,
      frame_count = 32,
      shift = { -0.03, -1.72},
      animation_speed = 0.5
    },
    animation_shadow =
    {
      filename = "__FastFurnaces__/graphics/entity/basic-beacon/basic-beacon-antenna-shadow.png",
      width = 63,
      height = 49,
      line_length = 8,
      frame_count = 32,
      shift = { 3.12, 0.5},
      animation_speed = 0.5
    },
    radius_visualisation_picture =
    {
      filename = "__FastFurnaces__/graphics/entity/basic-beacon/beacon-radius-visualization.png",
      width = 12,
      height = 12
    },
    supply_area_distance = 6,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_usage = "800kW",
    distribution_effectivity = 0.8,
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    }
  },
  
    {
    type = "beacon",
    name = "fast-beacon-2",
    icon = "__FastFurnaces__/graphics/icons/basic-beacon-2.png",
	icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "fast-beacon-2"},
    max_health = 1000,
    fast_replaceable_group = "beacon",
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    allowed_effects = {"consumption", "speed", "pollution"},
    base_picture =
    {
      filename = "__FastFurnaces__/graphics/entity/basic-beacon-2/basic-beacon-base.png",
      width = 116,
      height = 93,
      shift = { 0.34, 0.06}
    },
    animation =
    {
      filename = "__FastFurnaces__/graphics/entity/basic-beacon-2/basic-beacon-antenna.png",
      width = 54,
      height = 50,
      line_length = 8,
      frame_count = 32,
      shift = { -0.03, -1.72},
      animation_speed = 0.5
    },
    animation_shadow =
    {
      filename = "__FastFurnaces__/graphics/entity/basic-beacon-2/basic-beacon-antenna-shadow.png",
      width = 63,
      height = 49,
      line_length = 8,
      frame_count = 32,
      shift = { 3.12, 0.5},
      animation_speed = 0.5
    },
    radius_visualisation_picture =
    {
      filename = "__FastFurnaces__/graphics/entity/basic-beacon-2/beacon-radius-visualization.png",
      width = 12,
      height = 12
    },
    supply_area_distance = 9,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_usage = "4000kW",
    distribution_effectivity = 1,
    module_specification =
    {
      module_slots = 12,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    }
  },
  
  
}
)


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
        recipe = "fast-beacon"
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
        recipe = "fast-beacon-2"
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

