-- Hieroglyphs
--
-- This file register the Writings nodes, !! they are 11111 different nodes composed by the 10 _he_ images. !!
--
-- It's normally disactivated, and instead the mod load the "engravings_hes.lua" file, that has only 5 different nodes.
--
-- !! You could add images but beware, with only 4 new images you will exceed the number of max nodes minetest can load: !!
-- If you want to add a new image, put it in the textures and name it "engravings_he_*" where * is a unique name, then add that 
-- name to the "img" list.
--

local S = minetest.get_translator('engravings')

if minetest.settings:get_bool("add_writings_inventory") then
    minetest.register_node("engravings:writing_base", {
        description = S("Sandstone Block with Writing Columns"),
        tiles = {"default_sandstone_block.png", "default_sandstone_block.png", "default_sandstone_block.png^engravings_he_columns.png"},
        groups = {crumbly = 1, cracky = 3},
        sounds = default.node_sound_stone_defaults(),
    })
else 
    minetest.register_node("engravings:writing_base", {
        description = S("Sandstone Block with Writing Columns"),
        tiles = {"default_sandstone_block.png", "default_sandstone_block.png", "default_sandstone_block.png^engravings_he_columns.png"},
        groups = {crumbly = 1, cracky = 3, not_in_creative_inventory = 1},
        sounds = default.node_sound_stone_defaults(),
    })
end

engravings.register_writings("engravings","default_sandstone_block.png","engravings:writing_base","engravings_he_columns.png","Sandstone Block with Writings",{
	"bird", "hand", "men", "pot", "sail", "misc1", "misc2", "misc3", "misc4", "misc5"
})