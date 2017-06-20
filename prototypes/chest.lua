data:extend(
{
--[[
  {
    type = "item",
    name = "big-smart-chest",
    icon = "__FastFurnaces__/graphics/icons/smart-chest.png",
    flags = {"goes-to-quickbar"},
    subgroup = "storage",
    order = "a[items]-d[big-smart-chest]",
    place_result = "big-smart-chest",
    stack_size = 50
  },--]]
    {
    type = "item",
    name = "big-storage-chest",
    icon = "__FastFurnaces__/graphics/icons/big-storage-chest.png",
    flags = {"goes-to-quickbar"},
    subgroup = "logistic-network",
    order = "a[storage]-d[big-storage-chest]",
    place_result = "big-storage-chest",
    stack_size = 50
  },
    {
    type = "item",
    name = "big-passive-provider-chest",
    icon = "__FastFurnaces__/graphics/icons/big-passive-provider-chest.png",
    flags = {"goes-to-quickbar"},
    subgroup = "logistic-network",
    order = "a[storage]-d[big-passive-provider-chest]",
    place_result = "big-passive-provider-chest",
    stack_size = 50
  },
--[[
  {
    type = "recipe",
    name = "big-smart-chest",
    enabled = "false",
	energy_required = 0.5,
    ingredients =
    {
      {"smart-chest", 1},
      {"steel-plate", 4},
      {"processing-unit", 2},
      {"iron-gear-wheel", 5},
    },
    result = "big-smart-chest"
  },--]]
    {
    type = "recipe",
    name = "big-storage-chest",
    enabled = "false",
	energy_required = 0.5,
    ingredients =
    {
      {"logistic-chest-storage", 1},
      {"steel-plate", 4},
      {"processing-unit", 2},
      {"iron-gear-wheel", 5},
    },
    result = "big-storage-chest"
  },
    {
    type = "recipe",
    name = "big-passive-provider-chest",
    enabled = "false",
	energy_required = 0.5,
    ingredients =
    {
      {"logistic-chest-passive-provider", 1},
      {"steel-plate", 4},
      {"processing-unit", 2},
      {"iron-gear-wheel", 5},
    },
    result = "big-passive-provider-chest"
  },
--[[
  {
    type = "smart-container",
    name = "big-smart-chest",
    icon = "__FastFurnaces__/graphics/icons/smart-chest.png",
    flags = {"placeable-neutral", "player-creation"},
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    minable =
    {
      hardness = 0.2,
      mining_time = 0.5,
      result = "big-smart-chest"
    },
    max_health = 250,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 144,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__FastFurnaces__/graphics/entity/smart-chest/smart-chest.png",
      priority = "extra-high",
      width = 62,
      height = 41,
      shift = {0.4, -0.13}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.7, -0.3},
        green = {0.7, -0.3}
      },
      wire =
      {
        red = {0.3, -0.8},
        green = {0.3, -0.8}
      }
    },
    circuit_wire_max_distance = 12.5
  },--]]
    {
    type = "logistic-container",
    name = "big-passive-provider-chest",
    icon = "__FastFurnaces__/graphics/icons/big-passive-provider-chest.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "big-passive-provider-chest"},
    max_health = 250,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 144,
    logistic_mode = "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__FastFurnaces__/graphics/entity/logistic-chest/big-passive-provider-chest.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    },
    circuit_wire_max_distance = 12.5
  },
    {
    type = "logistic-container",
    name = "big-storage-chest",
    icon = "__FastFurnaces__/graphics/icons/big-storage-chest.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "big-storage-chest"},
    max_health = 250,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 144,
    logistic_mode = "storage",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__FastFurnaces__/graphics/entity/logistic-chest/big-storage-chest.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    },
    circuit_wire_max_distance = 12.5
  },
  
  
}
)


data:extend(
{
  {
    type = "technology",
    name = "large-storage",
    icon = "__FastFurnaces__/graphics/technology/storage.png",
    effects =
    {--[[
      {
        type = "unlock-recipe",
        recipe = "big-smart-chest"
      },--]]
      {
        type = "unlock-recipe",
        recipe = "big-storage-chest"
      },
      {
        type = "unlock-recipe",
        recipe = "big-passive-provider-chest"
      },
    },
    prerequisites =
    {
      "advanced-electronics-2",
      "logistics-3",
      "automation-3",
	  "logistic-system",
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"high-tech-science-pack", 1},
      },
      time = 40
    },
    upgrade = true,
    order = "a-f",
	icon_size = 128,
  },
}
)

