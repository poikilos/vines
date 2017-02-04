vines.doc = {}

if not minetest.get_modpath("doc") then
	return
end

-- internationalization boilerplate
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

vines.doc.vines_longdesc = S("Sinuous plants that grows on other plants for support.")
vines.doc.roots_longdesc = S("Plant structures that provide structural support and draw nutrients from the soil.")
vines.doc.vines_usage = S("These grow over time. When harvested with shears they provide useful crafting materials.")

vines.doc.shears_longdesc = S("A tool for harvesting vines.")
vines.doc.shears_usage = S("Using shears to dig vines will give vine materials useful for crafting. Other tools lack the necessary finesse.")
