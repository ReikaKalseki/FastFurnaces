--[[

script.on_event(defines.events.on_trigger_created_entity, function(event)
	if event.entity.name == "fluidpush-cloud" then
		local tanks = event.entity.surface.find_entities_filtered{area = {{event.entity.position.x-30, event.entity.position.y-30}, {event.entity.position.x+30, event.entity.position.y+30}}}
		local fluids = {}
		for _,e in pairs(tanks) do
			if #e.fluidbox > 0 then
				for b = 1, #e.fluidbox do
					if e.fluidbox[b] then
						for k,v in pairs(e.fluidbox[b]) do game.print(k) end
						local amt = e.fluidbox[b].amount
						local fluid = e.fluidbox[b].name
						if fluids[fluid] then
							fluids[fluid] = fluids[fluid]+amt
						else
							fluids[fluid] = amt
						end
					end
				end
			end
		end
		for k,v in pairs(fluids) do game.print(k .. ": " .. v) end
	end
end)

--]]