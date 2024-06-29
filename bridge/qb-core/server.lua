if GetResourceState("qb-core") ~= "started" then
	return
end
if Config.settings.Debug then
	local filename = function()
		local str = debug.getinfo(2, "S").source:sub(2)
		return str:match("^./(.).lua$") or str
	end
	print("^4[SERVER - DEBUG] ^0: " .. filename() .. ".lua started")
end

QBCore = exports["qb-core"]:GetCoreObject()


function ShowNotification(target, text)
	if Config.settings.Notify == 'qb-core' then
		TriggerClientEvent("QBCore:Notify", target, text)
	elseif Config.settings.Notify == 'ox_lib' then
		TriggerClientEvent('ox_lib:notify', target, {
			description = text,
			type = 'inform'
		})
	else
		print("Unknown notification type: " .. Config.settings.Notify)
	end
end

function GetIdentifier(src)
	local xPlayer = QBCore.Functions.GetPlayer(src)
	if xPlayer then
		return xPlayer.PlayerData.citizenid
	end
	return nil
end

function RegisterUsableItem(item, cb)
	QBCore.Functions.CreateUseableItem(item, cb)
end

function AddItem(src, name, count)
	local _source = tonumber(src)
	local xPlayer = QBCore.Functions.GetPlayer(_source)
	if xPlayer then
		xPlayer.Functions.AddItem(name, count)
	end
end

function RemoveItem(src, name, count)
	local _source = tonumber(src)
	local xPlayer = QBCore.Functions.GetPlayer(_source)
	if xPlayer then
		xPlayer.Functions.RemoveItem(name, count)
	end
end

function GetPlayerName(source)
	local xPlayer = QBCore.Functions.GetPlayer(source)
	if xPlayer then
		return xPlayer.PlayerData.charinfo.firstname .. " " .. xPlayer.PlayerData.charinfo.lastname or "Unknown"
	end
	return nil
end
