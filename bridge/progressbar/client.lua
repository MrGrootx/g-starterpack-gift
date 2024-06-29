if GetResourceState("ox_lib") ~= "started" then
   return
end

function ProgressBar(duration, label)
   if Config.settings.Debug then
      print("^4[SERVER - DEBUG] ^0: Progressbar started")
   end

   if Config.settings.ProgressBar == 'ox' then
      if lib.progressBar({
             duration = duration,
             label = label,
             useWhileDead = false,
             canCancel = true,
             disable = {
                car = false,
             },
             anim = {
                dict = 'anim@gangops@facility@servers@',
                clip = 'hotwire'
             },
          }) then
         return true
      else
         return false
      end
   elseif Config.settings.ProgressBar == 'qb' then
      QBCore = exports["qb-core"]:GetCoreObject()

      QBCore.Functions.Progressbar("progress_starter_pack_1", label, 5000, false, true, {
         disableMovement = false,
         disableCarMovement = false,
         disableMouse = false,
         disableCombat = true,
      }, {
         animDict = "mp_suicide",
         anim = "pill",
         flags = 49,
      }, {}, {}, function()
         return true
      end, function()
         -- Cancel
         return false
      end)
   end
end
