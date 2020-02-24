import mods.jei.JEI;

# 1 Snow Block to 4 Snow Balls
recipes.addShapeless("custom/snow_to_snowballs", <minecraft:snowball> * 4,
    [ <minecraft:snow> ]);

# 1 Sapling to 2 Sticks
recipes.addShapeless("custom/sapling_to_sticks", <minecraft:stick> * 2,
    [ <ore:treeSapling> ]);

# 3 Gravel to 1 Flint
recipes.addShapeless("custom/gravel_to_flint", <minecraft:flint>,
    [ <minecraft:gravel>, <minecraft:gravel>, <minecraft:gravel> ]);

# Planks / Sticks
recipes.removeByRecipeName("minecraft:stick");
recipes.removeByRecipeName("minecraft:oak_planks");
recipes.removeByRecipeName("minecraft:spruce_planks");
recipes.removeByRecipeName("minecraft:birch_planks");
recipes.removeByRecipeName("minecraft:acacia_planks");
recipes.removeByRecipeName("minecraft:jungle_planks");
recipes.removeByRecipeName("minecraft:dark_oak_planks");

# Gunpowder
recipes.addShapeless("custom/gunpowder", <minecraft:gunpowder> * 2, [
    <ore:dustSulfur>, <ore:dustSaltpeter>, <ore:dustCarbon>
]);

# Arrow
recipes.remove(<minecraft:arrow>);
recipes.addShaped("custom/arrow", <minecraft:arrow>, [
    [<ore:shardFlint>],
    [<ore:stickWood>],
    [<ore:feather>]
]);

# Compass
recipes.remove(<minecraft:compass>);
recipes.addShaped("custom/compass", <minecraft:compass>, [
    [null, <ore:nuggetIron>, null],
    [<ore:nuggetIron>, <ore:dustRedstone>, <ore:nuggetIron>],
    [null, <ore:nuggetIron>, null]
]);

# Clock
recipes.remove(<minecraft:clock>);
recipes.addShaped("custom/clock", <minecraft:clock>, [
    [<ore:nuggetGold>, <ore:gemLapis>, <ore:nuggetGold>],
    [<ore:gemLapis>, <ore:dustRedstone>, <ore:gemLapis>],
    [<ore:nuggetGold>, <ore:gemLapis>, <ore:nuggetGold>]
]);

# Shield
recipes.remove(<minecraft:shield>);
recipes.addShaped("custom/shield", <minecraft:shield>,
        [[<ore:plateIron>, <ore:plankWood>, <ore:plateIron>],
         [<ore:plateIron>, <ore:plankWood>, <ore:plateIron>],
         [<ore:plateIron>, <ore:plankWood>, <ore:plateIron>]]);

# Iron bars
recipes.removeByRecipeName("minecraft:iron_bars");
recipes.addShaped("custom/iron_bars", <minecraft:iron_bars> * 16, [
    [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>],
    [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]
]);

# No smelting certain ores
furnace.remove(<minecraft:coal>, <minecraft:coal_ore>);
furnace.remove(<minecraft:redstone>, <minecraft:redstone_ore>);
furnace.remove(<minecraft:diamond>, <minecraft:diamond_ore>);
furnace.remove(<minecraft:emerald>, <minecraft:emerald_ore>);
furnace.remove(<minecraft:dye:4>, <minecraft:lapis_ore>);
furnace.remove(<minecraft:quartz>, <minecraft:quartz_ore>);

# Iron Alloy Things
recipes.addShaped("custom/hopper_alloy", <minecraft:hopper>, [
    [<ore:ingotConstructionAlloy>, null, <ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, <ore:chestWood>, <ore:ingotConstructionAlloy>],
    [null, <ore:ingotConstructionAlloy>, null]
]);
recipes.addShaped("custom/piston_alloy", <minecraft:piston>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:cobblestone>, <ore:ingotConstructionAlloy>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]
]);

