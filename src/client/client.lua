if Config.settings.Debug then
	local filename = function()
		local str = debug.getinfo(2, "S").source:sub(2)
		return str:match("^./(.).lua$") or str
	end
	print("^4[SERVER - DEBUG] ^0: " .. filename() .. ".lua started")
end





RegisterNetEvent('justgroot:get:starter:progress', function()
	local progress = ProgressBar(Config.ProgressbarTime, Config.ProgressbarLabel)
	if progress == true then
		lib.callback.await('justgroot:get:starter:item:new', GetPlayerServerId(PlayerId()))
	else
		ShowNotification(LAN('progcanceled'))
	end
end)
