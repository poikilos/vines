vines = {
  name = 'vines',
}

-- internationalization boilerplate
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

dofile( minetest.get_modpath( vines.name ) .. "/doc.lua" )
dofile( minetest.get_modpath( vines.name ) .. "/functions.lua" )
dofile( minetest.get_modpath( vines.name ) .. "/aliases.lua" )
dofile( minetest.get_modpath( vines.name ) .. "/shear.lua" )
dofile( minetest.get_modpath( vines.name ) .. "/vines.lua" )

print(S("[Vines] Loaded!"))
