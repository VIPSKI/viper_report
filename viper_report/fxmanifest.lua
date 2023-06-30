fx_version 'cerulean'
game 'gta5'

author ''
description 'V1PER REPORT SYSTEM TIL NEWCORE FRAMEWORK'
version '1.0.0'
lua54 'yes'
-- Load config
shared_scripts {
    '@ox_lib/init.lua',
    'Config.lua'
}

client_script {
    'client/*.lua'
}

server_script {
    'server/*.lua'
}
