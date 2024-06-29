Config = {}
-- Settings
Config.settings = {
	Language = "en",  -- en - english | ta - tamil | malu - malayalam | fr - french | ko - korean | hi - hindi | nl - dutch
	Debug = true,     -- true | false
	Notify = "ox_lib", -- "esx_core" | "ox_lib" | "qb-core",
	DiscordLog = true, -- true | false
}

-- Item used to open starter pack
Config.starteritem = 'starter_pack'


-- Items added to starter pack
Config.items = {
	[1] = {
		item = 'water_bottle',
		count = 10,
	},
	[2] = {
		item = 'coffee',
		count = 10
	}
}

Config.Webhook =
"https://discord.com/api/webhooks/1256300814918615101/1E6PRo24A_0vlJfBrGVm-Z7Pddv12hUaGUEhiNATsvbc7lYIy6HFfHTyvB6QQCFVO8cf"
Config.WebhookTitle = "Starter Pack Claim Logs"
Config.EmbedColor = 16711680

-- Progressbar settings
Config.ProgressbarTime = 5000
Config.ProgressbarLabel = 'Opening Starter Pack'
