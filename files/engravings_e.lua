-- Engravings
--
-- This file register the basic Engravings nodes.
--
-- If you want to add a new image, put it in the textures and name it "engravings_e_*" where * is a unique name, then add that 
-- name to the "img" list and a new name in the "desc" list.
--
-- There is a commented-out part of the file, it register Engravings nodes on other types of nodes (like Obsidian), with the 
-- current palette they look bad and they use an old version of this code.
--


local S = minetest.get_translator('engravings')

local img = {
	"eye", "men", "women", "sun", "bolas_small", "bolas_conti1", "bolas_conti2", "bolas_conti3", "bolas_conti4", "bolas_conti5", "ankh", 
	"scarab", "cactus", "cat", "crocodile",  "bird", "jackal", "snake", "papyrus", "sunmen", "button", "wingleft", "wingright", 
	"wingscarab", "sunbird", "whip", "ankhmen", "slaveblock", "slave", "slavebuild" 
}

--
-- Sandstone Block
--
local desc = {
	S("Sandstone Block with Eye Engraving"), S("Sandstone Block with Men Engraving"),  S("Sandstone Block with Women Engraving"),
	S("Sandstone Block with Sun Engraving"), S("Sandstone Block with Bolas Horns Engraving"), 
	S("Sandstone Block with Long Bolas Horns Engraving 1"), S("Sandstone Block with Long Bolas Horns Engraving 2"), 
	S("Sandstone Block with Long Bolas Horns Engraving 3"), S("Sandstone Block with Long Bolas Horns Engraving 4"), 
	S("Sandstone Block with Long Bolas Horns Engraving 5"), S("Sandstone Block with Ankh Engraving"), 
	S("Sandstone Block with Scarab Engraving"), S("Sandstone Block with Cactus Engraving"), 
	S("Sandstone Block with Cat Engraving"), S("Sandstone Block with Crocodile Engraving"), 
	S("Sandstone Block with Bird Engraving"), S("Sandstone Block with Jackal Engraving"), 
	S("Sandstone Block with Snake Engraving"), S("Sandstone Block with Papyrus Engraving"), 
	S("Sandstone Block with Men and Sun Engraving"), S("Sandstone Block with Sun and Ankh Engraving"), 
	S("Sandstone Block with Left Wing Engraving"), S("Sandstone Block with Right Wing Engraving"), 
	S("Sandstone Block with Winged Scarab Engraving"), S("Sandstone Block with Sun and Birds Engraving"),
	S("Sandstone Block with Whip and Staff Engraving"), S("Sandstone Block with Ankh and Men Engraving"),
	S("Sandstone Block with Slaves Engraving"), S("Sandstone Block with Slaves and Blocks Engraving"),
	S("Sandstone Block with Slaves and Buildings Engraving")
}

-- The name under which the nodes are registered end with a number based on the position of his image in the list "img"

