require "config"

if Config.modules then
	if Config.freeUseModules then
		for name,beacon in pairs(data.raw.beacon) do
			table.insert(beacon.allowed_effects, "productivity")
		end
	else
		data.raw.module["productivity-module-4"].limitation = productivitymodulelimitation()
		data.raw.module["productivity-module-4"].limitation_message_key = "production-module-usable-only-on-intermediates"
		
		data.raw.module["productivity-module-5"].limitation = productivitymodulelimitation()
		data.raw.module["productivity-module-5"].limitation_message_key = "production-module-usable-only-on-intermediates"
	end
end