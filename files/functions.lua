-- Engravings
--
-- This file register the function with which are registered the Engravings nodes.
--

local S = minetest.get_translator('engravings')

-- "modname": prefix for the name of the registered node
-- "stone_img": texture under the engraved image
-- "basenode": node from which are taken the groups and other charactheristic of the new node
-- "t": part of the name of the texture
-- "img": name of the image engraved
-- "desc": description of the node

function engravings.register_engravings(modname,stone_img,basenode,t,img,desc)
    for i=1, #img do
        minetest.register_node(modname..":deco"..t.."_stone"..i, {
            description = desc[i],
            is_ground_content = false,
            tiles = {stone_img, stone_img, stone_img.."^"..modname.."_"..t.."_"..img[i]..".png"},
            groups = minetest.registered_nodes[basenode].groups,
            sounds = minetest.registered_nodes[basenode].sounds,
        })
    end
end

-- "column": name of the image of the columns

function engravings.register_writings(modname,stone_img,basenode,column,desc,img)
	for i=1, #img do
    
		minetest.register_node(modname..":decoh1_stone"..i, { 
			description = desc.." "..i,
			is_ground_content = false,
	
			tiles = {stone_img, stone_img, 
			stone_img.."^[combine:16x16:0,0="..column..":0,0="..modname.."_he_"..img[i]..".png"
			},
	
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
	
		for o=1, #img do
	
			minetest.register_node(modname..":decoh2_stone"..i.."_"..o, { 
				description = desc.." "..i.." "..o,
				is_ground_content = false,
	
				tiles = {stone_img, stone_img, 
				stone_img.."^"..column.."^[combine:16x16:0,0="..modname.."_he_"..img[i]..".png:0,8="..modname.."_he_"..img[o]..".png"
				},
	
				groups = minetest.registered_nodes[basenode].groups,
				sounds = minetest.registered_nodes[basenode].sounds,
			})
	
			for p=1, #img do
		
				minetest.register_node(modname..":decoh3_stone"..i.."_"..o.."_"..p, { 
					description = desc.." "..i.." "..o.." "..p,
					is_ground_content = false,
			
					tiles = {stone_img, stone_img, 
					stone_img.."^"..column.."^[combine:16x16:0,0="..modname.."_he_"..img[i]..".png:0,8="..modname.."_he_"..img[o]..".png:8,0="..modname.."_he_"..img[p]..".png"
					},
			
					groups = minetest.registered_nodes[basenode].groups,
					sounds = minetest.registered_nodes[basenode].sounds,
				})
			
				for l=1, #img do
		
					minetest.register_node(modname..":decoh4_stone"..i.."_"..o.."_"..p.."_"..l, { 
						description = desc.." "..i.." "..o.." "..p.." "..l,
						is_ground_content = false,
				
						tiles = {stone_img, stone_img, 
						stone_img.."^"..column.."^[combine:16x16:0,0="..modname.."_he_"..img[i]..".png:0,8="..modname.."_he_"..img[o]..".png:8,0="..modname.."_he_"..img[p]..".png:8,8="..modname.."_he_"..img[l]..".png"
						},
				
						groups = minetest.registered_nodes[basenode].groups,
						sounds = minetest.registered_nodes[basenode].sounds,
					})            
				end
			end
		end
	end
end

function engravings.register_arts(modname,stone_img,basenode,t,img,desc)
	for i=1, #img do
		minetest.register_node(modname..":art"..t.."_stone"..i.."_1", { 
			description = desc[i].."1",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:0,0="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
		minetest.register_node(modname..":art"..t.."_stone"..i.."_2", { 
			description = desc[i].."2",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:-16,0="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
		minetest.register_node(modname..":art"..t.."_stone"..i.."_3", { 
			description = desc[i].."3",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:-32,0="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
		minetest.register_node(modname..":art"..t.."_stone"..i.."_4", { 
			description = desc[i].."4",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:-48,0="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
		minetest.register_node(modname..":art"..t.."_stone"..i.."_5", { 
			description = desc[i].."5",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:0,-16="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
		minetest.register_node(modname..":art"..t.."_stone"..i.."_6", { 
			description = desc[i].."6",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:-16,-16="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
		minetest.register_node(modname..":art"..t.."_stone"..i.."_7", { 
			description = desc[i].."7",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:-32,-16="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
		minetest.register_node(modname..":art"..t.."_stone"..i.."_8", { 
			description = desc[i].."8",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:-48,-16="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
		minetest.register_node(modname..":art"..t.."_stone"..i.."_9", { 
			description = desc[i].."9",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:0,-32="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
		minetest.register_node(modname..":art"..t.."_stone"..i.."_10", { 
			description = desc[i].."10",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:-16,-32="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
		minetest.register_node(modname..":art"..t.."_stone"..i.."_11", { 
			description = desc[i].."11",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:-32,-32="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
		minetest.register_node(modname..":art"..t.."_stone"..i.."_12", { 
			description = desc[i].."12",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:-48,-32="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
		minetest.register_node(modname..":art"..t.."_stone"..i.."_13", { 
			description = desc[i].."13",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:0,-48="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
		minetest.register_node(modname..":art"..t.."_stone"..i.."_14", { 
			description = desc[i].."14",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:-16,-48="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
		minetest.register_node(modname..":art"..t.."_stone"..i.."_15", { 
			description = desc[i].."15",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:-32,-48="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
		minetest.register_node(modname..":art"..t.."_stone"..i.."_16", { 
			description = desc[i].."16",
			is_ground_content = false,
			tiles = {stone_img, stone_img, stone_img.."^[combine:16x16:-48,-48="..modname.."_"..t.."_"..img[i]..".png"},
			groups = minetest.registered_nodes[basenode].groups,
			sounds = minetest.registered_nodes[basenode].sounds,
		})
	end
end


if minetest.settings:get_bool("enable_engravings") then



end