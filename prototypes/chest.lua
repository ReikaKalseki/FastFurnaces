require("__DragonIndustries__.cloning")

if not Config.bigChest then return end

local unlocks = {}

local function createChest(name)
	local base = data.raw["logistic-container"][name]
	if not base then error(serpent.block("Cannot create big version of nonexistent logistic chest '" .. name .. "'!")) end
	local chest = table.deepcopy(base)
	chest.name = "big-" .. string.sub(name, string.len("logistic-chest-")+1) .. "-chest"
	--log("Creating big version of " .. name .. " with name " .. chest.name)
	chest.icon = "__FastFurnaces__/graphics/icons/" .. chest.name .. ".png"
	chest.minable.result = chest.name
	chest.max_health = chest.max_health*1.2
	chest.inventory_size = 144
	if chest.num_logistic_slots then
		chest.num_logistic_slots = chest.num_logistic_slots*2
	end
	
	--replaceSprites(chest, "__FastFurnaces__/graphics/entity/logistic-chest/" .. chest.name .. ".png", "__FastFurnaces__/graphics/entity/logistic-chest/" .. chest.name .. "-hr.png")
	--replaceSpritesByName(chest)
	
	data:extend({chest})
	
	data:extend({
		{
			type = "item",
			name = chest.name,
			icon = chest.icon,
			icon_size = chest.icon_size,
			flags = {},
			subgroup = "logistic-network",
			order = "a[storage]-d[" .. chest.name .. "]",
			place_result = chest.name,
			stack_size = 25
		},
		{
			type = "recipe",
			name = chest.name,
			enabled = "false",
			energy_required = 2.5,
			ingredients =
			{
			  {base.name, 1},
			  {"steel-plate", 4},
			  {"processing-unit", 2},
			  {"iron-gear-wheel", 5},
			},
			result = chest.name
		}
	})
	
	table.insert(unlocks, {type="unlock-recipe", recipe=chest.name})
end

createChest("logistic-chest-passive-provider")
createChest("logistic-chest-active-provider")
createChest("logistic-chest-storage")
createChest("logistic-chest-requester")

data:extend(
{
  {
    type = "technology",
    name = "large-storage",
    icon = "__FastFurnaces__/graphics/technology/storage.png",
    effects = unlocks,
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
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"utility-science-pack", 1},
      },
      time = 40
    },
    upgrade = true,
    order = "a-f",
	icon_size = 128,
  },
}
)
