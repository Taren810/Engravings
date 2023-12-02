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
				inv:remove_item("input", "default:sandstone_block")
				inv:add_item("output", "engravings:writing_base")
			end
		end

        if fields ["bird"] then
			for i=1, 10 do
				for o=1, 10 do
					for p=1, 10 do
						for l=1, 10 do
							if input == "engravings:writing_base" then
								inv:remove_item("input", "engravings:writing_base")
								inv:add_item("output", "engravings:decoh1_stone1")
							elseif input == "engravings:decoh1_stone"..i then
								inv:remove_item("input", "engravings:decoh1_stone"..i)
								inv:add_item("output", "engravings:decoh2_stone"..i.."_1")    
							elseif input == "engravings:decoh2_stone"..i.."_"..o then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_1")    
							elseif input == "engravings:decoh3_stone"..i.."_"..o.."_"..p then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o.."_"..p)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_"..p.."_1")  
							end
						end
					end
				end
			end
		end

        if fields ["hand"] then
			for i=1, 10 do
				for o=1, 10 do
					for p=1, 10 do
						for l=1, 10 do
							if input == "engravings:writing_base" then
								inv:remove_item("input", "engravings:writing_base")
								inv:add_item("output", "engravings:decoh1_stone2")
							elseif input == "engravings:decoh1_stone"..i then
								inv:remove_item("input", "engravings:decoh1_stone"..i)
								inv:add_item("output", "engravings:decoh2_stone"..i.."_2")    
							elseif input == "engravings:decoh2_stone"..i.."_"..o then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_2")    
							elseif input == "engravings:decoh3_stone"..i.."_"..o.."_"..p then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o.."_"..p)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_"..p.."_2")  
							end
						end
					end
				end
			end
		end

		if fields ["men"] then
			for i=1, 10 do
				for o=1, 10 do
					for p=1, 10 do
						for l=1, 10 do
							if input == "engravings:writing_base" then
								inv:remove_item("input", "engravings:writing_base")
								inv:add_item("output", "engravings:decoh1_stone3")
							elseif input == "engravings:decoh1_stone"..i then
								inv:remove_item("input", "engravings:decoh1_stone"..i)
								inv:add_item("output", "engravings:decoh2_stone"..i.."_3")    
							elseif input == "engravings:decoh2_stone"..i.."_"..o then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_3")    
							elseif input == "engravings:decoh3_stone"..i.."_"..o.."_"..p then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o.."_"..p)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_"..p.."_3")  
							end
						end
					end
				end
			end
		end

		if fields ["pot"] then
			for i=1, 10 do
				for o=1, 10 do
					for p=1, 10 do
						for l=1, 10 do
							if input == "engravings:writing_base" then
								inv:remove_item("input", "engravings:writing_base")
								inv:add_item("output", "engravings:decoh1_stone4")
							elseif input == "engravings:decoh1_stone"..i then
								inv:remove_item("input", "engravings:decoh1_stone"..i)
								inv:add_item("output", "engravings:decoh2_stone"..i.."_4")    
							elseif input == "engravings:decoh2_stone"..i.."_"..o then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_4")    
							elseif input == "engravings:decoh3_stone"..i.."_"..o.."_"..p then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o.."_"..p)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_"..p.."_4")  
							end
						end
					end
				end
			end
		end

		if fields ["sail"] then
			for i=1, 10 do
				for o=1, 10 do
					for p=1, 10 do
						for l=1, 10 do
							if input == "engravings:writing_base" then
								inv:remove_item("input", "engravings:writing_base")
								inv:add_item("output", "engravings:decoh1_stone5")
							elseif input == "engravings:decoh1_stone"..i then
								inv:remove_item("input", "engravings:decoh1_stone"..i)
								inv:add_item("output", "engravings:decoh2_stone"..i.."_5")    
							elseif input == "engravings:decoh2_stone"..i.."_"..o then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_5")    
							elseif input == "engravings:decoh3_stone"..i.."_"..o.."_"..p then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o.."_"..p)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_"..p.."_5")  
							end
						end
					end
				end
			end
		end

		if fields ["misc1"] then
			for i=1, 10 do
				for o=1, 10 do
					for p=1, 10 do
						for l=1, 10 do
							if input == "engravings:writing_base" then
								inv:remove_item("input", "engravings:writing_base")
								inv:add_item("output", "engravings:decoh1_stone6")
							elseif input == "engravings:decoh1_stone"..i then
								inv:remove_item("input", "engravings:decoh1_stone"..i)
								inv:add_item("output", "engravings:decoh2_stone"..i.."_6")    
							elseif input == "engravings:decoh2_stone"..i.."_"..o then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_6")    
							elseif input == "engravings:decoh3_stone"..i.."_"..o.."_"..p then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o.."_"..p)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_"..p.."_6")  
							end
						end
					end
				end
			end
		end

		if fields ["misc2"] then
			for i=1, 10 do
				for o=1, 10 do
					for p=1, 10 do
						for l=1, 10 do
							if input == "engravings:writing_base" then
								inv:remove_item("input", "engravings:writing_base")
								inv:add_item("output", "engravings:decoh1_stone7")
							elseif input == "engravings:decoh1_stone"..i then
								inv:remove_item("input", "engravings:decoh1_stone"..i)
								inv:add_item("output", "engravings:decoh2_stone"..i.."_7")    
							elseif input == "engravings:decoh2_stone"..i.."_"..o then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_7")    
							elseif input == "engravings:decoh3_stone"..i.."_"..o.."_"..p then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o.."_"..p)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_"..p.."_7")  
							end
						end
					end
				end
			end
		end

		if fields ["misc3"] then
			for i=1, 10 do
				for o=1, 10 do
					for p=1, 10 do
						for l=1, 10 do
							if input == "engravings:writing_base" then
								inv:remove_item("input", "engravings:writing_base")
								inv:add_item("output", "engravings:decoh1_stone8")
							elseif input == "engravings:decoh1_stone"..i then
								inv:remove_item("input", "engravings:decoh1_stone"..i)
								inv:add_item("output", "engravings:decoh2_stone"..i.."_8")    
							elseif input == "engravings:decoh2_stone"..i.."_"..o then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_8")    
							elseif input == "engravings:decoh3_stone"..i.."_"..o.."_"..p then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o.."_"..p)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_"..p.."_8")  
							end
						end
					end
				end
			end
		end

		if fields ["misc4"] then
			for i=1, 10 do
				for o=1, 10 do
					for p=1, 10 do
						for l=1, 10 do
							if input == "engravings:writing_base" then
								inv:remove_item("input", "engravings:writing_base")
								inv:add_item("output", "engravings:decoh1_stone9")
							elseif input == "engravings:decoh1_stone"..i then
								inv:remove_item("input", "engravings:decoh1_stone"..i)
								inv:add_item("output", "engravings:decoh2_stone"..i.."_9")    
							elseif input == "engravings:decoh2_stone"..i.."_"..o then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_9")    
							elseif input == "engravings:decoh3_stone"..i.."_"..o.."_"..p then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o.."_"..p)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_"..p.."_9")  
							end
						end
					end
				end
			end
		end

		if fields ["misc5"] then
			for i=1, 10 do
				for o=1, 10 do
					for p=1, 10 do
						for l=1, 10 do
							if input == "engravings:writing_base" then
								inv:remove_item("input", "engravings:writing_base")
								inv:add_item("output", "engravings:decoh1_stone10")
							elseif input == "engravings:decoh1_stone"..i then
								inv:remove_item("input", "engravings:decoh1_stone"..i)
								inv:add_item("output", "engravings:decoh2_stone"..i.."_10")    
							elseif input == "engravings:decoh2_stone"..i.."_"..o then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_10")    
							elseif input == "engravings:decoh3_stone"..i.."_"..o.."_"..p then
								inv:remove_item("input", "engravings:decoh2_stone"..i.."_"..o.."_"..p)
								inv:add_item("output", "engravings:decoh3_stone"..i.."_"..o.."_"..p.."_10")  
							end
						end
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
        "default:stick"
    }
	})