data:extend(
{
    {
    type = "capsule",
    name = "fluidpush-capsule",
    icon = "__FastFurnaces__/graphics/icons/fluidpush-capsule.png",
	icon_size = 32,
    flags = {},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 5,
        projectile_creation_distance = 0.6,
        range = 50,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "fluidpush-capsule",
              starting_speed = 0.3
            }
          }
        }
      }
    },
    subgroup = "capsule",
    order = "b[fluidpush-capsule]",
    stack_size = 100
   },
     {
    type = "recipe",
    name = "fluidpush-capsule",
    category = "crafting",
    enabled = "true",
    energy_required = 2,
    ingredients =
    {
		{"iron-plate", 4},
		{"pump", 1},
    },
    result = "fluidpush-capsule",
  },
   
   
    {
    type = "projectile",
    name = "fluidpush-capsule",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "create-entity",
          entity_name = "fluidpush-cloud",
		  trigger_created_entity = "true",
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__FastFurnaces__/graphics/icons/fluidpush-capsule.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    shadow =
    {
      filename = "__FastFurnaces__/graphics/fluidpush-capsule-shadow.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    smoke = capsule_smoke,
  },
  {
    type = "smoke-with-trigger",
    name = "fluidpush-cloud",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
      priority = "low",
      width = 256,
      height = 256,
      frame_count = 45,
      animation_speed = 0.5,
      line_length = 7,
      scale = 6,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60,
    fade_away_duration = 30,
    spread_duration = 10,
    color = { r = 0.2, g = 0.7, b = 1.0},
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "nested-result",
          action =
          {
            type = "area",
            perimeter = 30,
            entity_flags = {"breaths-air"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 0, type = "fire"}
              }
            }
          }
        }
      }
    },
    action_frequency = 10 --was 10
  },
})