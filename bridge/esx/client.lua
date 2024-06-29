if GetResourceState("es_extended") ~= "started" then
	return
end
if Config.settings.Debug then
	local filename = function()
		 local str = debug.getinfo(2, "S").source:sub(2)
		 return str:match("^./(.).lua$") or str
	end
	print("^4[SERVER - DEBUG] ^0: "..filename()..".lua started");
end
if Config.settings.Debug then
	local filename = function()
		local str = debug.getinfo(2, "S").source:sub(2)
		return str:match("^./(.).lua$") or str
	end
	print("^4[SERVER - DEBUG] ^0: " .. filename() .. ".lua started");
end

ESX = exports.es_extended:getSharedObject()

function ShowNotification(text)
   if Config.settings.Notify == 'esx_core' then
      TriggerEvent('esx:showNotification', text)
   elseif Config.settings.Notify == 'ox_lib' then
      lib.notify({
         description = text,
         type = 'inform'
      })
   else
      print("Unknown notification type: " .. Config.settings.Notify)
   end
end
