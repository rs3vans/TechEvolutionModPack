import mods.jei.JEI;
import mods.betterwithmods.Anvil;
import mods.betterwithmods.Mill;
import mods.betterwithmods.Kiln;
import mods.betterwithmods.Saw;
import mods.betterwithmods.Cauldron;
import mods.betterwithmods.Crucible;
import mods.betterwithmods.Turntable;
import mods.betterwithmods.FilteredHopper;

Anvil.removeAll();
Crucible.removeAll();

# Remove (almost) ALL steel stuff
JEI.removeAndHide(<betterwithmods:material:13>);
JEI.removeAndHide(<betterwithmods:material:14>);
//JEI.removeAndHide(<betterwithmods:material:16>);
JEI.removeAndHide(<betterwithmods:material:30>);
JEI.removeAndHide(<betterwithmods:material:36>);
JEI.removeAndHide(<betterwithmods:material:38>);
JEI.removeAndHide(<betterwithmods:material:42>);
JEI.removeAndHide(<betterwithmods:material:43>);
JEI.removeAndHide(<betterwithmods:material:47>);
JEI.removeAndHide(<betterwithmods:material:48>);
JEI.removeAndHide(<betterwithmods:material:49>);
JEI.removeAndHide(<betterwithmods:material:51>);
JEI.removeAndHide(<betterwithmods:steel_anvil>);
JEI.removeAndHide(<betterwithmods:steel_block>);
JEI.removeAndHide(<betterwithmods:steel_saw>);
JEI.removeAndHide(<betterwithmods:steel_gearbox>);
JEI.removeAndHide(<betterwithmods:steel_axle>);
JEI.removeAndHide(<betterwithmods:steel_helmet>);
JEI.removeAndHide(<betterwithmods:steel_chest>);
JEI.removeAndHide(<betterwithmods:steel_pants>);
JEI.removeAndHide(<betterwithmods:steel_boots>);
JEI.removeAndHide(<betterwithmods:steel_axe>);
JEI.removeAndHide(<betterwithmods:steel_pickaxe>);
JEI.removeAndHide(<betterwithmods:steel_sword>);
JEI.removeAndHide(<betterwithmods:steel_shovel>);
JEI.removeAndHide(<betterwithmods:steel_battleaxe>);
JEI.removeAndHide(<betterwithmods:steel_hoe>);
JEI.removeAndHide(<betterwithmods:steel_mattock>);
JEI.removeAndHide(<betterwithmods:steel_hacksaw>);
JEI.removeAndHide(<betterwithmods:steel_pressure_plate>);
JEI.removeAndHide(<betterwithmods:steel_gearbox>);
JEI.removeAndHide(<betterwithmods:steel_broken_gearbox>);

# Hemp
<ore:fiberHemp>.remove(<betterwithmods:material:3>);
<ore:fabricHemp>.remove(<betterwithmods:material:4>);

recipes.replaceAllOccurences(<betterwithmods:rope>, <immersiveengineering:wirecoil:3>);
recipes.replaceAllOccurences(<betterwithmods:material:3>, <immersiveengineering:material:4>);
recipes.replaceAllOccurences(<betterwithmods:material:4>, <immersiveengineering:material:5>);

JEI.removeAndHide(<betterwithmods:rope>);
JEI.removeAndHide(<betterwithmods:material:3>);
JEI.removeAndHide(<betterwithmods:material:4>);

Mill.addRecipe([<betterwithmods:material:2>], [<ore:fiberHemp>.firstItem * 3]);
Mill.remove([<betterwithmods:material:3>]);

# Clay Bucket
Kiln.builder()
    .buildRecipe(<ceramics:clay_bucket_block>, [<ceramics:clay_bucket>])
    .setHeat(1)
    .build();

