require "__DragonIndustries__.cloning"
require "__DragonIndustries__.registration"
require "__DragonIndustries__.strings"

function getFastName(name)
	return "reika-fast-" .. name
end

function getUpgradeRecipe(basename)
	return data.raw.recipe[getFastName(basename)]
end

function createFastVersion(category, name, suffix)
	local newname = getFastName(name)
	if suffix then
		newname = newname .. suffix
	end
	local entity = copyObject(category, name, newname)
	entity.max_health = entity.max_health*2
	if entity.circuit_wire_max_distance then
		entity.circuit_wire_max_distance = entity.circuit_wire_max_distance*1.5
	end
	local item = copyObject("item", name, newname)
	reparentSprites("base", "FastFurnaces", entity)
	reparentSprites("base", "FastFurnaces", item)
	if suffix then
		suffixSpritesDynamic(entity, suffix)
		suffixSpritesDynamic(item, suffix)
	end
	log("Creating upgrade variant '" .. item.name .. "' from '[" .. category .. "][" .. name .. "]'")
	return {name = item.name, entity=entity, item=item}
end

function createBlankUpgradeRecipe(basename, time)
	return createUpgradeRecipe(basename, time, {}, true)
end

function createUpgradeRecipe(basename, time, ingredients, hasTech)
	return createUpgradeRecipeWithName(basename, getFastName(basename), time, ingredients, hasTech)
end

function createUpgradeRecipeWithName(basename, newname, time, ingredients, hasTech)
	local recipe = {
		type = "recipe",
		name = newname,
		enabled = hasTech and "false" or "true",
		energy_required = time,
		ingredients =
		{
		  {basename, 1},
		},
		result = newname,
	}
	for _,ing in pairs(ingredients) do
		table.insert(recipe.ingredients, ing)
	end
	log("Creating upgrade recipe '" .. recipe.name .. "' from '" .. basename .. "'")
	return recipe
end