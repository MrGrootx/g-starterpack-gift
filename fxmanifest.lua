fx_version "cerulean"
lua54 "yes"
game "gta5"

name "A script"
version "1.0.0"
description "desc"
author "Groot Development"

shared_scripts{
	"@ox_lib/init.lua",
	"locales/locale.lua",
	"locales/translations/*.lua",
	"src/shared/*.lua",
}


server_scripts{
	"bridge/**/server.lua",
	"src/server/*.lua",
}
client_scripts {
   'bridge/**/client.lua',
   'src/client/*.lua',
}
