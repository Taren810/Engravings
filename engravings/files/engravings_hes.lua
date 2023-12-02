-- Hieroglyphs Short
--
-- This file register only 5 of the Writings nodes, if you want all 11111 nodes to be registered you have to activate "engravings_he.lua"
--
-- !! You could add images but beware, with only 4 new images you will exceed the number of max nodes minetest can load (only if "engravings_he.lua is activated"): !!
-- If you want to add a new image, put it in the textures and name it "engravings_he_*" where * is a unique name, then add that 
-- name to the "img" list.
--
-- If you want to add some of the others Writings nodes in this short list you have to register it using the scheme already present
--

local S = minetest.get_translator('engravings')

minetest.register_node("engravings:writing_base", {
	description = S("Sandstone Block with Writing Columns"),
	tiles = {"default_sandstone_block.png", "default_sandstone_block.png", "default_sandstone_block.png^engravings_he_columns.png"},
	groups = {crumbly = 1, cracky = 3},
	sounds = default.node_sound_stone_defaults(),
})

local img = {
	"bird", "hand", "men", "pot", "sail", "misc1", "misc2", "misc3", "misc4", "misc5"
}

local sandstone_img, basenode
    sandstone_img = "default_sandstone_block.png"
    basenode = "engravings:writing_base"
minetest.register_node("engravings:decoh4_stone1_2_3_4", {
    description = S("Sandstone Block with Writings 1"),
    is_ground_content = false,
            
    tiles = {sandstone_img, sandstone_img, 
            sandstone_img.."^engravings_he_columns.png^[combine:16x16:0,0=engravings_he_bird.png:0,8=engravings_he_hand.png:8,0=engravings_he_men.png:8,8=engravings_he_pot.png"
            },
            
    groups = minetest.registered_nodes[basenode].groups,
    sounds = minetest.registered_nodes[basenode].sounds,
})   

minetest.register_node("engravings:decoh4_stone6_3_4_10", {
    description = S("Sandstone Block with Writings 2"),
    is_ground_content = false,

    tiles = {sandstone_img, sandstone_img, 
        sandstone_img.."^engravings_he_columns.png^[combine:16x16:0,0=engravings_he_misc1.png:0,8=engravings_he_men.png:8,0=engravings_he_pot.png:8,8=engravings_he_misc5.png"
        },

    groups = minetest.registered_nodes[basenode].groups,
    sounds = minetest.registered_nodes[basenode].sounds,
})   

minetest.register_node("engravings:decoh4_stone7_6_1_3", {
    description = S("Sandstone Block with Writings 3"),
    is_ground_content = false,

    tiles = {sandstone_img, sandstone_img, 
        sandstone_img.."^engravings_he_columns.png^[combine:16x16:0,0=engravings_he_misc2.png:0,8=engravings_he_misc1.png:8,0=engravings_he_bird.png:8,8=engravings_he_men.png"
        },

    groups = minetest.registered_nodes[basenode].groups,
    sounds = minetest.registered_nodes[basenode].sounds,
})   

minetest.register_node("engravings:decoh4_stone5_8_9_4", {
    description = S("Sandstone Block with Writings 4"),
    is_ground_content = false,

    tiles = {sandstone_img, sandstone_img, 
        sandstone_img.."^engravings_he_columns.png^[combine:16x16:0,0=engravings_he_sail.png:0,8=engravings_he_misc3.png:8,0=engravings_he_misc4.png:8,8=engravings_he_pot.png"
        },

    groups = minetest.registered_nodes[basenode].groups,
    sounds = minetest.registered_nodes[basenode].sounds,
})   

minetest.register_node("engravings:decoh4_stone10_2_6_7", {
    description = S("Sandstone Block with Writings 5"),
    is_ground_content = false,

    tiles = {sandstone_img, sandstone_img, 
        sandstone_img.."^engravings_he_columns.png^[combine:16x16:0,0=engravings_he_misc5.png:0,8=engravings_he_hand.png:8,0=engravings_he_misc1.png:8,8=engravings_he_misc2.png"
        },

    groups = minetest.registered_nodes[basenode].groups,
    sounds = minetest.registered_nodes[basenode].sounds,
})   