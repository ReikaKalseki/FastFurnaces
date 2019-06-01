if not Config.modules then return end

--items
data:extend(
{
  {
    type = "module",
    name = "speed-module-4",
    icon = "__FastFurnaces__/graphics/icons/speed-module-4.png",
	icon_size = 32,
    flags = {},
    subgroup = "module",
    order = "a[speed]-c[speed-module-4]",
    category = "speed",
    tier = 4,
    stack_size = 50,
    default_request_amount = 10,
    effect = { speed = {bonus = 0.8}, consumption = {bonus = 1.5}}
  },
  {
    type = "module",
    name = "effectivity-module-4",
    icon = "__FastFurnaces__/graphics/icons/effectivity-module-4.png",
	icon_size = 32,
    flags = {},
    subgroup = "module",
    category = "effectivity",
    order = "c[effectivity]-c[effectivity-module-4]",
    tier = 4,
    stack_size = 50,
    default_request_amount = 10,
    effect = { consumption = {bonus = -0.6}}
  },
    {
    type = "module",
    name = "productivity-module-4",
    icon = "__FastFurnaces__/graphics/icons/productivity-module-4.png",
	icon_size = 32,
    flags = {},
    subgroup = "module",
    category = "productivity",
    order = "c[productivity]-c[productivity-module-4]",
    tier = 4,
    stack_size = 50,
    default_request_amount = 10,
    effect = { productivity = {bonus = 0.25}, consumption = {bonus = 1.2}, pollution = {bonus = 0.8}, speed = {bonus = -0.05}},
    --limitation = productivitymodulelimitation(),
    --limitation_message_key = "production-module-usable-only-on-intermediates"
  },
  
  {
    type = "module",
    name = "speed-module-5",
    icon = "__FastFurnaces__/graphics/icons/speed-module-5.png",
	icon_size = 32,
    flags = {},
    subgroup = "module",
    category = "speed",
    order = "a[speed]-c[speed-module-5]",
    tier = 5,
    stack_size = 50,
    default_request_amount = 10,
    effect = { speed = {bonus = 1.25}, consumption = {bonus = 2}}
  },
  {
    type = "module",
    name = "effectivity-module-5",
    icon = "__FastFurnaces__/graphics/icons/effectivity-module-5.png",
	icon_size = 32,
    flags = {},
    subgroup = "module",
    category = "effectivity",
    order = "c[effectivity]-c[effectivity-module-5]",
    tier = 5,
    stack_size = 50,
    default_request_amount = 10,
    effect = { consumption = {bonus = -0.8}}
  },
    {
    type = "module",
    name = "productivity-module-5",
    icon = "__FastFurnaces__/graphics/icons/productivity-module-5.png",
	icon_size = 32,
    flags = {},
    subgroup = "module",
    category = "productivity",
    order = "c[productivity]-c[productivity-module-5]",
    tier = 5,
    stack_size = 50,
    default_request_amount = 10,
    effect = { productivity = {bonus = 0.5}, consumption = {bonus = 1.5}, pollution = {bonus = 1}, speed = {bonus = 0}},
    --limitation = productivitymodulelimitation(),
    --limitation_message_key = "production-module-usable-only-on-intermediates"
  }
})


--research
data:extend(
{
  {
    type = "technology",
    name = "speed-module-4",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-4"
      }
    },
    prerequisites = {"speed-module-3"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 90
    },
    upgrade = true,
    icon_size = 128,
    order = "i-c-c"
  },
  {
    type = "technology",
    name = "productivity-module-4",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-4"
      }
    },
    prerequisites = {"productivity-module-3"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 90
    },
    upgrade = true,
    icon_size = 128,
    order = "i-e-c"
  },
  {
    type = "technology",
    name = "effectivity-module-4",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-4"
      }
    },
    prerequisites = {"effectivity-module-3"},
    unit =
    {
      count = 400,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 90
    },
    upgrade = true,
    icon_size = 128,
    order = "i-g-c"
  },
  
    {
    type = "technology",
    name = "speed-module-5",
    icon = "__base__/graphics/technology/speed-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "speed-module-5"
      }
    },
    prerequisites = {"speed-module-4"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 120
    },
    upgrade = true,
    icon_size = 128,
    order = "i-c-c"
  },
  {
    type = "technology",
    name = "productivity-module-5",
    icon = "__base__/graphics/technology/productivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "productivity-module-5"
      }
    },
    prerequisites = {"productivity-module-4"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 120
    },
    upgrade = true,
    icon_size = 128,
    order = "i-e-c"
  },
  {
    type = "technology",
    name = "effectivity-module-5",
    icon = "__base__/graphics/technology/effectivity-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "effectivity-module-5"
      }
    },
    prerequisites = {"effectivity-module-4"},
    unit =
    {
      count = 600,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1}
      },
      time = 120
    },
    upgrade = true,
    icon_size = 128,
    order = "i-g-c"
  }
}
)
