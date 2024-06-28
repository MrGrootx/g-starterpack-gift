Config = {}
-- Settings
Config.settings = {
	Language = "en", -- en - english | ta - tamil | malu - malayalam | fr - french | ko - korean | hi - hindi | nl - dutch
	Debug = true,    -- true | false
	Notify = "ox_lib", -- "esx_core" | "ox_lib",
	DiscordLog = true, -- true | false
}

-- Item used to open starter pack
Config.starteritem = 'starter_pack'


-- Items added to starter pack
Config.items = {
	[1] = {
		item = 'water',
		count = 10,
	},
	[2] = {
		item = 'burger',
		count = 10
	}
}

-- Progressbar settings
Config.ProgressbarTime = 5000
Config.ProgressbarLabel = 'Opening Starter Pack'
