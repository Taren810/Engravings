-- Arts
--
-- This file register the complex Engravings nodes.
--
-- If you want to add a new image, put it in the textures and name it "engravings_a_*" where * is a unique name, then add that 
-- name to the "img" list and a new name in the "desc" list.
--

local S = minetest.get_translator('engravings')

local img = {
	"visir", "boat"
}

local desc = {
    S("Sandstone Block with Pharaon Engraving "), S("Sandstone Block with Boat Engraving ")
}

-- The name under which the nodes are registered end with a number based on the position of his image in the list "img"

for i=1, #img do
	local sandstone_img, basenode
		sandstone_img = "default_sandstone_block.png"
		basenode = "default:sandstone_block"
	minetest.register_node("engravings:art_stone"..i.."_1", { 
		description = desc[i].."1",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:0,0=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:art_stone"..i.."_2", { 
		description = desc[i].."2",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-16,0=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:art_stone"..i.."_3", { 
		description = desc[i].."3",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-32,0=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:art_stone"..i.."_4", { 
		description = desc[i].."4",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-48,0=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:art_stone"..i.."_5", { 
		description = desc[i].."5",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:0,-16=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:art_stone"..i.."_6", { 
		description = desc[i].."6",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-16,-16=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:art_stone"..i.."_7", { 
		description = desc[i].."7",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-32,-16=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:art_stone"..i.."_8", { 
		description = desc[i].."8",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-48,-16=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:art_stone"..i.."_9", { 
		description = desc[i].."9",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:0,-32=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:art_stone"..i.."_10", { 
		description = desc[i].."10",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-16,-32=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:art_stone"..i.."_11", { 
		description = desc[i].."11",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-32,-32=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:art_stone"..i.."_12", { 
		description = desc[i].."12",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-48,-32=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:art_stone"..i.."_13", { 
		description = desc[i].."13",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:0,-48=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:art_stone"..i.."_14", { 
		description = desc[i].."14",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-16,-48=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:art_stone"..i.."_15", { 
		description = desc[i].."15",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-32,-48=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
    minetest.register_node("engravings:art_stone"..i.."_16", { 
		description = desc[i].."16",
		is_ground_content = false,
		tiles = {sandstone_img, sandstone_img, sandstone_img.."^[combine:16x16:-48,-48=engravings_a_"..img[i]..".png"},
		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})
end