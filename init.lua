local S = minetest.get_translator("engravings")

engravings = {}

local pr_LoadSubFiles = function()

	local s_MOD_PATH = minetest.get_modpath('engravings')
    dofile(s_MOD_PATH .. '/files/engravings_a.lua')
    dofile(s_MOD_PATH .. '/files/engravings_d.lua')
    dofile(s_MOD_PATH .. '/files/engravings_e.lua')
	dofile(s_MOD_PATH .. '/files/engravings_p.lua')
    dofile(s_MOD_PATH .. '/files/engravings_hes.lua') 
    dofile(s_MOD_PATH .. '/files/arts_bench.lua')
	dofile(s_MOD_PATH .. '/files/engraving_bench.lua')
	dofile(s_MOD_PATH .. '/files/painting_bench.lua')

    if minetest.settings:get_bool("enable_writings") then
        dofile(s_MOD_PATH .. '/files/engravings_he.lua')
        dofile(s_MOD_PATH .. '/files/writing_bench.lua')
    end
    
end

pr_LoadSubFiles()

minetest.register_craftitem("engravings:palette", {
	inventory_image = "engravings_palette.png",
	description = S("Engraving Palette"),
})

minetest.register_craft({
    output = "engravings:palette 6",
    type = "shapeless",
    recipe = {
        "dye:red",
        "dye:blue",
        "dye:yellow"
    }
})