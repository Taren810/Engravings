-- Writing Bench
--
-- This file register the Writing Bench node, with it you can craft the Writings nodes.
--
-- It doesn't automatically add images that you added in "engravings_he.lua".
--

local S = minetest.get_translator('engravings')

--
-- Bench
--

minetest.register_node("engravings:arts_bench", {
	description = "Art Bench",
	tiles = {"default_sandstone_block.png", "default_sandstone_block.png", "engravings_engravingzone.png",
	"engravings_engravingzone.png", "engravings_engravingzone.png", "engravings_engravingzone.png"},
	paramtype2 = "facedir",
	paramtype = "light",
	groups = {cracky=2},

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
       	meta:set_string("infotext", "Art Bench")
       	meta:set_string("formspec", "size[8,9]"..
		"list[context;input;0,0;1,1;]"..
		"list[context;output;4,0;4,4;]"..
		"image_button[0,1;2,2;engravings_a_visir.png;visir; ]"..
--      "image_button[2,1;2,2; ; ; ]"..
--      "image_button[0,3;2,2; ; ; ]"..
--      "image_button[2,3;2,2; ; ; ]"..
		"list[current_player;main;0,5;8,4;]")
		local inv = meta:get_inventory()
		inv:set_size("input", 1)
		inv:set_size("output", 16)
	end,

	on_receive_fields = function(pos, formname, fields, sender)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		local instack = inv:get_stack("input", 1)
		local input = instack:get_name()
        local input_quantity = instack:get_count()
		local instack = inv:get_stack("output", 16)
		local output = instack:get_name()
    
		if fields ["visir"] then
			if input == "default:sandstone_block" then
                if input_quantity > 15 then
			    	inv:remove_item("input", "default:sandstone_block 16")
                    for i=1, 16 do
				        inv:add_item("output", "engravings:art_stone1_"..i)
                    end
                end
			end
		end

    end,
})

--
-- Recipe
--

minetest.register_craft({
    output = "engravings:engraving_bench",
    type = "shapeless",
    recipe = {
        "default:sandstone_block",
        "default:stick",
        "default:stick",
        "default:cobble"
    }
	})