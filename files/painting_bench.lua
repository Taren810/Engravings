-- Painting Bench
--
-- This file register the Painting Bench node, with it you can craft the painted Engravings nodes.
--
-- It doesn't automatically add images that you added in "engravings_p.lua" but it's easy to implement (I explain it further in the file).
--

local S = minetest.get_translator('engravings')

--
-- Bench
--

minetest.register_node("engravings:painting_bench", {
	description = "Painting Bench",
	tiles = {"default_sandstone_block.png", "default_sandstone_block.png", "engravings_paintingzone.png",
	"engravings_paintingzone.png", "engravings_paintingzone.png", "engravings_paintingzone.png"},
	paramtype2 = "facedir",
	paramtype = "light",
	groups = {cracky=2},

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
       	meta:set_string("infotext", "Painting Bench")
       	meta:set_string("formspec", "size[8,6]"..
		"list[context;input;0,0;1,1;]"..
		"list[context;dye;1,0;1,1;]"..
		"list[context;output;3,0;1,1;]"..
		"button[0,1;2,1;paint;Paint]"..
		"list[current_player;main;0,2;8,4;]")
		local inv = meta:get_inventory()
		inv:set_size("input", 1)
		inv:set_size("dye", 1)
		inv:set_size("output", 1)
	end,

	on_receive_fields = function(pos, formname, fields, sender)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		local instack = inv:get_stack("input", 1)
		local input = instack:get_name()
		local instack = inv:get_stack("dye", 1)
		local dye = instack:get_name()
		local instack = inv:get_stack("output", 1)
		local output = instack:get_name()

--
-- Painting Commands
--
        if fields ["paint"] then
		if dye == "engravings:palette" then
	        if input == "engravings:deco_stone1" then
				inv:remove_item("input", "engravings:deco_stone1")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone1")
			elseif input == "engravings:deco_stone2" then
				inv:remove_item("input", "engravings:deco_stone2")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone2")
			elseif input == "engravings:deco_stone3" then
				inv:remove_item("input", "engravings:deco_stone3")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone3")
			elseif input == "engravings:deco_stone4" then
				inv:remove_item("input", "engravings:deco_stone4")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone4")
			elseif input == "engravings:deco_stone5" then
				inv:remove_item("input", "engravings:deco_stone5")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone5")
			elseif input == "engravings:deco_stone6" then
				inv:remove_item("input", "engravings:deco_stone6")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone6")
			elseif input == "engravings:deco_stone7" then
				inv:remove_item("input", "engravings:deco_stone7")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone7")
			elseif input == "engravings:deco_stone8" then
				inv:remove_item("input", "engravings:deco_stone8")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone8")
			elseif input == "engravings:deco_stone9" then
				inv:remove_item("input", "engravings:deco_stone9")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone9")
			elseif input == "engravings:deco_stone10" then
				inv:remove_item("input", "engravings:deco_stone10")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone10")
			elseif input == "engravings:deco_stone11" then
				inv:remove_item("input", "engravings:deco_stone11")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone11")
			elseif input == "engravings:deco_stone12" then
				inv:remove_item("input", "engravings:deco_stone12")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone12")
			elseif input == "engravings:deco_stone13" then
				inv:remove_item("input", "engravings:deco_stone13")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone13")
			elseif input == "engravings:deco_stone14" then
				inv:remove_item("input", "engravings:deco_stone14")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone14")
			elseif input == "engravings:deco_stone15" then
				inv:remove_item("input", "engravings:deco_stone15")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone15")
			elseif input == "engravings:deco_stone16" then
				inv:remove_item("input", "engravings:deco_stone16")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone16")
			elseif input == "engravings:deco_stone17" then
				inv:remove_item("input", "engravings:deco_stone17")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone17")
			elseif input == "engravings:deco_stone18" then
				inv:remove_item("input", "engravings:deco_stone18")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone18")
			elseif input == "engravings:deco_stone19" then
				inv:remove_item("input", "engravings:deco_stone19")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone19")
			elseif input == "engravings:deco_stone20" then
				inv:remove_item("input", "engravings:deco_stone20")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone20")
			elseif input == "engravings:deco_stone21" then
				inv:remove_item("input", "engravings:deco_stone21")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone21")
			elseif input == "engravings:deco_stone22" then
				inv:remove_item("input", "engravings:deco_stone22")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone22")
			elseif input == "engravings:deco_stone23" then
				inv:remove_item("input", "engravings:deco_stone23")
				inv:remove_item("dye", "engravings:palette")
                inv:add_item("output", "engravings:decop_stone23")
			elseif input == "engravings:deco_stone24" then
				inv:remove_item("input", "engravings:deco_stone24")
				inv:remove_item("dye", "engravings:palette")
				inv:add_item("output", "engravings:decop_stone24")
			elseif input == "engravings:deco_stone25" then
				inv:remove_item("input", "engravings:deco_stone25")
				inv:remove_item("dye", "engravings:palette")
				inv:add_item("output", "engravings:decop_stone25")
			elseif input == "engravings:deco_stone26" then
				inv:remove_item("input", "engravings:deco_stone26")
				inv:remove_item("dye", "engravings:palette")
				inv:add_item("output", "engravings:decop_stone26")
			elseif input == "engravings:deco_stone27" then
				inv:remove_item("input", "engravings:deco_stone27")
				inv:remove_item("dye", "engravings:palette")
				inv:add_item("output", "engravings:decop_stone27")
			elseif input == "engravings:deco_stone28" then
				inv:remove_item("input", "engravings:deco_stone28")
				inv:remove_item("dye", "engravings:palette")
				inv:add_item("output", "engravings:decop_stone28")
			elseif input == "engravings:deco_stone29" then
				inv:remove_item("input", "engravings:deco_stone29")
				inv:remove_item("dye", "engravings:palette")
				inv:add_item("output", "engravings:decop_stone29")
			elseif input == "engravings:deco_stone30" then
				inv:remove_item("input", "engravings:deco_stone30")
				inv:remove_item("dye", "engravings:palette")
				inv:add_item("output", "engravings:decop_stone30")
				-- If you added new images both in the "engravings_e.lua" and in the "engravings_p.lua" you can add 
				-- another of this "elseif then", scaling the number by 1 for each new image.
			end
		end
		end
	end,
})

--
-- Recipe
--

minetest.register_craft({
    output = "engravings:painting_bench",
    type = "shapeless",
    recipe = {
        "default:sandstone_block",
        "default:stick",
        "group:wool"
    }
	})