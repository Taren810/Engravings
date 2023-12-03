-- Paintings
--
-- This file register the painted Engravings nodes
--
-- If you want to add a new image, put it in the textures and name it "engravings_p_*" where * is a unique name, then add that 
-- name to the "img" list and a new name in the "desc" list
--
-- There is a commented-out part of the file, it register painted Engravings nodes on other types of nodes (like Obsidian), with the 
-- current palette they look bad and they use an old version of this code
--

local S = minetest.get_translator('engravings')

local img = {
	"eye", "men", "women", "sun", "bolas_small", "bolas_conti1", "bolas_conti2", "bolas_conti3", "bolas_conti4", "bolas_conti5", 
	"ankh", "scarab", "cactus", "cat", "crocodile",  "bird", "jackal", "snake", "papyrus", "sunmen", "button", "wingleft", 
	"wingright", "wingscarab", "sunbird", "whip", "ankhmen", "slaveblock", "slave", "slavebuild", "fish"
}

--
-- Painted Engravings
--

local desc = {
	S("Painted Sandstone Block with Eye Engraving"), S("Painted Sandstone Block with Men Engraving"), 
	S("Painted Sandstone Block with Women Engraving"), S("Painted Sandstone Block with Sun Engraving"), 
	S("Painted Sandstone Block with Bolas Horns Engraving"), S("Painted Sandstone Block with Long Bolas Horns Engraving 1"), 
	S("Painted Sandstone Block with Long Bolas Horns Engraving 2"), S("Painted Sandstone Block with Long Bolas Horns Engraving 3"), 
	S("Painted Sandstone Block with Long Bolas Horns Engraving 4"), S("Painted Sandstone Block with Long Bolas Horns Engraving 5"),
	S("Painted Sandstone Block with Ankh Engraving"), S("Painted Sandstone Block with Scarab Engraving"), 
	S("Painted Sandstone Block with Cactus Engraving"), S("Painted Sandstone Block with Cat Engraving"), 
	S("Painted Sandstone Block with Crocodile Engraving"), S("Painted Sandstone Block with Bird Engraving"), 
	S("Painted Sandstone Block with Jackal Engraving"), S("Painted Sandstone Block with Snake Engraving"), 
	S("Painted Sandstone Block with Papyrus Engraving"), S("Painted Sandstone Block with Men and Sun Engraving"), 
	S("Painted Sandstone Block with Sun and Ankh Engraving"), S("Painted Sandstone Block with Left Wing Engraving"), 
	S("Painted Sandstone Block with Right Wing Engraving"), S("Painted Sandstone Block with Winged Scarab Engraving"),	
	S("Painted Sandstone Block with Sun and Birds Engraving"), S("Painted Sandstone Block with Whip and Staff Engraving"), 
	S("Painted Sandstone Block with Ankh and Men Engraving"), S("Painted Sandstone Block with Slaves Engraving"), 
	S("Painted Sandstone Block with Slaves and Blocks Engraving"), S("Painted Sandstone Block with Slaves and Buildings Engraving"),
	S("Painted Sandstone Block with Fish Engraving")
}

-- The name under which the nodes are registered end with a number based on the position of his image in the list "img"

