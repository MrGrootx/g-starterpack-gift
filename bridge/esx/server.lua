if GetResourceState("es_extended") ~= "started" then
	return
end
if Config.settings.Debug then
	local filename = function()
		local str = debug.getinfo(2, "S").source:sub(2)
		return str:match("^./(.).lua$") or str
	end
	print("^4[SERVER - DEBUG] ^0: " .. filename() .. ".lua started");
end

ESX = exports.es_extended:getSharedObject()

function ShowNotification(target, text)
	if Config.settings.Notify == 'esx_core' then
		TriggerClientEvent('esx:showNotification', target, text)
	elseif Config.settings.Notify == 'ox_lib' then
		TriggerClientEvent('ox_lib:notify', target, {
			description = text,
			type = 'inform'
		})
	else
		DebugLog("Unknown notification type: " .. Config.settings.Notify)
	end
end

function GetIdentifier(src)
	local xPlayer = ESX.GetPlayerFromId(src)
	if xPlayer then
		return xPlayer.identifier
	end
	return nil
end



function GetPlayerName(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	if xPlayer then
		return xPlayer.getName() or xPlayer.variables.FirstName .. " " .. xPlayer.variables.LastName
	end
	return nil
end

function RegisterUsableItem(...)
	ESX.RegisterUsableItem(...)
end

function AddItem(source, name, count, metadata)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addInventoryItem(name, count)
end

function RemoveItem(source, name, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	print(count)
	xPlayer.removeInventoryItem(name, count)
end

function GetItemCount(source, name)
	local xPlayer = ESX.GetPlayerFromId(source)
	local item = xPlayer.getInventoryItem(name)
	return item and item.count or 0
end
