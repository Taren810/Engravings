-- Hieroglyphs
--
-- This file register the Writings nodes, !! they are 11111 different nodes composed by the 10 _he_ images. !!
--
-- It's normally disactivated, and instead the mod load the "engravings_hes.lua" file, that has only 5 different nodes.
--
-- If you reactivate this, make sure to activate "writing_bench.lua" to be able to craft the nodes, they aren't normally in the creative inventory.
--
-- !! You could add images but beware, with only 4 new images you will exceed the number of max nodes minetest can load: !!
-- If you want to add a new image, put it in the textures and name it "engravings_he_*" where * is a unique name, then add that 
-- name to the "img" list.
--

local S = minetest.get_translator('engravings')

minetest.register_node("engravings:writing_base", {
	description = S("Sandstone Block with Writing Columns"),
	tiles = {"default_sandstone_block.png", "default_sandstone_block.png", "default_sandstone_block.png^engravings_he_columns.png"},
	groups = {crumbly = 1, cracky = 3, not_in_creative_inventory = 1}, -- If you want these nodes to be in the inventory remove the "not_in_creative_inventory = 1" group
	sounds = default.node_sound_stone_defaults(),
})

local img = {
	"bird", "hand", "men", "pot", "sail", "misc1", "misc2", "misc3", "misc4", "misc5"
}

for i=1, #img do
    
	local sandstone_img, basenode
		sandstone_img = "default_sandstone_block.png"
		basenode = "engravings:writing_base"
	minetest.register_node("engravings:decoh1_stone"..i, { -- a node with the bird image will be registered as "engravings:decoh1_stone1"
		description = S("Sandstone Block with Writings "..i),
		is_ground_content = false,

		tiles = {sandstone_img, sandstone_img, 
        sandstone_img.."^[combine:16x16:0,0=engravings_he_columns.png:0,0=engravings_he_"..img[i]..".png"
        },

		groups = minetest.registered_nodes[basenode].groups,
		sounds = minetest.registered_nodes[basenode].sounds,
	})

    for o=1, #img do

        local sandstone_img, basenode
            sandstone_img = "default_sandstone_block.png"
            basenode = "engravings:writing_base"
        minetest.register_node("engravings:decoh2_stone"..i.."_"..o, { -- a node with two birds images will be registered as "engravings:decoh1_stone1_1"
            description = S("Sandstone Block with Writings "..i+o),
            is_ground_content = false,

            tiles = {sandstone_img, sandstone_img, 
            sandstone_img.."^engravings_he_columns.png^[combine:16x16:0,0=engravings_he_"..img[i]..".png:0,8=engravings_he_"..img[o]..".png"
            },

            groups = minetest.registered_nodes[basenode].groups,
            sounds = minetest.registered_nodes[basenode].sounds,
        })

        for p=1, #img do
    
            local sandstone_img, basenode
                sandstone_img = "default_sandstone_block.png"
                basenode = "engravings:writing_base"
            minetest.register_node("engravings:decoh3_stone"..i.."_"..o.."_"..p, { -- a node with three birds images will be registered as "engravings:decoh1_stone1_1_1"
                description = S("Sandstone Block with Writings "..i+o+p),
                is_ground_content = false,
        
                tiles = {sandstone_img, sandstone_img, 
                sandstone_img.."^engravings_he_columns.png^[combine:16x16:0,0=engravings_he_"..img[i]..".png:0,8=engravings_he_"..img[o]..".png:8,0=engravings_he_"..img[p]..".png"
                },
        
                groups = minetest.registered_nodes[basenode].groups,
                sounds = minetest.registered_nodes[basenode].sounds,
            })
        
            for l=1, #img do
    
                local sandstone_img, basenode
                    sandstone_img = "default_sandstone_block.png"
                    basenode = "engravings:writing_base"
                minetest.register_node("engravings:decoh4_stone"..i.."_"..o.."_"..p.."_"..l, { -- a node with four birds images will be registered as "engravings:decoh1_stone1_1_1_1"
                    description = S("Sandstone Block with Writings "..i+o+p+l),
                    is_ground_content = false,
            
                    tiles = {sandstone_img, sandstone_img, 
                    sandstone_img.."^engravings_he_columns.png^[combine:16x16:0,0=engravings_he_"..img[i]..".png:0,8=engravings_he_"..img[o]..".png:8,0=engravings_he_"..img[p]..".png:8,8=engravings_he_"..img[l]..".png"
                    },
            
                    groups = minetest.registered_nodes[basenode].groups,
                    sounds = minetest.registered_nodes[basenode].sounds,
                })            
            end
        end
    end
end