for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_sandstone_block.png"
		basenode = "default:sandstone_block"
	minetest.register_node("engravings:decop_stone"..i, { -- a node with the eye image will be registered as "engravings:decop_stone1"
		description = desc[i],
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^engravings_p_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end



--[[
--
-- Desert Sandstone Block
--
local desc = {
	S("Painted Desert Sandstone Block with Eye Engraving"), S("Painted Desert Sandstone Block with Men Engraving"), 
	S("Painted Desert Sandstone Block with Sun Engraving"), S("Painted Desert Sandstone Block with Bolas Horns Engraving"),
	S("Painted Desert Sandstone Block with Long Bolas Horns Engraving 1"), S("Painted Desert Sandstone Block with Long Bolas Horns Engraving 2"), 
	S("Painted Desert Sandstone Block with Long Bolas Horns Engraving 3"), S("Painted Desert Sandstone Block with Long Bolas Horns Engraving 4"), 
	S("Painted Desert Sandstone Block with Long Bolas Horns Engraving 5"), S("Painted Desert Sandstone Block with Ankh Engraving"), 
	S("Painted Desert Sandstone Block with Scarab Engraving"), S("Painted Desert Sandstone Block with Cactus Engraving"),
    S("Painted Desert Sandstone Block with Cat Engraving"), S("Painted Desert Sandstone Block with Crocodile Engraving"), 
	S("Painted Desert Sandstone Block with Bird Engraving"), S("Painted Desert Sandstone Block with Jackal Engraving"), 
	S("Painted Desert Sandstone Block with Snake Engraving"), S("Painted Desert Sandstone Block with Papyrus Engraving"), 
	S("Painted Desert Sandstone Block with Men and Sun Engraving"), S("Painted Desert Sandstone Block with Sun and Ankh Engraving")
}

for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_desert_sandstone_block.png"
		basenode = "default:desert_sandstone_block"
	minetest.register_node("engravings:decop_stone_desert"..i, {
		description = desc[i],
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^engravings_p_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end

--
-- Silver Sandstone Block
--
local desc = {
	S("Painted Silver Sandstone Block with Eye Engraving"), S("Painted Silver Sandstone Block with Men Engraving"), 
	S("Painted Silver Sandstone Block with Sun Engraving"), S("Painted Silver Sandstone Block with Bolas Horns Engraving"),
	S("Painted Silver Sandstone Block with Long Bolas Horns Engraving 1"), S("Painted Silver Sandstone Block with Long Bolas Horns Engraving 2"), 
	S("Painted Silver Sandstone Block with Long Bolas Horns Engraving 3"), S("Painted Silver Sandstone Block with Long Bolas Horns Engraving 4"), 
	S("Painted Silver Sandstone Block with Long Bolas Horns Engraving 5"),S("Painted Silver Sandstone Block with Ankh Engraving"), 
	S("Painted Silver Sandstone Block with Scarab Engraving"), S("Painted Silver Sandstone Block with Cactus Engraving"),
    S("Painted Silver Sandstone Block with Cat Engraving"), S("Painted Silver Sandstone Block with Crocodile Engraving"), 
	S("Painted Silver Sandstone Block with Bird Engraving"), S("Painted Silver Sandstone Block with Jackal Engraving"), 
	S("Painted Silver Sandstone Block with Snake Engraving"), S("Painted Silver Sandstone Block with Papyrus Engraving"), 
	S("Painted Silver Sandstone Block with Men and Sun Engraving"), S("Painted Silver Sandstone Block with Sun and Ankh Engraving")
}

for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_silver_sandstone_block.png"
		basenode = "default:silver_sandstone_block"
	minetest.register_node("engravings:decop_stone_silver"..i, {
		description = desc[i],
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^engravings_p_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end

--
-- Stone Block
--
local desc = {
	S("Painted Stone Block with Eye Engraving"), S("Painted Stone Block with Men Engraving"), 
    S("Painted Stone Block with Sun Engraving"), S("Painted Stone Block with Bolas Horns Engraving"), 
    S("Painted Stone Block with Long Bolas Horns Engraving 1"), S("Painted Stone Block with Long Bolas Horns Engraving 2"), 
    S("Painted Stone Block with Long Bolas Horns Engraving 3"), S("Painted Stone Block with Long Bolas Horns Engraving 4"), 
    S("Painted Stone Block with Long Bolas Horns Engraving 5"), S("Painted Stone Block with Ankh Engraving"), 
    S("Painted Stone Block with Scarab Engraving"), S("Painted Stone Block with Cactus Engraving"), 
    S("Painted Stone Block with Cat Engraving"), S("Painted Stone Block with Crocodile Engraving"), 
	S("Painted Stone Block with Bird Engraving"), S("Painted Stone Block with Jackal Engraving"), 
    S("Painted Stone Block with Snake Engraving"), S("Painted Stone Block with Papyrus Engraving"), 
    S("Painted Stone Block with Men and Sun Engraving"), S("Painted Stone Block with Sun and Ankh Engraving")
}

for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_stone_block.png"
		basenode = "default:stone_block"
	minetest.register_node("engravings:decop_stone_block"..i, {
		description = desc[i],
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^engravings_p_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end

--
-- Desert Stone Block
--
local desc = {
	S("Painted Desert Stone Block with Eye Engraving"), S("Painted Desert Stone Block with Men Engraving"), 
	S("Painted Desert Stone Block with Sun Engraving"), S("Painted Desert Stone Block with Bolas Horns Engraving"),
	S("Painted Desert Stone Block with Long Bolas Horns Engraving 1"), S("Painted Desert Stone Block with Long Bolas Horns Engraving 2"), 
	S("Painted Desert Stone Block with Long Bolas Horns Engraving 3"), S("Painted Desert Stone Block with Long Bolas Horns Engraving 4"), 
	S("Painted Desert Stone Block with Long Bolas Horns Engraving 5"), S("Painted Desert Stone Block with Ankh Engraving"), 
	S("Painted Desert Stone Block with Scarab Engraving"), S("Painted Desert Stone Block with Cactus Engraving"),
    S("Painted Desert Stone Block with Cat Engraving"), S("Painted Desert Stone Block with Crocodile Engraving"), 
	S("Painted Desert Stone Block with Bird Engraving"), S("Painted Desert Stone Block with Jackal Engraving"), 
	S("Painted Desert Stone Block with Snake Engraving"),S("Painted Desert Stone Block with Papyrus Engraving"), 
	S("Painted Desert Stone Block with Men and Sun Engraving"), S("Painted Desert Stone Block with Sun and Ankh Engraving")
}

for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_desert_stone_block.png"
		basenode = "default:desert_stone_block"
	minetest.register_node("engravings:decop_stone_desert_block"..i, {
		description = desc[i],
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^engravings_p_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end

--
-- Obsidian Block
--
local desc = {
	S("Painted Obsidian Block with Eye Engraving"), S("Painted Obsidian Block with Men Engraving"), 
    S("Painted Obsidian Block with Sun Engraving"), S("Painted Obsidian Block with Bolas Horns Engraving"), 
    S("Painted Obsidian Block with Long Bolas Horns Engraving 1"), S("Painted Obsidian Block with Long Bolas Horns Engraving 2"), 
    S("Painted Obsidian Block with Long Bolas Horns Engraving 3"), S("Painted Obsidian Block with Long Bolas Horns Engraving 4"), 
    S("Painted Obsidian Block with Long Bolas Horns Engraving 5"), S("Painted Obsidian Block with Ankh Engraving"), 
    S("Painted Obsidian Block with Scarab Engraving"), S("Painted Obsidian Block with Cactus Engraving"),
    S("Painted Obsidian Block with Cat Engraving"), S("Painted Obsidian Block with Crocodile Engraving"), 
    S("Painted Obsidian Block with Bird Engraving"), S("Painted Obsidian Block with Jackal Engraving"), 
    S("Painted Obsidian Block with Snake Engraving"), S("Painted Obsidian Block with Papyrus Engraving"),
	S("Painted Obsidian Block with Men and Sun Engraving"), S("Painted Obsidian Block with Sun and Ankh Engraving")
}

for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_obsidian_block.png"
		basenode = "default:obsidian_block"
	minetest.register_node("engravings:decop_stone_obsidian"..i, {
		description = desc[i],
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^engravings_p_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end
]]

--
-- Painted Art
--

local img = {
	"visir", "boat"
}

local desc = {
    S("Painted Sandstone Block with Pharaon Engraving "), S("Painted Sandstone Block with Boat Engraving ")
}


for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_sandstone_block.png"
		basenode = "default:sandstone_block"
	minetest.register_node("engravings:artp_stone"..i.."_1", { 
		description = desc[i].."1",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:0,0=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artp_stone"..i.."_2", { 
		description = desc[i].."2",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-16,0=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artp_stone"..i.."_3", { 
		description = desc[i].."3",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-32,0=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artp_stone"..i.."_4", { 
		description = desc[i].."4",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-48,0=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artp_stone"..i.."_5", { 
		description = desc[i].."5",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:0,-16=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artp_stone"..i.."_6", { 
		description = desc[i].."6",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-16,-16=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artp_stone"..i.."_7", { 
		description = desc[i].."7",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-32,-16=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artp_stone"..i.."_8", { 
		description = desc[i].."8",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-48,-16=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artp_stone"..i.."_9", { 
		description = desc[i].."9",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:0,-32=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artp_stone"..i.."_10", { 
		description = desc[i].."10",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-16,-32=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artp_stone"..i.."_11", { 
		description = desc[i].."11",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-32,-32=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artp_stone"..i.."_12", { 
		description = desc[i].."12",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-48,-32=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artp_stone"..i.."_13", { 
		description = desc[i].."13",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:0,-48=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artp_stone"..i.."_14", { 
		description = desc[i].."14",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-16,-48=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artp_stone"..i.."_15", { 
		description = desc[i].."15",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-32,-48=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artp_stone"..i.."_16", { 
		description = desc[i].."16",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-48,-48=engravings_ap_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end
