-- Damaged Paintings
--
-- This file register the damaged painted Engravings nodes
--
-- If you want to add a new image, put it in the textures and name it "engravings_d_*" where * is a unique name, then add that 
-- name to the "img" list and a new name in the "desc" list
--

local S = minetest.get_translator('engravings')

local img = {
	"eye", "men", "women", "sun", "bolas_small", "bolas_conti1", "bolas_conti2", "bolas_conti3", "bolas_conti4", "bolas_conti5", 
	"ankh", "scarab", "cactus", "cat", "crocodile",  "bird", "jackal", "snake", "papyrus", "sunmen", "button", "wingleft", 
	"wingright", "wingscarab", "sunbird", "whip", "ankhmen", "slaveblock", "slave", "slavebuild", "fish"
}

--
-- Damaged Painted Engravings
--

local desc = {
	S("Damaged Painted Sandstone Block with Eye Engraving"), S("Damaged Painted Sandstone Block with Men Engraving"), 
	S("Damaged Painted Sandstone Block with Women Engraving"), S("Damaged Painted Sandstone Block with Sun Engraving"), 
	S("Damaged Painted Sandstone Block with Bolas Horns Engraving"), S("Damaged Painted Sandstone Block with Long Bolas Horns Engraving 1"), 
	S("Damaged Painted Sandstone Block with Long Bolas Horns Engraving 2"), S("Damaged Painted Sandstone Block with Long Bolas Horns Engraving 3"), 
	S("Damaged Painted Sandstone Block with Long Bolas Horns Engraving 4"), S("Damaged Painted Sandstone Block with Long Bolas Horns Engraving 5"),
	S("Damaged Painted Sandstone Block with Ankh Engraving"), S("Damaged Painted Sandstone Block with Scarab Engraving"), 
	S("Damaged Painted Sandstone Block with Cactus Engraving"), S("Damaged Painted Sandstone Block with Cat Engraving"), 
	S("Damaged Painted Sandstone Block with Crocodile Engraving"), S("Damaged Painted Sandstone Block with Bird Engraving"), 
	S("Damaged Painted Sandstone Block with Jackal Engraving"), S("Damaged Painted Sandstone Block with Snake Engraving"), 
	S("Damaged Painted Sandstone Block with Papyrus Engraving"), S("Damaged Painted Sandstone Block with Men and Sun Engraving"), 
	S("Damaged Painted Sandstone Block with Sun and Ankh Engraving"), S("Damaged Painted Sandstone Block with Left Wing Engraving"), 
	S("Damaged Painted Sandstone Block with Right Wing Engraving"), S("Damaged Painted Sandstone Block with Winged Scarab Engraving"),	
	S("Damaged Painted Sandstone Block with Sun and Birds Engraving"), S("Damaged Painted Sandstone Block with Whip and Staff Engraving"), 
	S("Damaged Painted Sandstone Block with Ankh and Men Engraving"), S("Damaged Painted Sandstone Block with Slaves Engraving"), 
	S("Damaged Painted Sandstone Block with Slaves and Blocks Engraving"), S("Damaged Painted Sandstone Block with Slaves and Buildings Engraving"),
	S("Damaged Painted Sandstone Block with Fish Engraving")
}

-- The name under which the nodes are registered end with a number based on the position of his image in the list "img"

for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_sandstone_block.png"
		basenode = "default:sandstone_block"
	minetest.register_node("engravings:decod_stone"..i, { -- a node with the eye image will be registered as "engravings:decop_stone1"
		description = desc[i],
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^engravings_d_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end

-- arts

local img = {
	"visir", "boat"
}

local desc = {
    S("Damaged Painted Sandstone Block with Pharaon Engraving "), S("Damaged Painted Sandstone Block with Boat Engraving ")
}


for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_sandstone_block.png"
		basenode = "default:sandstone_block"
	minetest.register_node("engravings:artd_stone"..i.."_1", { 
		description = desc[i].."1",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:0,0=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artd_stone"..i.."_2", { 
		description = desc[i].."2",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-16,0=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artd_stone"..i.."_3", { 
		description = desc[i].."3",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-32,0=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artd_stone"..i.."_4", { 
		description = desc[i].."4",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-48,0=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artd_stone"..i.."_5", { 
		description = desc[i].."5",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:0,-16=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artd_stone"..i.."_6", { 
		description = desc[i].."6",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-16,-16=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artd_stone"..i.."_7", { 
		description = desc[i].."7",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-32,-16=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artd_stone"..i.."_8", { 
		description = desc[i].."8",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-48,-16=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artd_stone"..i.."_9", { 
		description = desc[i].."9",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:0,-32=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artd_stone"..i.."_10", { 
		description = desc[i].."10",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-16,-32=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artd_stone"..i.."_11", { 
		description = desc[i].."11",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-32,-32=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artd_stone"..i.."_12", { 
		description = desc[i].."12",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-48,-32=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artd_stone"..i.."_13", { 
		description = desc[i].."13",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:0,-48=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artd_stone"..i.."_14", { 
		description = desc[i].."14",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-16,-48=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artd_stone"..i.."_15", { 
		description = desc[i].."15",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-32,-48=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:artd_stone"..i.."_16", { 
		description = desc[i].."16",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-48,-48=engravings_ad_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end
