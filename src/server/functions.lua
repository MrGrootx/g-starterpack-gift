function DiscordLog(identifier, Name)
   local embed = {
      {
         ["color"] = Config.EmbedColor or 16711680,
         ["title"] = Config.WebhookTitle or "Starter Pack Claim Logs",
         ["fields"] = {
            { ["name"] = "Identifier",  ["value"] = identifier, ["inline"] = true },
            { ["name"] = "Player Name", ["value"] = Name,       ["inline"] = true },
         },
         ["footer"] = {
            ["text"] = "Groot Development",
         },
         ["timestamp"] = os.date('!%Y-%m-%dT%H:%M:%SZ'),


      }

   }

   local data = json.encode({ username = "Starter Pack Claim Logs", embeds = embed })

   PerformHttpRequest(Config.Webhook, function(err, text, headers)
   end, 'POST', data, { ['Content-Type'] = 'application/json' })
end