for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_sandstone_block.png"
		basenode = "default:sandstone_block"
	minetest.register_node("engravings:deco_stone"..i, { -- a node with the eye image will be registered as "engravings:deco_stone1"
		description = desc[i],
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^engravings_e_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end

--[[
--
-- Desert Sandstone Block
--
local desc = {
	S("Desert Sandstone Block with Eye Engraving"), S("Desert Sandstone Block with Men Engraving"), 
	S("Desert Sandstone Block with Sun Engraving"), S("Desert Sandstone Block with Bolas Horns Engraving"),
	S("Desert Sandstone Block with Long Bolas Horns Engraving 1"), S("Desert Sandstone Block with Long Bolas Horns Engraving 2"), 
	S("Desert Sandstone Block with Long Bolas Horns Engraving 3"), S("Desert Sandstone Block with Long Bolas Horns Engraving 4"), 
	S("Desert Sandstone Block with Long Bolas Horns Engraving 5"), S("Desert Sandstone Block with Ankh Engraving"), 
	S("Desert Sandstone Block with Scarab Engraving"), S("Desert Sandstone Block with Cactus Engraving"),
    S("Desert Sandstone Block with Cat Engraving"), S("Desert Sandstone Block with Crocodile Engraving"), 
	S("Desert Sandstone Block with Bird Engraving"), S("Desert Sandstone Block with Jackal Engraving"), 
	S("Desert Sandstone Block with Snake Engraving"), S("Desert Sandstone Block with Papyrus Engraving"), 
	S("Desert Sandstone Block with Men and Sun Engraving"), S("Desert Sandstone Block with Sun and Ankh Engraving")
}

for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_desert_sandstone_block.png"
		basenode = "default:desert_sandstone_block"
	minetest.register_node("engravings:deco_stone_desert"..i, {
		description = desc[i],
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^engravings_e_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end

--
-- Silver Sandstone Block
--
local desc = {
	S("Silver Sandstone Block with Eye Engraving"), S("Silver Sandstone Block with Men Engraving"), 
	S("Silver Sandstone Block with Sun Engraving"), S("Silver Sandstone Block with Bolas Horns Engraving"),
	S("Silver Sandstone Block with Long Bolas Horns Engraving 1"), S("Silver Sandstone Block with Long Bolas Horns Engraving 2"), 
	S("Silver Sandstone Block with Long Bolas Horns Engraving 3"), S("Silver Sandstone Block with Long Bolas Horns Engraving 4"), 
	S("Silver Sandstone Block with Long Bolas Horns Engraving 5"),S("Silver Sandstone Block with Ankh Engraving"), 
	S("Silver Sandstone Block with Scarab Engraving"), S("Silver Sandstone Block with Cactus Engraving"),
    S("Silver Sandstone Block with Cat Engraving"), S("Silver Sandstone Block with Crocodile Engraving"), 
	S("Silver Sandstone Block with Bird Engraving"), S("Silver Sandstone Block with Jackal Engraving"), 
	S("Silver Sandstone Block with Snake Engraving"), S("Silver Sandstone Block with Papyrus Engraving"), 
	S("Silver Sandstone Block with Men and Sun Engraving"), S("Silver Sandstone Block with Sun and Ankh Engraving")
}

for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_silver_sandstone_block.png"
		basenode = "default:silver_sandstone_block"
	minetest.register_node("engravings:deco_stone_silver"..i, {
		description = desc[i],
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^engravings_e_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end

--
-- Stone Block
--
local desc = {
	S("Stone Block with Eye Engraving"), S("Stone Block with Men Engraving"), S("Stone Block with Sun Engraving"), 
	S("Stone Block with Bolas Horns Engraving"), S("Stone Block with Long Bolas Horns Engraving 1"), 
	S("Stone Block with Long Bolas Horns Engraving 2"), S("Stone Block with Long Bolas Horns Engraving 3"), 
	S("Stone Block with Long Bolas Horns Engraving 4"), S("Stone Block with Long Bolas Horns Engraving 5"), 
	S("Stone Block with Ankh Engraving"), S("Stone Block with Scarab Engraving"), 
	S("Stone Block with Cactus Engraving"), S("Stone Block with Cat Engraving"), S("Stone Block with Crocodile Engraving"), 
	S("Stone Block with Bird Engraving"), S("Stone Block with Jackal Engraving"), S("Stone Block with Snake Engraving"),
	S("Stone Block with Papyrus Engraving"), S("Stone Block with Men and Sun Engraving"), 
	S("Stone Block with Sun and Ankh Engraving")
}

for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_stone_block.png"
		basenode = "default:stone_block"
	minetest.register_node("engravings:deco_stone_block"..i, {
		description = desc[i],
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^engravings_e_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end

--
-- Desert Stone Block
--
local desc = {
	S("Desert Stone Block with Eye Engraving"), S("Desert Stone Block with Men Engraving"), 
	S("Desert Stone Block with Sun Engraving"), S("Desert Stone Block with Bolas Horns Engraving"),
	S("Desert Stone Block with Long Bolas Horns Engraving 1"), S("Desert Stone Block with Long Bolas Horns Engraving 2"), 
	S("Desert Stone Block with Long Bolas Horns Engraving 3"), S("Desert Stone Block with Long Bolas Horns Engraving 4"), 
	S("Desert Stone Block with Long Bolas Horns Engraving 5"), S("Desert Stone Block with Ankh Engraving"), 
	S("Desert Stone Block with Scarab Engraving"), S("Desert Stone Block with Cactus Engraving"),
    S("Desert Stone Block with Cat Engraving"), S("Desert Stone Block with Crocodile Engraving"), 
	S("Desert Stone Block with Bird Engraving"), S("Desert Stone Block with Jackal Engraving"), 
	S("Desert Stone Block with Snake Engraving"),S("Desert Stone Block with Papyrus Engraving"), 
	S("Desert Stone Block with Men and Sun Engraving"), S("Desert Stone Block with Sun and Ankh Engraving")
}

for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_desert_stone_block.png"
		basenode = "default:desert_stone_block"
	minetest.register_node("engravings:deco_stone_desert_block"..i, {
		description = desc[i],
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^engravings_e_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end

--
-- Obsidian Block
--
local desc = {
	S("Obsidian Block with Eye Engraving"), S("Obsidian Block with Men Engraving"), S("Obsidian Block with Sun Engraving"), 
	S("Obsidian Block with Bolas Horns Engraving"), S("Obsidian Block with Long Bolas Horns Engraving 1"), 
	S("Obsidian Block with Long Bolas Horns Engraving 2"), S("Obsidian Block with Long Bolas Horns Engraving 3"), 
	S("Obsidian Block with Long Bolas Horns Engraving 4"), S("Obsidian Block with Long Bolas Horns Engraving 5"),
    S("Obsidian Block with Ankh Engraving"), S("Obsidian Block with Scarab Engraving"), S("Obsidian Block with Cactus Engraving"),
    S("Obsidian Block with Cat Engraving"), S("Obsidian Block with Crocodile Engraving"), S("Obsidian Block with Bird Engraving"), 
	S("Obsidian Block with Jackal Engraving"), S("Obsidian Block with Snake Engraving"), S("Obsidian Block with Papyrus Engraving"),
	S("Obsidian Block with Men and Sun Engraving"), S("Obsidian Block with Sun and Ankh Engraving")
}

for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_obsidian_block.png"
		basenode = "default:obsidian_block"
	minetest.register_node("engravings:deco_stone_obsidian"..i, {
		description = desc[i],
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^engravings_e_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end
]]