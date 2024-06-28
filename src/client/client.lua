if Config.settings.Debug then
	local filename = function()
		local str = debug.getinfo(2, "S").source:sub(2)
		return str:match("^./(.).lua$") or str
	end
	print("^4[SERVER - DEBUG] ^0: " .. filename() .. ".lua started")
end


lib.callback.register('justgroot:get:starter:item', function()
	local progress = ProgressBar(Config.ProgressbarTime, Config.ProgressbarLabel)

	if progress ~= false then
		lib.callback.await('justgroot:get:starter:item', GetPlayerServerId(PlayerId()))
	else
		ShowNotification(LAN('progcanceled'))
	end
end)



