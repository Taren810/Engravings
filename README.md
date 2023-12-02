#### Minetest Mod: Engravings
===============================

**Adds multiple engraved blocks and a benches to make them.**

The mod adds different egyptian themed decorative blocks. To craft them you need to build a bench of the corrispondent type.

## Types of Nodes
- Engravings Nodes: They are nodes with a 16x16 image engraved on them;
- Paintings Nodes: They are nodes that mirror the Engravings ones but are colored;
- Arts Nodes: They are nodes similiar to the Engravings Nodes that compose big images, a single block has a 16x16 texture but together form a 64x64 image
- Writings Nodes: They are nodes divided in 4 8x8 parts, each one with an image; they are 11111 different nodes but the complete file is disactivated so only 5 can be used if you don't reactivate it.

- Engraving Bench (built with a stick, a cobblestone and a sandstone block) will let you engrave sandstone blocks. 
    - Menu: Right-clicking the bench you will open his crafting menu, the upper invetory slot is the input and the other is the output. 
    - Sandstone Block: if there is a "sandstone" stack in the input and you click the "block" button it will use the "sandstone" stack to craft a "sandstone block" in the output. 
    - Engraving: If there is a "sandstone block" stack in the input you can click any of the image button and it will use the stack to create the correspondent engraved block. 
    - !Attention! If there is any item in the output that isn't the one that you are crafting the input stack will be lost without any node being created.

- Painting Bench (built with a stick, any wool and a sandstoneblock) will let you paint engraved sandstone blocks.
    - Menu: Right-clicking the bench you will open his crafting menu, the first invetory slot is the "blocks" input and the second is the "dye" input and the last is the output.
    - Engraving Palette: Before you can paint you need an "Engraving Palette" dye, craftable with one stack of the red, blue and yellow dye. 
    - Painting: If there is in the "blocks" input any stack of an engraved block and in the "dye" input a stack of "Engraving Palette" dye you can click the "Paint" button and a stack of a painted block of the corrispondent engraved block will be crafted in the output.
    - !Attention! If there is any item in the output that isn't the one that you are crafting the "blocks" and "dye" input stack will be lost without any node being created.    

- Arts Bench (built with two sticks, a cobblestone and a sandstone block) will let you engrave big arts on sandstoneblocks
    - Menu: Right-clicking the bench you will open his crafting menu, the first invetory slot is the input and the other 16 are the output. 
    - Engraving: If there are 16 "sandstone block" stack in the input you can click any of the image button and it will use the stacks to create the correspondent engraved blocks.   
    - !Attention! If there is any item in the output that isn't the one that you are crafting the input stack will be lost without any node being created.      

- Writing Bench (built with two sticks and a sandstone block) will let you write hieroglyphs on sandstone blocks.
    - Menu: Right-clicking the bench you will open his crafting menu, the upper invetory slot is the input and the other is the output. 
    - Columns: if there is a "sandstone block" stack in the input and you click the "columns" button it will use the "sandstone block" stack to craft the writings columns in the output.
    - Writing: if there is a "sandstone block with writing columns" or any other writted block with empty space in the input you can click any of the image button and it will use the stack to add the correspondent image to the original block. 
    - !Attention! If there is any item in the output that isn't the one that you are crafting the input stack will be lost without any node being created.
    - !!Double Attention!! The Writings nodes are in total 11111, their file is disactivated and only 5 are registered, if you want to use them all you need to modify the "init.lua" file. Because the "Writing Bench" work only if there are all the Writings nodes it too is disactivated.

## List of Images
- Engravings and Paintings Images:
    - Ankh;
    - Bird;
    - Short Bolas Horns;                                                
    - Long Bolas Horns:                                                    
        - Bottom part of the Horns                                       
        - Intermediate part of the Horns                                
        - Extremity of the Horns                                        
        - The curve of the Horns, centrated                             
        - The curve of the Horns, a moved to the bottom of the face     
    - Slaves:                                                           
        - Slaves dragging a block;                                      
        - Slaves;                                                       
        - Slaves with a building;                                       
    - Cactus;
    - Cat;
    - Crocodile;
    - Eye;
    - Jackal;
    - Men;
    - Women;
    - Papyrus;
    - Scarab;
    - Winged Scarab:
        - Right Wing;
        - Winged Scarab;
        - Left Wing;
    - Snake;
    - Sun;
    - Sun with Birds;
    - Sun with Men;
    - Sun with Ankh;
- Arts Images:
    - "Visir", two mans with various hieroglyphs;
- Writings Images:
    - Bird;
    - Hand;
    - Men;
    - Pot;
    - Sail;
    - 5 "Misc" Images;

## License

- Code under the MIT license by Taren , see [`license.txt`](license.txt) for details.

- Textures under CC-BY-SA 4.0 license by Taren (https://creativecommons.org/licenses/by-sa/4.0/), except:
    - by bas080 , CC-BY-SA 3.0 (https://creativecommons.org/licenses/by-sa/3.0/):
        - engravings_e_eye.png 
        - engravings_e_men.png   (slightly modified) 
        - engravings_e_women.png (slightly modified) 
        - engravings_e_sun.png 
        - engravings_p_eye.png   (slightly modified)
        - engravings_p_men.png   (slightly modified)
        - engravings_p_women.png (slightly modified) 
        - engravings_p_sun.png   (slightly modified) 
    - by BlockMen , MIT License (https://mit-license.org/)
        - engravings_e_ankh.png
        - engravings_e_cactus.png
        - engravings_e_scarab.png   (slightly modified)
        - engravings_p_ankh.png     (slightly modified)
        - engravings_p_cactus.png   (slightly modified)
        - engravings_p_scarab.png   (slightly modified)

## Other

**Dependencies:** default (found in [Minetest Game][1])

For **mod installation** instructions, please visit: http://wiki.minetest.com/wiki/Installing_Mods

[1]: https://github.com/minetest/minetest_game