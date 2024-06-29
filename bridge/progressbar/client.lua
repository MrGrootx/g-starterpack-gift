if GetResourceState("ox_lib") ~= "started" then
   return
end

function ProgressBar(duration, label)
   if Config.settings.Debug then
      print("^4[SERVER - DEBUG] ^0: Progressbar started")
   end
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
end
