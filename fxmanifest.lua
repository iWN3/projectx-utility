fx_version "cerulean"

game "gta5"

author 'Project X Development'

description 'Project X Utility by Project X'

version '0.1'

shared_scripts {
    '@ox_lib/init.lua',
    "config.lua",
}

server_scripts {
    "server.lua",
}

lua54 "yes"

escrow_ignore {
    "config.lua",
    "client.lua",
    "server.lua",
}
