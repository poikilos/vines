-- internationalization boilerplate
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

local USES = 200

local shear_def = {
	description = S("Shears"),
	_doc_items_longdesc = vines.doc.shears_longdesc,
	_doc_items_usagehelp = vines.doc.shears_usage,
	inventory_image = "vines_shears.png",
	wield_image = "vines_shears.png",
	stack_max = 1,
	max_drop_level=3,
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			snappy={times={[3]=0.2}, uses=60, maxlevel=3},
			wool={times={[3]=0.2}, uses=60, maxlevel=3}
		}
	},
	after_use = function(itemstack, user, node, digparams)
		minetest.sound_play("vines_shears", {pos=user:getpos()})
		if not minetest.setting_getbool("creative_mode") then
			itemstack:add_wear(65535/(USES-1))
		end
		return itemstack
	end,
}
if minetest.get_modpath("creatures") or minetest.get_modpath("mobs") then
	shear_def.groups = {}
	shear_def.groups.not_in_creative_inventory = 1
end -- there's a set of shears in the Creatures mod, don't bother with our own set.

minetest.register_tool("vines:shears", shear_def)

if minetest.get_modpath("creatures") or minetest.get_modpath("mobs") then return end

minetest.register_craft({
	output = 'vines:shears',
	recipe = {
		{'', 'default:steel_ingot', ''},
		{'default:stick', 'default:wood', 'default:steel_ingot'},
		{'', 'default:stick', ''}
	}
})