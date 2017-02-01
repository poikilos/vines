vines = {
  name = 'vines',
}
dofile( minetest.get_modpath( vines.name ) .. "/doc.lua" )
dofile( minetest.get_modpath( vines.name ) .. "/functions.lua" )
dofile( minetest.get_modpath( vines.name ) .. "/aliases.lua" )
dofile( minetest.get_modpath( vines.name ) .. "/shear.lua" )
dofile( minetest.get_modpath( vines.name ) .. "/vines.lua" )

print("[Vines] Loaded!")
