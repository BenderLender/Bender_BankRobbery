-- Resource Metadata
fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Bender Rodriguez'
description 'Simple bank hacking script standalone'
version '1.0.0'

client_scripts {
    'Client/client.lua',
    'config.lua'
}

server_script {
    'Server/server.lua',
    'config.lua'
}