# Removed tools
JEI.removeAndHide(<minecraft:wooden_axe>);
JEI.removeAndHide(<minecraft:wooden_pickaxe>);
JEI.removeAndHide(<minecraft:wooden_shovel>);
JEI.removeAndHide(<minecraft:wooden_sword>);
JEI.removeAndHide(<minecraft:wooden_hoe>);
JEI.removeAndHide(<minecraft:stone_axe>);
JEI.removeAndHide(<minecraft:stone_pickaxe>);
JEI.removeAndHide(<minecraft:stone_shovel>);
JEI.removeAndHide(<minecraft:stone_sword>);
JEI.removeAndHide(<minecraft:stone_hoe>);

# Removed armor
JEI.removeAndHide(<minecraft:leather_helmet>);
JEI.removeAndHide(<minecraft:leather_chestplate>);
JEI.removeAndHide(<minecraft:leather_leggings>);
JEI.removeAndHide(<minecraft:leather_boots>);

# Iron armor
recipes.removeByRecipeName("minecraft:iron_helmet");
recipes.removeByRecipeName("minecraft:iron_chestplate");
recipes.removeByRecipeName("minecraft:iron_leggings");
recipes.removeByRecipeName("minecraft:iron_boots");
recipes.addShaped("custom/iron_helmet", <minecraft:iron_helmet>, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, null, <ore:plateIron>]
]);
recipes.addShaped("custom/iron_chestplate", <minecraft:iron_chestplate>, [
    [<ore:plateIron>, null, <ore:plateIron>],
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
]);
recipes.addShaped("custom/iron_leggings", <minecraft:iron_leggings>, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [<ore:plateIron>, null, <ore:plateIron>],
    [<ore:plateIron>, null, <ore:plateIron>]
]);
recipes.addShaped("custom/iron_boots", <minecraft:iron_boots>, [
    [<ore:plateIron>, null, <ore:plateIron>],
    [<ore:plateIron>, null, <ore:plateIron>]
]);

# Gold armor
recipes.removeByRecipeName("minecraft:golden_helmet");
recipes.removeByRecipeName("minecraft:golden_chestplate");
recipes.removeByRecipeName("minecraft:golden_leggings");
recipes.removeByRecipeName("minecraft:golden_boots");
recipes.addShaped("custom/golden_helmet", <minecraft:golden_helmet>, [
    [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>],
    [<ore:plateGold>, null, <ore:plateGold>]
]);
recipes.addShaped("custom/golden_chestplate", <minecraft:golden_chestplate>, [
    [<ore:plateGold>, null, <ore:plateGold>],
    [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>],
    [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>]
]);
recipes.addShaped("custom/golden_leggings", <minecraft:golden_leggings>, [
    [<ore:plateGold>, <ore:plateGold>, <ore:plateGold>],
    [<ore:plateGold>, null, <ore:plateGold>],
    [<ore:plateGold>, null, <ore:plateGold>]
]);
recipes.addShaped("custom/golden_boots", <minecraft:golden_boots>, [
    [<ore:plateGold>, null, <ore:plateGold>],
    [<ore:plateGold>, null, <ore:plateGold>]
]);

