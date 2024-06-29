if GetResourceState("qb-core") ~= "started" then
	return
end

if Config.settings.Debug then
	local filename = function()
		 local str = debug.getinfo(2, "S").source:sub(2)
		 return str:match("^./(.).lua$") or str
	end
	print("^4[SERVER - DEBUG] ^0: "..filename()..".lua started");
end


QBCore = exports["qb-core"]:GetCoreObject()



function ShowNotification(text)
   if Config.settings.Notify == 'qb-core' then
      QBCore.Functions.Notify(text)
   elseif Config.settings.Notify == 'ox_lib' then
      lib.notify({
         description = text,
         type = 'inform'
      })
   else
      DebugLog("Unknown notification type: " .. Config.settings.Notify)
   end
end