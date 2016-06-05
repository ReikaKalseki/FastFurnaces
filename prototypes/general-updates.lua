if not Config.freeUseModules then
	data.raw.item["productivity-module-4"].limitation = productivitymodulelimitation()
	data.raw.item["productivity-module-4"].limitation_message_key = "production-module-usable-only-on-intermediates"
	
	data.raw.item["productivity-module-5"].limitation = productivitymodulelimitation()
	data.raw.item["productivity-module-5"].limitation_message_key = "production-module-usable-only-on-intermediates"
end