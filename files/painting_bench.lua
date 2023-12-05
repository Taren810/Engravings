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
			for i=1, 31 do			
	      		if input == "engravings:deco_stone"..i then
					if inv:is_empty("output") then	
						inv:remove_item("input", "engravings:deco_stone"..i)
						inv:remove_item("dye", "engravings:palette")
           		    	inv:add_item("output", "engravings:decop_stone"..i)
					elseif output == "engravings:decop_stone"..i then
						inv:remove_item("input", "engravings:deco_stone"..i)
						inv:remove_item("dye", "engravings:palette")
           		    	inv:add_item("output", "engravings:decop_stone"..i)
					end
				end
			end
				-- If you added new images both in the "engravings_e.lua" and in the "engravings_p.lua" you can 
				-- scale the second "i" value by 1 for every new image. 
			for i=1, 2 do	
				for o=1, 16	do
					if input == "engravings:deco_stone"..i then
						if inv:is_empty("output") then	
							inv:remove_item("input", "engravings:art_stone"..i.."_"..o)
							inv:remove_item("dye", "engravings:palette")
							inv:add_item("output", "engravings:artp_stone"..i.."_"..o)
	  					elseif output == "engravings:artp_stone"..i.."_"..o then
							inv:remove_item("input", "engravings:art_stone"..i.."_"..o)
							inv:remove_item("dye", "engravings:palette")
							inv:add_item("output", "engravings:artp_stone"..i.."_"..o)
						end	
	  				end
  				end
			end
		end
	end
	
		local function can_dig(pos, player)
			local meta = minetest.get_meta(pos);
			local inv = meta:get_inventory()
			return inv:is_empty("input") and inv:is_empty("dye") and inv:is_empty("output")
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