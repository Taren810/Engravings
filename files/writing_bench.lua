-- Writing Bench
--
-- This file register the Writing Bench node, with it you can craft the Writings nodes.
--
-- It doesn't automatically add images that you added in "engravings_he.lua".
--

local S = minetest.get_translator('engravings')

local img = {
	"bird", "hand", "men", "pot", "sail", "misc1", "misc2", "misc3", "misc4", "misc5"
}

--
-- Bench
--

minetest.register_node("engravings:writing_bench", {
	description = "Writing Bench",
	tiles = {"default_sandstone_block.png", "default_sandstone_block.png", "engravings_engravingzone.png",
	"engravings_engravingzone.png", "engravings_engravingzone.png", "engravings_engravingzone.png"},
	paramtype2 = "facedir",
	paramtype = "light",
	groups = {cracky=2},

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
       	meta:set_string("infotext", "Writing Bench")
       	meta:set_string("formspec", "size[8,9]"..
		"list[context;input;0,0;1,1;]"..
		"list[context;output;0,1;1,1;]"..
		"image_button[2,0;1,1;engravings_he_bird.png;bird; ]"..
        "image_button[3,0;1,1;engravings_he_hand.png;hand; ]"..
        "image_button[4,0;1,1;engravings_he_men.png;men; ]"..
        "image_button[5,0;1,1;engravings_he_pot.png;pot; ]"..
        "image_button[6,0;1,1;engravings_he_sail.png;sail; ]"..
        "image_button[7,0;1,1;engravings_he_misc1.png;misc1; ]"..
        "image_button[2,1;1,1;engravings_he_misc2.png;misc2; ]"..
        "image_button[3,1;1,1;engravings_he_misc3.png;misc3; ]"..
        "image_button[4,1;1,1;engravings_he_misc4.png;misc4; ]"..
        "image_button[5,1;1,1;engravings_he_misc5.png;misc5; ]"..
		"image_button[0,2;1,1;engravings_he_columns.png;columns; ]"..
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
		if fields ["columns"] then
			if input == "default:sandstone_block" then
				if inv:is_empty("output") then
					inv:remove_item("input", "default:sandstone_block")
					inv:add_item("output", "engravings:writing_base")
				elseif output == "engravings:writing_base" then
					inv:remove_item("input", "default:sandstone_block")
					inv:add_item("output", "engravings:writing_base")
				end
			end
		end

		for u=1, 10 do
			if fields [img[u]] then
				if input == "engravings:writing_base" then
					if inv:is_empty("output") then
						inv:remove_item("input", "engravings:writing_base")
						inv:add_item("output", "engravings:decoh1_stone"..u)
					elseif output == "engravings:decoh1_stone1" then
						inv:remove_item("input", "engravings:writing_base")
						inv:add_item("output", "engravings:decoh1_stone"..u)
					end
				end
	
				for i=1, 10 do
	
					if input == "engravings:decoh1_stone"..i then
						if inv:is_empty("output") then
							inv:remove_item("input", "engravings:decoh1_stone"..i)
							inv:add_item("output", "engravings:decoh2_stone"..i.."_"..u)
						elseif output == "engravings:decoh1_stone"..i.."_"..u then
							inv:remove_item("input", "engravings:decoh1_stone"..i)
							inv:add_item("output", "engravings:decoh2_stone"..i.."_"..u)
						end
					end
	
					for o=1, 10 do			
						if input == "engravings:decoh2_stone"..i.."_"..o then
							if inv:is_empty("output") then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_"..u)
							elseif output == "engravings:decoh1_stone"..i.."_"..o.."_"..u then
								inv:remove_item("input", "engravings:decoh1_stone"..i.."_"..o)
								inv:add_item("output", "engravings:decoh2_stone"..i.."_"..o.."_"..u)
							end
						end
	
						for p=1, 10 do
							if input == "engravings:decoh3_stone"..i.."_"..o.."_"..p then
								if inv:is_empty("output") then
									inv:remove_item("input", "engravings:decoh3_stone"..i.."_"..o.."_"..p)
									inv:add_item("output", "engravings:decoh4_stone"..i.."_"..o.."_"..p.."_"..u)
								elseif output == "engravings:decoh3_stone"..i.."_"..o.."_"..p.."_"..u then
									inv:remove_item("input", "engravings:decoh3_stone"..i.."_"..o.."_"..p)
									inv:add_item("output", "engravings:decoh4_stone"..i.."_"..o.."_"..p.."_"..u)
								end
							end
						end
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
        "default:stick"
    }
	})