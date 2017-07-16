if not Config.fastFurnace then return end

data:extend(
{
  {
    type = "item",
    name = "fast-furnace",
    icon = "__FastFurnaces__/graphics/icons/furnace.png",
    flags = {"goes-to-quickbar"},
    subgroup = "smelting-machine",
    order = "f[electric-furnace]-f[fast-furnace-1-2]",
    place_result = "fast-furnace",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "fast-furnace",
    enabled = "false",
	energy_required = 30,
    ingredients =
    {
      {"electric-furnace", 1},
    },
    result = "fast-furnace"
  },

  {
    type = "furnace",
    name = "fast-furnace",
    icon = "__FastFurnaces__/graphics/icons/furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "fast-furnace"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    light = {intensity = 1, size = 10},
    resistances =
    {
      {
        type = "fire",
        percent = 85
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 8,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"smelting"},
    result_inventory_size = 1,
    crafting_speed = 3.5,
    energy_usage = "300kW",
    source_inventory_size = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.0075
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__FastFurnaces__/graphics/entity/electric-furnace/electric-furnace-base.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0}
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__FastFurnaces__/graphics/entity/electric-furnace/electric-furnace-heater.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.75,
          shift = {0.015625, 0.890625}
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
      },
      {
        animation =
        {
          filename = "__FastFurnaces__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.35,
          shift = {-0.671875, -0.640625}
        }
      },
      {
        animation =
        {
          filename = "__FastFurnaces__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.35,
          shift = {0.0625, -1.234375}
        }
      }
    },
    fast_replaceable_group = "furnace"
  },
  
  
}
)


data:extend(
{
  {
    type = "technology",
    name = "fast-furnaces",
    icon = "__FastFurnaces__/graphics/technology/furnace.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fast-furnace"
      },
    },
    prerequisites =
    {
      "advanced-electronics-2",
      "logistics-2",
      "advanced-material-processing-2",
    },
    unit =
    {
      count = 100,
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
	icon_size = 128,
  },
}
)

