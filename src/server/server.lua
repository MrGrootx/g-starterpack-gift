if Config.settings.Debug then
	local filename = function()
		local str = debug.getinfo(2, "S").source:sub(2)
		return str:match("^./(.).lua$") or str
	end
	print("^4[SERVER - DEBUG] ^0: " .. filename() .. ".lua started")
end




RegisterUsableItem(Config.starteritem, function(source)
	TriggerClientEvent('justgroot:get:starter:progress', source)
end)


lib.callback.register('justgroot:get:starter:item:new', function(source)
	for _, item in ipairs(Config.items) do
		AddItem(source, item.item, item.count)
	end

	local identifier = GetIdentifier(source)
	local name = GetPlayerName(source)

	RemoveItem(source, Config.starteritem, 1)
	ShowNotification(source, LAN('itemadded'))

	if Config.settings.DiscordLog then
		DiscordLog(identifier, name)
	end
end)