# Diamond armor
recipes.removeByRecipeName("minecraft:diamond_helmet");
recipes.removeByRecipeName("minecraft:diamond_chestplate");
recipes.removeByRecipeName("minecraft:diamond_leggings");
recipes.removeByRecipeName("minecraft:diamond_boots");
recipes.addShaped("custom/diamond_helmet", <minecraft:diamond_helmet>, [
    [<ore:ingotDiamond>, <ore:ingotDiamond>, <ore:ingotDiamond>],
    [<ore:ingotDiamond>, null, <ore:ingotDiamond>]
]);
recipes.addShaped("custom/diamond_chestplate", <minecraft:diamond_chestplate>, [
    [<ore:ingotDiamond>, null, <ore:ingotDiamond>],
    [<ore:ingotDiamond>, <ore:ingotDiamond>, <ore:ingotDiamond>],
    [<ore:ingotDiamond>, <ore:ingotDiamond>, <ore:ingotDiamond>]
]);
recipes.addShaped("custom/diamond_leggings", <minecraft:diamond_leggings>, [
    [<ore:ingotDiamond>, <ore:ingotDiamond>, <ore:ingotDiamond>],
    [<ore:ingotDiamond>, null, <ore:ingotDiamond>],
    [<ore:ingotDiamond>, null, <ore:ingotDiamond>]
]);
recipes.addShaped("custom/diamond_boots", <minecraft:diamond_boots>, [
    [<ore:ingotDiamond>, null, <ore:ingotDiamond>],
    [<ore:ingotDiamond>, null, <ore:ingotDiamond>]
]);

# Diamond tools
recipes.removeByRecipeName("minecraft:diamond_sword");
recipes.removeByRecipeName("minecraft:diamond_axe");
recipes.removeByRecipeName("minecraft:diamond_pickaxe");
recipes.removeByRecipeName("minecraft:diamond_shovel");
recipes.removeByRecipeName("minecraft:diamond_hoe");
recipes.addShaped("custom/diamond_sword", <minecraft:diamond_sword>, [
    [<ore:ingotDiamond>],
    [<ore:ingotDiamond>],
    [<ore:stickTreatedWood>]
]);
recipes.addShaped("custom/diamond_axe", <minecraft:diamond_axe>, [
    [<ore:ingotDiamond>, <ore:ingotDiamond>],
    [<ore:ingotDiamond>, <ore:stickTreatedWood>],
    [null, <ore:stickTreatedWood>]
]);
recipes.addShaped("custom/diamond_pickaxe", <minecraft:diamond_pickaxe>, [
    [<ore:ingotDiamond>, <ore:ingotDiamond>, <ore:ingotDiamond>],
    [null, <ore:stickTreatedWood>, null],
    [null, <ore:stickTreatedWood>, null]
]);
recipes.addShaped("custom/diamond_shovel", <minecraft:diamond_shovel>, [
    [<ore:ingotDiamond>],
    [<ore:stickTreatedWood>],
    [<ore:stickTreatedWood>]
]);
recipes.addShaped("custom/diamond_hoe", <minecraft:diamond_hoe>, [
    [<ore:ingotDiamond>, <ore:ingotDiamond>],
    [null, <ore:stickTreatedWood>],
    [null, <ore:stickTreatedWood>]
]);

# Packed ice
mods.immersiveengineering.MetalPress.addRecipe(<minecraft:packed_ice>, <minecraft:ice>, <immersiveengineering:mold:6>, 2048, 9);

# Leather
recipes.addShapeless("custom/leather", <minecraft:leather>, [
    <minecraft:rotten_flesh>, <ore:dustSalt>
]);

# Blaze
recipes.removeByRecipeName("minecraft:blaze_powder");

# Ender
recipes.removeByRecipeName("minecraft:ender_eye");

# Furnace
recipes.removeByRecipeName("minecraft:furnace");
recipes.addShaped("custom/furnace", <minecraft:furnace>, [
    [<ore:stone>, <ore:stone>, <ore:stone>],
    [<ore:stone>, null, <ore:stone>],
    [<ore:stone>, <ore:stone>, <ore:stone>]
]);

# Book
recipes.removeByRecipeName("minecraft:book");
recipes.addShapeless("custom/book", <minecraft:book>, [
    <ore:paper>, <ore:paper>, <ore:paper>, <ore:hideTanned>
]);

# Nether brick
furnace.remove(<minecraft:netherbrick>, <minecraft:netherrack>);

# Brewing stand
recipes.removeByRecipeName("minecraft:brewing_stand");

# BWM recipe preference
recipes.removeByRecipeName("minecraft:noteblock");