# Cauldron
val clayBucket = <ceramics:clay_bucket>;
val clayBucketWater = clayBucket.withTag({fluids:{FluidName: "water", Amount: 1000}});
recipes.addShaped("custom/cauldron1", <betterwithmods:cooking_pot:1>, [
    [<ore:ingotIron>, null, <ore:ingotIron>],
    [<ore:ingotIron>, clayBucketWater.transformReplace(clayBucket), <ore:ingotIron>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);
recipes.addShaped("custom/cauldron2", <betterwithmods:cooking_pot:1>, [
    [<ore:ingotIron>, null, <ore:ingotIron>],
    [<ore:ingotIron>, <minecraft:water_bucket>.transformReplace(<minecraft:bucket>), <ore:ingotIron>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);

# Niter
Mill.addRecipe([<betterwithmods:creeper_oyster>], [<ore:dustSaltpeter>.firstItem]);

# Soul Sand / Dust
Cauldron.addStoked([<ore:sand> * 4, <ore:itemSkull>], [<minecraft:soul_sand> * 4]);
Mill.addRecipe([<minecraft:soul_sand>], [<ore:dustSoulsand>.firstItem]);

# Nether Sludge
Cauldron.addStoked([<ore:dustNetherrack>, <ore:dustPotash>, <ore:itemClay>], [<ore:sludgeNether>.firstItem]);
Crucible.addUnstoked([<ore:sludgeNether>], [<ore:ingotBrickNether>.firstItem]);

# Potash
Cauldron.remove([<betterwithmods:material:50>]);
Cauldron.addStoked([<ore:tallow>, <ore:dustPotash>], [<betterwithmods:material:50>]);

# Nether Coal
recipes.addShapeless("custom/nether_coal", <betterwithmods:material:1>, [
    <ore:sludgeNether>, <ore:dustCarbon>
]);
recipes.addShaped("custom/torches_from_nether_coal", <minecraft:torch> * 8, [
    [<betterwithmods:material:1>],
    [<ore:stickWood>]
]);

# Hellfire
//<betterwithmods:material:17>.displayName = "Hellfire Ingot";
//Cauldron.addUnstoked([<ore:dustIron>, <ore:dustBlaze>], [<betterwithmods:material:17>]);

# Chopping block
recipes.addShapeless("custom/chopping_block", <betterwithmods:aesthetic:0> * 4, [
    <betterwithmods:aesthetic:6>,
    <betterwithmods:aesthetic:6>,
    <betterwithmods:aesthetic:6>,
    <betterwithmods:aesthetic:6>
]);

# Metal Ingots
Crucible.addStoked([<ore:oreIron>], [<ore:ingotIron>.firstItem]);
Crucible.addStoked([<ore:oreGold>], [<ore:ingotGold>.firstItem]);
Crucible.addStoked([<ore:oreCopper>], [<ore:ingotCopper>.firstItem]);
Crucible.addStoked([<ore:oreNickel>], [<ore:ingotNickel>.firstItem]);
Crucible.addStoked([<ore:oreAluminum>], [<ore:ingotAluminum>.firstItem]);
Crucible.addStoked([<ore:oreSilver>], [<ore:ingotSilver>.firstItem]);
Crucible.addStoked([<ore:oreLead>], [<ore:ingotLead>.firstItem]);
Crucible.addStoked([<ore:oreUranium>], [<ore:ingotUranium>.firstItem]);

# Diamond Ingots
recipes.addShapeless("custom/diamond_ingot", <betterwithmods:material:45>, [
    <ore:ingotSteel>, <ore:gemDiamond>, <betterwithmods:creeper_oyster>
]);

# Machines
recipes.addShaped("custom/bwm_gearbox", <betterwithmods:wooden_gearbox>, [
    [<ore:plankWood>, <ore:gearWood>, <ore:plankWood>],
    [<ore:gearWood>, <ore:ingotIron>, <ore:gearWood>],
    [<ore:plankWood>, <ore:gearWood>, <ore:plankWood>]
]);
recipes.addShaped("custom/bwm_mill", <betterwithmods:single_machine:0>, [
    [<ore:stone>, <ore:gearWood>, <ore:stone>],
    [<ore:stone>, <ore:ingotIron>, <ore:stone>],
    [<ore:stone>, <ore:stone>, <ore:stone>]
]);
recipes.addShaped("custom/bwm_pulley", <betterwithmods:single_machine:1>, [
    [<ore:plankWood>, <ore:ingotIron>, <ore:plankWood>],
    [<ore:gearWood>, <ore:gearWood>, <ore:gearWood>],
    [<ore:plankWood>, <ore:ingotIron>, <ore:plankWood>]
]);
recipes.addShaped("custom/bwm_hibachi", <betterwithmods:hibachi>, [
    [<ore:ingotHellfire>, <ore:ingotHellfire>, <ore:ingotHellfire>],
    [<ore:ingotIron>, <ore:blockRedstone>, <ore:ingotIron>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);
Kiln.remove([<betterwithmods:cooking_pot:0>]);
Kiln.builder()
    .buildRecipe(<betterwithmods:unfired_pottery:0>, [<betterwithmods:cooking_pot:0>])
    .setHeat(1)
    .build();

# Bark
Mill.addRecipe([<minecraft:log:0>], [<betterwithmods:bark:0>, <betterwithmods:material:22>]);
Mill.addRecipe([<minecraft:log:1>], [<betterwithmods:bark:1>, <betterwithmods:material:22>]);
Mill.addRecipe([<minecraft:log:2>], [<betterwithmods:bark:2>, <betterwithmods:material:22>]);
Mill.addRecipe([<minecraft:log:3>], [<betterwithmods:bark:3>, <betterwithmods:material:22>]);
Mill.addRecipe([<minecraft:log2:0>], [<betterwithmods:bark:4>, <betterwithmods:material:22>]);
Mill.addRecipe([<minecraft:log2:1>], [<betterwithmods:bark:5>, <betterwithmods:material:22>]);
Mill.addRecipe([<betterwithmods:blood_log>], [<betterwithmods:bark:6>, <betterwithmods:material:22>]);
Mill.addRecipe([<rustic:log:*>], [<betterwithmods:bark:0>, <betterwithmods:material:22>]);

# Blood Logs
Saw.remove(<betterwithmods:blood_log>);
Saw.add(<betterwithmods:blood_log>, [<minecraft:planks:3> * 4, <betterwithmods:bark:6>, <ore:dustWood>.firstItem * 2]);

# Paperbark/Cinnamon logs
Saw.remove(<harvestcraft:pampaperbark>);
Saw.add(<harvestcraft:pampaperbark>, [<minecraft:planks:3> * 4, <minecraft:paper>, <betterwithmods:material:22> * 2]);

Saw.remove(<harvestcraft:pamcinnamon>);
Saw.add(<harvestcraft:pamcinnamon>, [<minecraft:planks:3> * 4, <harvestcraft:cinnamonitem>, <betterwithmods:material:22> * 2]);

Saw.remove(<harvestcraft:pammaple>);
Saw.add(<harvestcraft:pammaple>, [<minecraft:planks:1> * 4, <ore:cropMaplesyrup>.firstItem, <betterwithmods:material:22> * 2]);

# Sawdust
Mill.addRecipe([<ore:plankWood>], [<betterwithmods:material:22> * 2]);

# Stone
Kiln.builder()
    .buildRecipe(<minecraft:cobblestone>, [<minecraft:stone>])
    .setHeat(1)
    .build();

# Cobble -> Gravel -> Sand
Mill.addRecipe([<ore:cobblestone>], [<betterwithmods:gravel_pile> * 3]);
Mill.addRecipe([<ore:gravel>], [<betterwithmods:sand_pile> * 3]);

# Clay / Porcelain
Kiln.builder()
    .buildRecipe(<ceramics:clay_soft>, [<ceramics:porcelain>])
    .setHeat(1)
    .build();

# Charcoal
Kiln.remove([<minecraft:coal:1>]);
Kiln.builder()
    .buildRecipe(<ore:logWood>, [<minecraft:coal:1>])
    .setHeat(1)
    .build();
Mill.addRecipe([<minecraft:coal:1>], [<ore:dustCharcoal>.firstItem]);

# Coal
Mill.remove([<betterwithmods:material:18>]);
Mill.remove([<betterwithmods:material:37>]);
Mill.addRecipe([<minecraft:coal>], [<ore:dustCoal>.firstItem, <immersiveengineering:material:25>]);
Mill.addRecipe([<minecraft:coal_ore>], [<minecraft:coal>]);

# Iron
Mill.addRecipe([<minecraft:iron_ore>], [<ore:dustTinyIron>.firstItem * 2]);

# Redstone / Lapis
Mill.addRecipe([<minecraft:redstone_ore>], [<ore:dustRedstone>.firstItem * 2]);
Mill.addRecipe([<minecraft:lapis_ore>], [<ore:gemLapis>.firstItem * 2]);

Kiln.remove([<minecraft:brick>]);
Kiln.builder()
    .buildRecipe(<betterwithmods:unfired_pottery:4>, [<minecraft:brick>])
    .setHeat(1)
    .build();
furnace.addRecipe(<minecraft:brick>, <betterwithmods:unfired_pottery:4>);

# Crude Steel
Crucible.addStoked([<ore:dustIron>, <ore:itemClay>, <ore:dustPotash>], [<ore:ingotCrudeSteel>.firstItem]);

# Other Cauldron Recipes
Cauldron.addStoked([<minecraft:skull:2>], [<minecraft:rotten_flesh> * 8]);

# Other Crucible Recipes
Crucible.addUnstoked([<ore:cobblestone>, <ore:dyeWhite>], [<betterwithmods:aesthetic:7>]);
Crucible.addUnstoked([<ore:sand>], [<ore:blockGlassColorless>.firstItem]);

Crucible.addUnstoked([<quark:glass_shards:0> * 4], [<ore:blockGlassColorless>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:1> * 4], [<ore:blockGlassWhite>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:2> * 4], [<ore:blockGlassOrange>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:3> * 4], [<ore:blockGlassMagenta>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:4> * 4], [<ore:blockGlassLightBlue>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:5> * 4], [<ore:blockGlassYellow>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:6> * 4], [<ore:blockGlassLime>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:7> * 4], [<ore:blockGlassPink>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:8> * 4], [<ore:blockGlassGray>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:9> * 4], [<ore:blockGlassLightGray>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:10> * 4], [<ore:blockGlassCyan>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:11> * 4], [<ore:blockGlassPurple>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:12> * 4], [<ore:blockGlassBlue>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:13> * 4], [<ore:blockGlassBrown>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:14> * 4], [<ore:blockGlassGreen>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:15> * 4], [<ore:blockGlassRed>.firstItem]);
Crucible.addUnstoked([<quark:glass_shards:16> * 4], [<ore:blockGlassBlack>.firstItem]);

Crucible.addUnstoked([<ore:paneGlassColorless> * 8], [<ore:blockGlassColorless>.firstItem * 3]);
Crucible.addUnstoked([<ore:paneGlassWhite> * 4], [<ore:blockGlassWhite>.firstItem]);
Crucible.addUnstoked([<ore:paneGlassOrange> * 4], [<ore:blockGlassOrange>.firstItem]);
Crucible.addUnstoked([<ore:paneGlassMagenta> * 4], [<ore:blockGlassMagenta>.firstItem]);
Crucible.addUnstoked([<ore:paneGlassLightBlue> * 4], [<ore:blockGlassLightBlue>.firstItem]);
Crucible.addUnstoked([<ore:paneGlassYellow> * 4], [<ore:blockGlassYellow>.firstItem]);
Crucible.addUnstoked([<ore:paneGlassLime> * 4], [<ore:blockGlassLime>.firstItem]);
Crucible.addUnstoked([<ore:paneGlassPink> * 4], [<ore:blockGlassPink>.firstItem]);
Crucible.addUnstoked([<ore:paneGlassGray> * 4], [<ore:blockGlassGray>.firstItem]);
Crucible.addUnstoked([<ore:paneGlassLightGray> * 4], [<ore:blockGlassLightGray>.firstItem]);
Crucible.addUnstoked([<ore:paneGlassCyan> * 4], [<ore:blockGlassCyan>.firstItem]);
Crucible.addUnstoked([<ore:paneGlassPurple> * 4], [<ore:blockGlassPurple>.firstItem]);
Crucible.addUnstoked([<ore:paneGlassBlue> * 4], [<ore:blockGlassBlue>.firstItem]);
Crucible.addUnstoked([<ore:paneGlassBrown> * 4], [<ore:blockGlassBrown>.firstItem]);
Crucible.addUnstoked([<ore:paneGlassGreen> * 4], [<ore:blockGlassGreen>.firstItem]);
Crucible.addUnstoked([<ore:paneGlassRed> * 4], [<ore:blockGlassRed>.firstItem]);
Crucible.addUnstoked([<ore:paneGlassBlack> * 4], [<ore:blockGlassBlack>.firstItem]);

Crucible.addUnstoked([<ore:itemIronTool>], [<ore:nuggetIron>.firstItem]);
Crucible.addUnstoked([<ore:itemIronArmor>], [<ore:nuggetIron>.firstItem]);
Crucible.addUnstoked([<ore:itemChainmailArmor>], [<ore:nuggetIron>.firstItem]);
Crucible.addUnstoked([<ore:itemGoldTool>], [<ore:nuggetGold>.firstItem]);
Crucible.addUnstoked([<ore:itemGoldArmor>], [<ore:nuggetGold>.firstItem]);
Crucible.addStoked([<ore:itemSteelTool>], [<ore:nuggetSteel>.firstItem]);
Crucible.addStoked([<ore:itemSteelArmor>], [<ore:nuggetSteel>.firstItem]);

Crucible.addStoked([<ore:itemEndermanSkull>], [<minecraft:ender_pearl> * 2]);

# Misc removals
JEI.removeAndHide(<betterwithmods:material:4>);
JEI.removeAndHide(<betterwithmods:material:18>);
JEI.removeAndHide(<betterwithmods:material:19>);
JEI.removeAndHide(<betterwithmods:material:20>);
JEI.removeAndHide(<betterwithmods:material:23>);
JEI.removeAndHide(<betterwithmods:material:25>);
JEI.removeAndHide(<betterwithmods:material:26>);
JEI.removeAndHide(<betterwithmods:material:27>);
JEI.removeAndHide(<betterwithmods:material:28>);
JEI.removeAndHide(<betterwithmods:material:29>);
JEI.removeAndHide(<betterwithmods:material:34>);
JEI.removeAndHide(<betterwithmods:material:39>);
JEI.removeAndHide(<betterwithmods:material:46>);
JEI.removeAndHide(<betterwithmods:unfired_pottery:2>);
JEI.removeAndHide(<betterwithmods:urn:0>);
JEI.removeAndHide(<betterwithmods:urn:8>);
JEI.removeAndHide(<betterwithmods:urn:9>);
JEI.removeAndHide(<betterwithmods:arcane_scroll>);
JEI.removeAndHide(<betterwithmods:light>);
JEI.removeAndHide(<betterwithmods:lens>);
JEI.removeAndHide(<betterwithmods:broadhead_arrow>);
JEI.removeAndHide(<betterwithmods:bellows:1>);
JEI.removeAndHide(<betterwithmods:long_friend>);
JEI.removeAndHide(<betterwithmods:infernal_enchanter>);
JEI.removeAndHide(<betterwithmods:cooking_pot:2>);
JEI.removeAndHide(<betterwithmods:dynamite>);
JEI.removeAndHide(<betterwithmods:aesthetic:3>);
JEI.removeAndHide(<betterwithmods:candle:*>);
JEI.removeAndHide(<betterwithmods:candle_holder>);
JEI.removeAndHide(<betterwithmods:tasty_sandwich>);
JEI.removeAndHide(<betterwithmods:beef_potatoes>);
JEI.removeAndHide(<betterwithmods:beef_dinner>);
JEI.removeAndHide(<betterwithmods:pork_dinner>);
JEI.removeAndHide(<betterwithmods:ham_and_eggs>);
JEI.removeAndHide(<betterwithmods:mystery_meat>);
JEI.removeAndHide(<betterwithmods:cooked_mystery_meat>);
JEI.removeAndHide(<betterwithmods:wolf_chop>);
JEI.removeAndHide(<betterwithmods:cooked_wolf_chop>);
JEI.removeAndHide(<betterwithmods:buddy_block>);
JEI.removeAndHide(<betterwithmods:companion_cube>);
JEI.removeAndHide(<betterwithmods:block_dispenser>);
JEI.removeAndHide(<betterwithmods:detector>);
JEI.removeAndHide(<betterwithmods:creative_generator>);
JEI.removeAndHide(<betterwithmods:cobblestone:*>);
JEI.removeAndHide(<betterwithmods:iron_wall>);
JEI.removeAndHide(<betterwithmods:nether_growth>);
JEI.removeAndHide(<betterwithmods:mining_charge>);

recipes.removeByRecipeName("betterwithmods:items/material/material.diamond_nugget");
recipes.removeByRecipeName("betterwithmods:items/material/material.diamond_ingot");
recipes.removeByRecipeName("betterwithmods:decompress/material.diamond_ingot_compress");
recipes.removeByRecipeName("betterwithmods:items/chainmail_helmet");
recipes.removeByRecipeName("betterwithmods:items/chainmail_chestplate");
recipes.removeByRecipeName("betterwithmods:items/chainmail_leggings");
recipes.removeByRecipeName("betterwithmods:items/chainmail_boots");
recipes.removeByRecipeName("betterwithmods:blocks/mech/gearbox");
recipes.removeByRecipeName("betterwithmods:blocks/mech/cauldron");
recipes.removeByRecipeName("betterwithmods:blocks/mech/single_machine_0");
recipes.removeByRecipeName("betterwithmods:blocks/mech/single_machine_1");
recipes.removeByRecipeName("betterwithmods:blocks/redstone/hibachi");

Kiln.remove(<minecraft:end_stone>);
Kiln.remove([<betterwithmods:urn:0>]);

Turntable.remove(<betterwithmods:unfired_pottery:3>);
Turntable.add(<betterwithmods:unfired_pottery:3>, [<minecraft:clay_ball> * 2]);

Cauldron.remove([<betterwithmods:material:1> * 4]);
Cauldron.remove([<betterwithmods:material:35> * 8]);
Cauldron.remove([<betterwithmods:material:29> * 2]);
Cauldron.remove([<betterwithmods:material:13>]);
Cauldron.remove([<betterwithmods:material:19>]);
Cauldron.remove([<betterwithmods:material:27>]);
Cauldron.remove([<betterwithmods:material:28>]);
Cauldron.remove([<minecraft:gunpowder> * 2]);
Cauldron.remove([<minecraft:dye:2>]);
Cauldron.remove([<betterwithmods:blood_sapling>]);

FilteredHopper.removeRecipeByInput(<betterwithmods:material:23>);