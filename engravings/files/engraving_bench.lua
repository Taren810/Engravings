-- Engraving Bench
--
-- This file register the Engraving Bench node, with it you can craft the basic Engravings nodes.
--
-- It doesn't automatically add images that you added in "engravings_e.lua".

local S = minetest.get_translator('engravings')

--
-- Bench
--

minetest.register_node("engravings:engraving_bench", {
	description = "Engraving Bench",
	tiles = {"default_sandstone_block.png", "default_sandstone_block.png", "engravings_engravingzone.png",
	"engravings_engravingzone.png", "engravings_engravingzone.png", "engravings_engravingzone.png"},
	paramtype2 = "facedir",
	paramtype = "light",
	groups = {cracky=2},
	
	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
       	meta:set_string("infotext", "Engraving Bench")
       	meta:set_string("formspec", "size[8,9]"..
		"list[context;input;0,0;1,1;]"..
		"list[context;output;0,1;1,1;]"..
		"image_button[2,0;1,1;engravings_e_eye.png;eye; ]"..
		"image_button[3,0;1,1;engravings_e_men.png;men; ]"..
		"image_button[4,0;1,1;engravings_e_women.png;women; ]"..
		"image_button[5,0;1,1;engravings_e_sun.png;sun; ]"..
		"image_button[6,0;1,1;engravings_e_bolas_small.png;bolas_small; ]"..
		"image_button[7,0;1,1;engravings_e_bolas_conti5.png;bolas_conti5; ]"..
		"image_button[2,1;1,1;engravings_e_sunbird.png;sunbird; ]"..
		"image_button[3,1;1,1;engravings_e_papyrus.png;papyrus; ]"..
		"image_button[4,1;1,1;engravings_e_cactus.png;cactus; ]"..
		"image_button[5,1;1,1;engravings_e_ankh.png;ankh; ]"..
		"image_button[6,1;1,1;engravings_e_scarab.png;scarab; ]"..
		"image_button[7,1;1,1;engravings_e_bolas_conti4.png;bolas_conti4; ]"..
		"image_button[2,2;1,1;engravings_e_cat.png;cat; ]"..
		"image_button[3,2;1,1;engravings_e_crocodile.png;crocodile; ]"..
		"image_button[4,2;1,1;engravings_e_bird.png;bird; ]"..
		"image_button[5,2;1,1;engravings_e_jackal.png;jackal; ]"..
		"image_button[6,2;1,1;engravings_e_snake.png;snake; ]"..
		"image_button[7,2;1,1;engravings_e_bolas_conti2.png;bolas_conti2; ]"..
		"image_button[2,3;1,1;engravings_e_sunmen.png;sunmen; ]"..
		"image_button[3,3;1,1;engravings_e_button.png;button; ]"..
		"image_button[4,3;1,1;engravings_e_wingleft.png;wingleft; ]"..
		"image_button[5,3;1,1;engravings_e_wingscarab.png;wingscarab; ]"..
		"image_button[6,3;1,1;engravings_e_wingright.png;wingright; ]"..
		"image_button[7,3;1,1;engravings_e_bolas_conti3.png;bolas_conti3; ]"..
		"image_button[2,4;1,1;engravings_e_whip.png;whip; ]"..
		"image_button[3,4;1,1;engravings_e_ankhmen.png;ankhmen; ]"..
		"image_button[4,4;1,1;engravings_e_slaveblock.png;slaveblock; ]"..
		"image_button[5,4;1,1;engravings_e_slave.png;slave; ]"..
		"image_button[6,4;1,1;engravings_e_slavebuild.png;slavebuild; ]"..
		"image_button[7,4;1,1;engravings_e_bolas_conti1.png;bolas_conti1; ]"..
		"button[0,2;1,1;block;Block]"..
		"list[current_player;main;0,5;8,4;]")
		local inv = meta:get_inventory()
		inv:set_size("input", 1)
		inv:set_size("output", 1)
	end,

	on_receive_fields = function(pos, formname, fields, sender)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		local instack = inv:get_stack("input", 1)
		local input = instack:get_name()
		local instack = inv:get_stack("output", 1)
		local output = instack:get_name()

--
-- Engraving Commands
--
		if fields ["block"] then
			if input == "default:sandstone" then
				inv:remove_item("input", "default:sandstone")
				inv:add_item("output", "default:sandstone_block")
			end
		end

		if fields ["eye"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone1")
			end
		end

		if fields ["men"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone2")
			end
		end

		if fields ["women"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone3")
			end
		end

		if fields ["sun"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone4")
			end
		end

		if fields ["bolas_small"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone5")
			end
		end

		if fields ["bolas_conti1"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone6")
			end
		end

		if fields ["bolas_conti2"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone7")
			end
		end

		if fields ["bolas_conti3"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone8")
			end
		end

		if fields ["bolas_conti4"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone9")
			end
		end

		if fields ["bolas_conti5"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone10")
			end
		end

		if fields ["ankh"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone11")
			end
		end
	
		if fields ["scarab"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone12")
			end
		end

		if fields ["cactus"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone13")
			end
		end

		if fields ["cat"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone14")
			end
		end
	
		if fields ["crocodile"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone15")
			end
		end

		if fields ["bird"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone16")
			end
		end

		if fields ["jackal"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone17")
			end
		end

		if fields ["snake"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone18")
			end
		end

		if fields ["papyrus"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone19")
			end
		end

		if fields ["sunmen"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone20")
			end
		end

		if fields ["button"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone21")
			end
		end

		if fields ["wingleft"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone22")
			end
		end

		if fields ["wingright"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone23")
			end
		end

		if fields ["wingscarab"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone24")
			end
		end

		if fields ["sunbird"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone25")
			end
		end

		if fields ["whip"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone26")
			end
		end

		if fields ["ankhmen"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone27")
			end
		end

		if fields ["slaveblock"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone28")
			end
		end

		if fields ["slave"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone29")
			end
		end

		if fields ["slavebuild"] then
			if input == "default:sandstone_block" then
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:deco_stone30")
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
        "default:cobble"
    }
	})