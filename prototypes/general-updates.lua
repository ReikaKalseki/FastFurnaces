require "config"

if Config.modules and not Config.freeUseModules then
	data.raw.module["productivity-module-4"].limitation = productivitymodulelimitation()
	data.raw.module["productivity-module-4"].limitation_message_key = "production-module-usable-only-on-intermediates"
	
	data.raw.module["productivity-module-5"].limitation = productivitymodulelimitation()
	data.raw.module["productivity-module-5"].limitation_message_key = "production-module-usable-only-on-intermediates"
end