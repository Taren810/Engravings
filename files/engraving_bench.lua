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
       	meta:set_string("formspec", "size[8,10]"..
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
		"image_button[2,5;1,1;engravings_e_fish.png;fish; ]"..
--		"image_button[3,5;1,1; ; ; ]"..
--		"image_button[4,5;1,1; ; ; ]"..
--		"image_button[5,5;1,1; ; ; ]"..
--		"image_button[6,5;1,1; ; ; ]"..
--		"image_button[7,5;1,1; ; ; ]"..
		"button[0,2;1,1;block;Block]"..
		"list[current_player;main;0,6;8,4;]")
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
		local img = {
			"eye", "men", "women", "sun", "bolas_small", "bolas_conti1", "bolas_conti2", "bolas_conti3", "bolas_conti4", "bolas_conti5", 
			"ankh", "scarab", "cactus", "cat", "crocodile",  "bird", "jackal", "snake", "papyrus", "sunmen", "button", "wingleft", 
			"wingright", "wingscarab", "sunbird", "whip", "ankhmen", "slaveblock", "slave", "slavebuild", "fish"
		}
--
-- Engraving Commands
--
		if fields ["block"] then
			for i=1, 31 do
				if input == "default:sandstone" then
					if inv:is_empty("output") then	
						inv:remove_item("input", "default:sandstone")
						inv:add_item("output", "default:sandstone_block")
					elseif output == "default:sandstone_block" then
						inv:remove_item("input", "default:sandstone")
						inv:add_item("output", "default:sandstone_block")
					end
				elseif input == "engravings:deco_stone"..i then
					if inv:is_empty("output") then	
						inv:remove_item("input", "engravings:deco_stone"..i)
						inv:add_item("output", "default:sandstone_block")
					elseif output == "default:sandstone_block" then
						inv:remove_item("input", "engravings:deco_stone"..i)
						inv:add_item("output", "default:sandstone_block")
					end
				elseif input == "engravings:decod_stone"..i then
					if inv:is_empty("output") then	
						inv:remove_item("input", "engravings:decod_stone"..i)
						inv:add_item("output", "engravings:deco_stone"..i)
					elseif output == "engravings:deco_stone"..i then
						inv:remove_item("input", "engravings:decod_stone"..i)
						inv:add_item("output", "engravings:deco_stone"..i)
					end
				elseif input == "engravings:decop_stone"..i then
					if inv:is_empty("output") then
						inv:remove_item("input", "engravings:decop_stone"..i)
						inv:add_item("output", "engravings:decod_stone"..i)
					elseif output == "engravings:decod_stone"..i then
						inv:remove_item("input", "engravings:decop_stone"..i)
						inv:add_item("output", "engravings:decod_stone"..i)
					end
				end
			end
			for i=1, 2 do
				for o=1, 16 do
					if input == "engravings:art_stone"..i.."_"..o then
						if inv:is_empty("output") then
							inv:remove_item("input", "engravings:art_stone"..i.."_"..o)
							inv:add_item("output", "default:sandstone_block")
						elseif output == "default:sandstone_block" then
							inv:remove_item("input", "engravings:art_stone"..i.."_"..o)
							inv:add_item("output", "default:sandstone_block")
						end
					elseif input == "engravings:artd_stone"..i.."_"..o then
						if inv:is_empty("output") then
							inv:remove_item("input", "engravings:artd_stone"..i.."_"..o)
							inv:add_item("output", "engravings:art_stone"..i.."_"..o)
						elseif output == "engravings:art_stone"..i.."_"..o then
							inv:remove_item("input", "engravings:artd_stone"..i.."_"..o)
							inv:add_item("output", "engravings:art_stone"..i.."_"..o)
						end
					elseif input == "engravings:artp_stone"..i.."_"..o then
						if inv:is_empty("output") then
							inv:remove_item("input", "engravings:artp_stone"..i.."_"..o)
							inv:add_item("output", "engravings:artd_stone"..i.."_"..o)
						elseif output == "engravings:artd_stone"..i.."_"..o then
							inv:remove_item("input", "engravings:artp_stone"..i.."_"..o)
							inv:add_item("output", "engravings:artd_stone"..i.."_"..o)
						end
					end
				end				
			end
		end
		
		for i=1, 31 do
			if fields [img[i]] then
				if input == "default:sandstone_block" then
					if inv:is_empty("output") then	
						inv:remove_item("input", "default:sandstone_block")
						inv:add_item("output", "engravings:deco_stone"..i)
					elseif output == "engravings:deco_stone"..i then
						inv:remove_item("input", "default:sandstone_block")
						inv:add_item("output", "engravings:deco_stone"..i)
					end
				end
			end
		end

		local function can_dig(pos, player)
			local meta = minetest.get_meta(pos);
			local inv = meta:get_inventory()
			return inv:is_empty("input") and inv:is_empty("output")
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