--[[ FX Information ]]--
fx_version   'cerulean'
use_fxv2_oal 'yes'
lua54        'yes'
game         'gta5'

--[[ Resource Information ]]--
name         'ox_template'
version      '0.0.0'
description  'Boilerplate'
license      'GPL-3.0-or-later'
author       'overextended'
repository   'https://github.com/overextended/ox_template'

--[[ Manifest ]]--
dependencies {
	'/server:5104',
	'/onesync',
}

shared_scripts {
    '@ox_core/imports.lua',
	'@ox_lib/init.lua',
    'shared/main.lua',
}

client_scripts {
    'client/main.lua',
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
    'server/main.lua',
}

