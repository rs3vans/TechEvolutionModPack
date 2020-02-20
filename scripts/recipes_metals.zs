import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.AlloySmelter;
import mods.extendedcrafting.TableCrafting;

# Ores
furnace.remove(<minecraft:iron_ingot>, <minecraft:iron_ore>);
furnace.remove(<minecraft:gold_ingot>, <minecraft:gold_ore>);
furnace.remove(<immersiveengineering:metal:0>, <immersiveengineering:ore:0>);
furnace.remove(<immersiveengineering:metal:1>, <immersiveengineering:ore:1>);
furnace.remove(<immersiveengineering:metal:2>, <immersiveengineering:ore:2>);
furnace.remove(<immersiveengineering:metal:3>, <immersiveengineering:ore:3>);
furnace.remove(<immersiveengineering:metal:4>, <immersiveengineering:ore:4>);
furnace.remove(<immersiveengineering:metal:5>, <immersiveengineering:ore:5>);
furnace.remove(<quark:biotite>, <quark:biotite_ore>);

furnace.addRecipe(<minecraft:iron_nugget>, <minecraft:iron_ore>);
furnace.addRecipe(<minecraft:gold_nugget>, <minecraft:gold_ore>);
furnace.addRecipe(<immersiveengineering:metal:20>, <immersiveengineering:ore:0>);
furnace.addRecipe(<immersiveengineering:metal:21>, <immersiveengineering:ore:1>);
furnace.addRecipe(<immersiveengineering:metal:22>, <immersiveengineering:ore:2>);
furnace.addRecipe(<immersiveengineering:metal:23>, <immersiveengineering:ore:3>);
furnace.addRecipe(<immersiveengineering:metal:24>, <immersiveengineering:ore:4>);
furnace.addRecipe(<immersiveengineering:metal:25>, <immersiveengineering:ore:5>);

BlastFurnace.addRecipe(<ore:ingotIron>.firstItem, <ore:oreIron>, 200);
BlastFurnace.addRecipe(<ore:ingotGold>.firstItem, <ore:oreGold>, 200);
BlastFurnace.addRecipe(<ore:ingotCopper>.firstItem, <ore:oreCopper>, 200);
BlastFurnace.addRecipe(<ore:ingotNickel>.firstItem, <ore:oreNickel>, 200);
BlastFurnace.addRecipe(<ore:ingotAluminum>.firstItem, <ore:oreAluminum>, 200);
BlastFurnace.addRecipe(<ore:ingotSilver>.firstItem, <ore:oreSilver>, 200);
BlastFurnace.addRecipe(<ore:ingotLead>.firstItem, <ore:oreLead>, 200);
BlastFurnace.addRecipe(<ore:ingotUranium>.firstItem, <ore:oreUranium>, 200);

# Wires
recipes.removeByRecipeName("immersiveengineering:material/wire_steel");
recipes.removeByRecipeName("immersiveengineering:material/wire_electrum");
recipes.removeByRecipeName("immersiveengineering:material/wire_aluminum");
recipes.removeByRecipeName("immersiveengineering:material/wire_copper");
recipes.addShapeless("custom/steel_wire_with_cutter", <immersiveengineering:material:23>, [
    <immersiveengineering:metal:38>, scripts.ietools.ieCutterTransformer
]);
recipes.addShapeless("custom/electrum_wire_with_cutter", <immersiveengineering:material:21>, [
    <immersiveengineering:metal:37>, scripts.ietools.ieCutterTransformer
]);
recipes.addShapeless("custom/aluminum_wire_with_cutter", <immersiveengineering:material:22>, [
    <immersiveengineering:metal:31>, scripts.ietools.ieCutterTransformer
]);
recipes.addShapeless("custom/copper_wire_with_cutter", <immersiveengineering:material:20>, [
    <immersiveengineering:metal:30>, scripts.ietools.ieCutterTransformer
]);

# Nuggets
recipes.removeByRecipeName("minecraft:iron_nugget");
recipes.removeByRecipeName("minecraft:iron_ingot_from_nuggets");
recipes.removeByRecipeName("immersiveengineering:metal_storage/iron_ingot_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/iron_ingot");
MetalPress.addRecipe(<ore:ingotIron>.firstItem, <ore:nuggetIron>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetIron>.firstItem * 9, <ore:ingotIron>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("minecraft:gold_nugget");
recipes.removeByRecipeName("minecraft:gold_ingot_from_nuggets");
MetalPress.addRecipe(<ore:ingotGold>.firstItem, <ore:nuggetGold>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetGold>.firstItem * 9, <ore:ingotGold>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/copper_ingot_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/copper_ingot");
MetalPress.addRecipe(<ore:ingotCopper>.firstItem, <ore:nuggetCopper>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetCopper>.firstItem * 9, <ore:ingotCopper>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/aluminum_ingot_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/aluminum_ingot");
MetalPress.addRecipe(<ore:ingotAluminum>.firstItem, <ore:nuggetAluminum>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetAluminum>.firstItem * 9, <ore:ingotAluminum>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/lead_ingot_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/lead_ingot");
MetalPress.addRecipe(<ore:ingotLead>.firstItem, <ore:nuggetLead>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetLead>.firstItem * 9, <ore:ingotLead>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/silver_ingot_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/silver_ingot");
MetalPress.addRecipe(<ore:ingotSilver>.firstItem, <ore:nuggetSilver>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetSilver>.firstItem * 9, <ore:ingotSilver>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/nickel_ingot_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/nickel_ingot");
MetalPress.addRecipe(<ore:ingotNickel>.firstItem, <ore:nuggetNickel>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetNickel>.firstItem * 9, <ore:ingotNickel>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/uranium_ingot_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/uranium_ingot");
MetalPress.addRecipe(<ore:ingotUranium>.firstItem, <ore:nuggetUranium>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetUranium>.firstItem * 9, <ore:ingotUranium>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/constantan_ingot_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/constantan_ingot");
MetalPress.addRecipe(<ore:ingotConstantan>.firstItem, <ore:nuggetConstantan>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetConstantan>.firstItem * 9, <ore:ingotConstantan>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/electrum_ingot_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/electrum_ingot");
MetalPress.addRecipe(<ore:ingotElectrum>.firstItem, <ore:nuggetElectrum>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetElectrum>.firstItem * 9, <ore:ingotElectrum>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/steel_ingot_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/steel_ingot");
MetalPress.addRecipe(<ore:ingotSteel>.firstItem, <ore:nuggetSteel>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetSteel>.firstItem * 9, <ore:ingotSteel>, <immersiveengineering:mold:7>, 2048);
recipes.addShapeless("custom/ie_iron_nugget", <immersiveengineering:metal:29>, [
    <minecraft:iron_nugget>
]);
recipes.addShapeless("custom/mc_iron_nugget", <minecraft:iron_nugget>, [
    <immersiveengineering:metal:29>
]);

TableCrafting.addShaped(3, <ore:ingotIron>.firstItem, [
    [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>],
    [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>],
    [<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>]
]);
TableCrafting.addShapeless(3, <ore:nuggetIron>.firstItem * 9, [<ore:ingotIron>]);
TableCrafting.addShaped(3, <ore:ingotGold>.firstItem, [
    [<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>],
    [<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>],
    [<ore:nuggetGold>, <ore:nuggetGold>, <ore:nuggetGold>]
]);
TableCrafting.addShapeless(3, <ore:nuggetGold>.firstItem * 9, [<ore:ingotGold>]);
TableCrafting.addShaped(3, <ore:ingotCopper>.firstItem, [
    [<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>],
    [<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>],
    [<ore:nuggetCopper>, <ore:nuggetCopper>, <ore:nuggetCopper>]
]);
TableCrafting.addShapeless(3, <ore:nuggetCopper>.firstItem * 9, [<ore:ingotCopper>]);
TableCrafting.addShaped(3, <ore:ingotAluminum>.firstItem, [
    [<ore:nuggetAluminum>, <ore:nuggetAluminum>, <ore:nuggetAluminum>],
    [<ore:nuggetAluminum>, <ore:nuggetAluminum>, <ore:nuggetAluminum>],
    [<ore:nuggetAluminum>, <ore:nuggetAluminum>, <ore:nuggetAluminum>]
]);
TableCrafting.addShapeless(3, <ore:nuggetAluminum>.firstItem * 9, [<ore:ingotAluminum>]);
TableCrafting.addShaped(3, <ore:ingotLead>.firstItem, [
    [<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>],
    [<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>],
    [<ore:nuggetLead>, <ore:nuggetLead>, <ore:nuggetLead>]
]);
TableCrafting.addShapeless(3, <ore:nuggetLead>.firstItem * 9, [<ore:ingotLead>]);
TableCrafting.addShaped(3, <ore:ingotSilver>.firstItem, [
    [<ore:nuggetSilver>, <ore:nuggetSilver>, <ore:nuggetSilver>],
    [<ore:nuggetSilver>, <ore:nuggetSilver>, <ore:nuggetSilver>],
    [<ore:nuggetSilver>, <ore:nuggetSilver>, <ore:nuggetSilver>]
]);
TableCrafting.addShapeless(3, <ore:nuggetSilver>.firstItem * 9, [<ore:ingotSilver>]);
TableCrafting.addShaped(3, <ore:ingotNickel>.firstItem, [
    [<ore:nuggetNickel>, <ore:nuggetNickel>, <ore:nuggetNickel>],
    [<ore:nuggetNickel>, <ore:nuggetNickel>, <ore:nuggetNickel>],
    [<ore:nuggetNickel>, <ore:nuggetNickel>, <ore:nuggetNickel>]
]);
TableCrafting.addShapeless(3, <ore:nuggetNickel>.firstItem * 9, [<ore:ingotNickel>]);
TableCrafting.addShaped(3, <ore:ingotUranium>.firstItem, [
    [<ore:nuggetUranium>, <ore:nuggetUranium>, <ore:nuggetUranium>],
    [<ore:nuggetUranium>, <ore:nuggetUranium>, <ore:nuggetUranium>],
    [<ore:nuggetUranium>, <ore:nuggetUranium>, <ore:nuggetUranium>]
]);
TableCrafting.addShapeless(3, <ore:nuggetUranium>.firstItem * 9, [<ore:ingotUranium>]);
TableCrafting.addShaped(3, <ore:ingotConstantan>.firstItem, [
    [<ore:nuggetConstantan>, <ore:nuggetConstantan>, <ore:nuggetConstantan>],
    [<ore:nuggetConstantan>, <ore:nuggetConstantan>, <ore:nuggetConstantan>],
    [<ore:nuggetConstantan>, <ore:nuggetConstantan>, <ore:nuggetConstantan>]
]);
TableCrafting.addShapeless(3, <ore:nuggetConstantan>.firstItem * 9, [<ore:ingotConstantan>]);
TableCrafting.addShaped(3, <ore:ingotElectrum>.firstItem, [
    [<ore:nuggetElectrum>, <ore:nuggetElectrum>, <ore:nuggetElectrum>],
    [<ore:nuggetElectrum>, <ore:nuggetElectrum>, <ore:nuggetElectrum>],
    [<ore:nuggetElectrum>, <ore:nuggetElectrum>, <ore:nuggetElectrum>]
]);
TableCrafting.addShapeless(3, <ore:nuggetElectrum>.firstItem * 9, [<ore:ingotElectrum>]);
TableCrafting.addShaped(3, <ore:ingotSteel>.firstItem, [
    [<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>],
    [<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>],
    [<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>]
]);
TableCrafting.addShapeless(3, <ore:nuggetSteel>.firstItem * 9, [<ore:ingotSteel>]);

# Blocks
recipes.removeByRecipeName("minecraft:iron_block");
recipes.removeByRecipeName("minecraft:iron_ingot_from_block");
recipes.removeByRecipeName("minecraft:gold_block");
recipes.removeByRecipeName("minecraft:gold_ingot_from_block");
MetalPress.addRecipe(<ore:blockIron>.firstItem, <ore:ingotIron>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotIron>.firstItem * 9, <ore:blockIron>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockGold>.firstItem, <ore:ingotGold>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotGold>.firstItem * 9, <ore:blockGold>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/copper_block_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/copper_block");
MetalPress.addRecipe(<ore:blockCopper>.firstItem, <ore:ingotCopper>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotCopper>.firstItem * 9, <ore:blockCopper>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/aluminum_block_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/aluminum_block");
MetalPress.addRecipe(<ore:blockAluminum>.firstItem, <ore:ingotAluminum>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotAluminum>.firstItem * 9, <ore:blockAluminum>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/lead_block_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/lead_block");
MetalPress.addRecipe(<ore:blockLead>.firstItem, <ore:ingotLead>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotLead>.firstItem * 9, <ore:blockLead>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/silver_block_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/silver_block");
MetalPress.addRecipe(<ore:blockSilver>.firstItem, <ore:ingotSilver>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotSilver>.firstItem * 9, <ore:blockSilver>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/nickel_block_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/nickel_block");
MetalPress.addRecipe(<ore:blockNickel>.firstItem, <ore:ingotNickel>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotNickel>.firstItem * 9, <ore:blockNickel>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/uranium_block_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/uranium_block");
MetalPress.addRecipe(<ore:blockUranium>.firstItem, <ore:ingotUranium>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotUranium>.firstItem * 9, <ore:blockUranium>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/constantan_block_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/constantan_block");
MetalPress.addRecipe(<ore:blockConstantan>.firstItem, <ore:ingotConstantan>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotConstantan>.firstItem * 9, <ore:blockConstantan>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/electrum_block_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/electrum_block");
MetalPress.addRecipe(<ore:blockElectrum>.firstItem, <ore:ingotElectrum>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotElectrum>.firstItem * 9, <ore:blockElectrum>, <immersiveengineering:mold:7>, 2048);
recipes.removeByRecipeName("immersiveengineering:metal_storage/steel_block_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/steel_block");
MetalPress.addRecipe(<ore:blockSteel>.firstItem, <ore:ingotSteel>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotSteel>.firstItem * 9, <ore:blockSteel>, <immersiveengineering:mold:7>, 2048);

TableCrafting.addShaped(3, <ore:blockIron>.firstItem, [
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);
TableCrafting.addShapeless(3, <ore:ingotIron>.firstItem * 9, [<ore:blockIron>]);
TableCrafting.addShaped(3, <ore:blockGold>.firstItem, [
    [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],
    [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],
    [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]
]);
TableCrafting.addShapeless(3, <ore:ingotGold>.firstItem * 9, [<ore:blockGold>]);
TableCrafting.addShaped(3, <ore:blockCopper>.firstItem, [
    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]
]);
TableCrafting.addShapeless(3, <ore:ingotCopper>.firstItem * 9, [<ore:blockCopper>]);
TableCrafting.addShaped(3, <ore:blockAluminum>.firstItem, [
    [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],
    [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],
    [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]
]);
TableCrafting.addShapeless(3, <ore:ingotAluminum>.firstItem * 9, [<ore:blockAluminum>]);
TableCrafting.addShaped(3, <ore:blockLead>.firstItem, [
    [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>],
    [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>],
    [<ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>]
]);
TableCrafting.addShapeless(3, <ore:ingotLead>.firstItem * 9, [<ore:blockLead>]);
TableCrafting.addShaped(3, <ore:blockSilver>.firstItem, [
    [<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>],
    [<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>],
    [<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>]
]);
TableCrafting.addShapeless(3, <ore:ingotSilver>.firstItem * 9, [<ore:blockSilver>]);
TableCrafting.addShaped(3, <ore:blockNickel>.firstItem, [
    [<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>],
    [<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>],
    [<ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>]
]);
TableCrafting.addShapeless(3, <ore:ingotNickel>.firstItem * 9, [<ore:blockNickel>]);
TableCrafting.addShaped(3, <ore:blockUranium>.firstItem, [
    [<ore:ingotUranium>, <ore:ingotUranium>, <ore:ingotUranium>],
    [<ore:ingotUranium>, <ore:ingotUranium>, <ore:ingotUranium>],
    [<ore:ingotUranium>, <ore:ingotUranium>, <ore:ingotUranium>]
]);
TableCrafting.addShapeless(3, <ore:ingotUranium>.firstItem * 9, [<ore:blockUranium>]);
TableCrafting.addShaped(3, <ore:blockConstantan>.firstItem, [
    [<ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>],
    [<ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>],
    [<ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>]
]);
TableCrafting.addShapeless(3, <ore:ingotConstantan>.firstItem * 9, [<ore:blockConstantan>]);
TableCrafting.addShaped(3, <ore:blockElectrum>.firstItem, [
    [<ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>],
    [<ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>],
    [<ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>]
]);
TableCrafting.addShapeless(3, <ore:ingotElectrum>.firstItem * 9, [<ore:blockElectrum>]);
TableCrafting.addShaped(3, <ore:blockSteel>.firstItem, [
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
]);
TableCrafting.addShapeless(3, <ore:ingotSteel>.firstItem * 9, [<ore:blockSteel>]);

# EnderIO Nuggets and Blocks
val enderioMetals = [
    "electrical_steel",
    "energetic_alloy",
    "vibrant_alloy",
    "redstone_alloy",
    "conductive_iron",
    "pulsating_iron",
    "dark_steel",
    "soularium",
    "end_steel",
    "construction_alloy",
    "crude_steel",
    "crystalline_alloy",
    "melodic_alloy",
    "stellar_alloy",
    "crystalline_pink_slime",
    "energetic_silver",
    "vivid_alloy"
] as string[];
for m in enderioMetals {
    recipes.removeByRecipeName("enderio:auto_" ~ m ~ "_1_ingot_to_9_nuggets");
    recipes.removeByRecipeName("enderio:auto_" ~ m ~ "_9_nuggets_to_1_ingot");
    recipes.removeByRecipeName("enderio:auto_" ~ m ~ "_9_ingots_to_1_block");
    recipes.removeByRecipeName("enderio:auto_" ~ m ~ "_1_block_to_9_ingots");
}

MetalPress.addRecipe(<ore:ingotElectricalSteel>.firstItem, <ore:nuggetElectricalSteel>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetElectricalSteel>.firstItem * 9, <ore:ingotElectricalSteel>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:ingotEnergeticAlloy>.firstItem, <ore:nuggetEnergeticAlloy>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetEnergeticAlloy>.firstItem * 9, <ore:ingotEnergeticAlloy>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:ingotVibrantAlloy>.firstItem, <ore:nuggetVibrantAlloy>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetVibrantAlloy>.firstItem * 9, <ore:ingotVibrantAlloy>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:ingotPulsatingIron>.firstItem, <ore:nuggetPulsatingIron>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetPulsatingIron>.firstItem * 9, <ore:ingotPulsatingIron>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:ingotDarkSteel>.firstItem, <ore:nuggetDarkSteel>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetDarkSteel>.firstItem * 9, <ore:ingotDarkSteel>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:ingotEndSteel>.firstItem, <ore:nuggetEndSteel>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetEndSteel>.firstItem * 9, <ore:ingotEndSteel>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:ingotSoularium>.firstItem, <ore:nuggetSoularium>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetSoularium>.firstItem * 9, <ore:ingotSoularium>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:ingotStellarAlloy>.firstItem, <ore:nuggetStellarAlloy>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:nuggetStellarAlloy>.firstItem * 9, <ore:ingotStellarAlloy>, <immersiveengineering:mold:7>, 2048);

TableCrafting.addShaped(3, <ore:ingotElectricalSteel>.firstItem, [
    [<ore:nuggetElectricalSteel>, <ore:nuggetElectricalSteel>, <ore:nuggetElectricalSteel>],
    [<ore:nuggetElectricalSteel>, <ore:nuggetElectricalSteel>, <ore:nuggetElectricalSteel>],
    [<ore:nuggetElectricalSteel>, <ore:nuggetElectricalSteel>, <ore:nuggetElectricalSteel>]
]);
TableCrafting.addShapeless(3, <ore:nuggetElectricalSteel>.firstItem * 9, [<ore:ingotElectricalSteel>]);
TableCrafting.addShaped(3, <ore:ingotEnergeticAlloy>.firstItem, [
    [<ore:nuggetEnergeticAlloy>, <ore:nuggetEnergeticAlloy>, <ore:nuggetEnergeticAlloy>],
    [<ore:nuggetEnergeticAlloy>, <ore:nuggetEnergeticAlloy>, <ore:nuggetEnergeticAlloy>],
    [<ore:nuggetEnergeticAlloy>, <ore:nuggetEnergeticAlloy>, <ore:nuggetEnergeticAlloy>]
]);
TableCrafting.addShapeless(3, <ore:nuggetEnergeticAlloy>.firstItem * 9, [<ore:ingotEnergeticAlloy>]);
TableCrafting.addShaped(3, <ore:ingotVibrantAlloy>.firstItem, [
    [<ore:nuggetVibrantAlloy>, <ore:nuggetVibrantAlloy>, <ore:nuggetVibrantAlloy>],
    [<ore:nuggetVibrantAlloy>, <ore:nuggetVibrantAlloy>, <ore:nuggetVibrantAlloy>],
    [<ore:nuggetVibrantAlloy>, <ore:nuggetVibrantAlloy>, <ore:nuggetVibrantAlloy>]
]);
TableCrafting.addShapeless(3, <ore:nuggetVibrantAlloy>.firstItem * 9, [<ore:ingotVibrantAlloy>]);
TableCrafting.addShaped(3, <ore:ingotPulsatingIron>.firstItem, [
    [<ore:nuggetPulsatingIron>, <ore:nuggetPulsatingIron>, <ore:nuggetPulsatingIron>],
    [<ore:nuggetPulsatingIron>, <ore:nuggetPulsatingIron>, <ore:nuggetPulsatingIron>],
    [<ore:nuggetPulsatingIron>, <ore:nuggetPulsatingIron>, <ore:nuggetPulsatingIron>]
]);
TableCrafting.addShapeless(3, <ore:nuggetPulsatingIron>.firstItem * 9, [<ore:ingotPulsatingIron>]);
TableCrafting.addShaped(3, <ore:ingotDarkSteel>.firstItem, [
    [<ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>],
    [<ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>],
    [<ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>]
]);
TableCrafting.addShapeless(3, <ore:nuggetDarkSteel>.firstItem * 9, [<ore:ingotDarkSteel>]);
TableCrafting.addShaped(3, <ore:ingotSoularium>.firstItem, [
    [<ore:nuggetSoularium>, <ore:nuggetSoularium>, <ore:nuggetSoularium>],
    [<ore:nuggetSoularium>, <ore:nuggetSoularium>, <ore:nuggetSoularium>],
    [<ore:nuggetSoularium>, <ore:nuggetSoularium>, <ore:nuggetSoularium>]
]);
TableCrafting.addShapeless(3, <ore:nuggetSoularium>.firstItem * 9, [<ore:ingotSoularium>]);
TableCrafting.addShaped(3, <ore:ingotEndSteel>.firstItem, [
    [<ore:nuggetEndSteel>, <ore:nuggetEndSteel>, <ore:nuggetEndSteel>],
    [<ore:nuggetEndSteel>, <ore:nuggetEndSteel>, <ore:nuggetEndSteel>],
    [<ore:nuggetEndSteel>, <ore:nuggetEndSteel>, <ore:nuggetEndSteel>]
]);
TableCrafting.addShapeless(3, <ore:nuggetEndSteel>.firstItem * 9, [<ore:ingotEndSteel>]);
TableCrafting.addShaped(3, <ore:ingotStellarAlloy>.firstItem, [
    [<ore:nuggetStellarAlloy>, <ore:nuggetStellarAlloy>, <ore:nuggetStellarAlloy>],
    [<ore:nuggetStellarAlloy>, <ore:nuggetStellarAlloy>, <ore:nuggetStellarAlloy>],
    [<ore:nuggetStellarAlloy>, <ore:nuggetStellarAlloy>, <ore:nuggetStellarAlloy>]
]);
TableCrafting.addShapeless(3, <ore:nuggetStellarAlloy>.firstItem * 9, [<ore:ingotStellarAlloy>]);

MetalPress.addRecipe(<ore:blockElectricalSteel>.firstItem, <ore:ingotElectricalSteel>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotElectricalSteel>.firstItem * 9, <ore:blockElectricalSteel>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockEnergeticAlloy>.firstItem, <ore:ingotEnergeticAlloy>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotEnergeticAlloy>.firstItem * 9, <ore:blockEnergeticAlloy>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockVibrantAlloy>.firstItem, <ore:ingotVibrantAlloy>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotVibrantAlloy>.firstItem * 9, <ore:blockVibrantAlloy>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockPulsatingIron>.firstItem, <ore:ingotPulsatingIron>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotPulsatingIron>.firstItem * 9, <ore:blockPulsatingIron>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockDarkSteel>.firstItem, <ore:ingotDarkSteel>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotDarkSteel>.firstItem * 9, <ore:blockDarkSteel>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockRedstoneAlloy>.firstItem, <ore:ingotRedstoneAlloy>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotRedstoneAlloy>.firstItem * 9, <ore:blockRedstoneAlloy>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockConductiveIron>.firstItem, <ore:ingotConductiveIron>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotConductiveIron>.firstItem * 9, <ore:blockConductiveIron>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockSoularium>.firstItem, <ore:ingotSoularium>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotSoularium>.firstItem * 9, <ore:blockSoularium>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockEndSteel>.firstItem, <ore:ingotEndSteel>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotEndSteel>.firstItem * 9, <ore:blockEndSteel>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockConstructionAlloy>.firstItem, <ore:ingotConstructionAlloy>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotConstructionAlloy>.firstItem * 9, <ore:blockConstructionAlloy>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockCrudeSteel>.firstItem, <ore:ingotCrudeSteel>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotCrudeSteel>.firstItem * 9, <ore:blockCrudeSteel>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockCrystallineAlloy>.firstItem, <ore:ingotCrystallineAlloy>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotCrystallineAlloy>.firstItem * 9, <ore:blockCrystallineAlloy>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockMelodicAlloy>.firstItem, <ore:ingotMelodicAlloy>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotMelodicAlloy>.firstItem * 9, <ore:blockMelodicAlloy>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockStellarAlloy>.firstItem, <ore:ingotStellarAlloy>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotStellarAlloy>.firstItem * 9, <ore:blockStellarAlloy>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockCrystallinePinkSlime>.firstItem, <ore:ingotCrystallinePinkSlime>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotCrystallinePinkSlime>.firstItem * 9, <ore:blockCrystallinePinkSlime>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockEnergeticSilver>.firstItem, <ore:ingotEnergeticSilver>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotEnergeticSilver>.firstItem * 9, <ore:blockEnergeticSilver>, <immersiveengineering:mold:7>, 2048);
MetalPress.addRecipe(<ore:blockVividAlloy>.firstItem, <ore:ingotVividAlloy>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:ingotVividAlloy>.firstItem * 9, <ore:blockVividAlloy>, <immersiveengineering:mold:7>, 2048);

TableCrafting.addShaped(3, <ore:blockElectricalSteel>.firstItem, [
    [<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>],
    [<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>],
    [<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>]
]);
TableCrafting.addShapeless(3, <ore:ingotElectricalSteel>.firstItem * 9, [<ore:blockElectricalSteel>]);
TableCrafting.addShaped(3, <ore:blockEnergeticAlloy>.firstItem, [
    [<ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>],
    [<ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>],
    [<ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>]
]);
TableCrafting.addShapeless(3, <ore:ingotEnergeticAlloy>.firstItem * 9, [<ore:blockEnergeticAlloy>]);
TableCrafting.addShaped(3, <ore:blockVibrantAlloy>.firstItem, [
    [<ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>],
    [<ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>],
    [<ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>]
]);
TableCrafting.addShapeless(3, <ore:ingotVibrantAlloy>.firstItem * 9, [<ore:blockVibrantAlloy>]);
TableCrafting.addShaped(3, <ore:blockPulsatingIron>.firstItem, [
    [<ore:ingotPulsatingIron>, <ore:ingotPulsatingIron>, <ore:ingotPulsatingIron>],
    [<ore:ingotPulsatingIron>, <ore:ingotPulsatingIron>, <ore:ingotPulsatingIron>],
    [<ore:ingotPulsatingIron>, <ore:ingotPulsatingIron>, <ore:ingotPulsatingIron>]
]);
TableCrafting.addShapeless(3, <ore:ingotPulsatingIron>.firstItem * 9, [<ore:blockPulsatingIron>]);
TableCrafting.addShaped(3, <ore:blockDarkSteel>.firstItem, [
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>]
]);
TableCrafting.addShapeless(3, <ore:ingotDarkSteel>.firstItem * 9, [<ore:blockDarkSteel>]);
TableCrafting.addShaped(3, <ore:blockConductiveIron>.firstItem, [
    [<ore:ingotConductiveIron>, <ore:ingotConductiveIron>, <ore:ingotConductiveIron>],
    [<ore:ingotConductiveIron>, <ore:ingotConductiveIron>, <ore:ingotConductiveIron>],
    [<ore:ingotConductiveIron>, <ore:ingotConductiveIron>, <ore:ingotConductiveIron>]
]);
TableCrafting.addShapeless(3, <ore:ingotConductiveIron>.firstItem * 9, [<ore:blockConductiveIron>]);
TableCrafting.addShaped(3, <ore:blockSoularium>.firstItem, [
    [<ore:ingotSoularium>, <ore:ingotSoularium>, <ore:ingotSoularium>],
    [<ore:ingotSoularium>, <ore:ingotSoularium>, <ore:ingotSoularium>],
    [<ore:ingotSoularium>, <ore:ingotSoularium>, <ore:ingotSoularium>]
]);
TableCrafting.addShapeless(3, <ore:ingotSoularium>.firstItem * 9, [<ore:blockSoularium>]);
TableCrafting.addShaped(3, <ore:blockConstructionAlloy>.firstItem, [
    [<ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>],
    [<ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>, <ore:ingotConstructionAlloy>]
]);
TableCrafting.addShapeless(3, <ore:ingotConstructionAlloy>.firstItem * 9, [<ore:blockConstructionAlloy>]);
TableCrafting.addShaped(3, <ore:blockCrudeSteel>.firstItem, [
    [<ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>],
    [<ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>],
    [<ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>]
]);
TableCrafting.addShapeless(3, <ore:ingotCrudeSteel>.firstItem * 9, [<ore:blockCrudeSteel>]);
TableCrafting.addShaped(3, <ore:blockEndSteel>.firstItem, [
    [<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>],
    [<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>],
    [<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>]
]);
TableCrafting.addShapeless(3, <ore:ingotEndSteel>.firstItem * 9, [<ore:blockEndSteel>]);
TableCrafting.addShaped(3, <ore:blockCrystallineAlloy>.firstItem, [
    [<ore:ingotCrystallineAlloy>, <ore:ingotCrystallineAlloy>, <ore:ingotCrystallineAlloy>],
    [<ore:ingotCrystallineAlloy>, <ore:ingotCrystallineAlloy>, <ore:ingotCrystallineAlloy>],
    [<ore:ingotCrystallineAlloy>, <ore:ingotCrystallineAlloy>, <ore:ingotCrystallineAlloy>]
]);
TableCrafting.addShapeless(3, <ore:ingotCrystallineAlloy>.firstItem * 9, [<ore:blockCrystallineAlloy>]);
TableCrafting.addShaped(3, <ore:blockMelodicAlloy>.firstItem, [
    [<ore:ingotMelodicAlloy>, <ore:ingotMelodicAlloy>, <ore:ingotMelodicAlloy>],
    [<ore:ingotMelodicAlloy>, <ore:ingotMelodicAlloy>, <ore:ingotMelodicAlloy>],
    [<ore:ingotMelodicAlloy>, <ore:ingotMelodicAlloy>, <ore:ingotMelodicAlloy>]
]);
TableCrafting.addShapeless(3, <ore:ingotMelodicAlloy>.firstItem * 9, [<ore:blockMelodicAlloy>]);
TableCrafting.addShaped(3, <ore:blockStellarAlloy>.firstItem, [
    [<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>],
    [<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>],
    [<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>]
]);
TableCrafting.addShapeless(3, <ore:ingotStellarAlloy>.firstItem * 9, [<ore:blockStellarAlloy>]);

# Rods
recipes.removeByRecipeName("immersiveengineering:material/stick_iron");
recipes.addShaped("custom/iron_rod", <immersiveengineering:material:1> * 2, [
    [<ore:ingotIron>],
    [<ore:ingotIron>]
]);
recipes.removeByRecipeName("immersiveengineering:material/stick_steel");
recipes.addShaped("custom/steel_rod", <immersiveengineering:material:2> * 2, [
    [<ore:ingotSteel>],
    [<ore:ingotSteel>]
]);
recipes.removeByRecipeName("immersiveengineering:material/stick_aluminum");
recipes.addShaped("custom/aluminum_rod", <immersiveengineering:material:3> * 2, [
    [<ore:ingotAluminum>],
    [<ore:ingotAluminum>]
]);
recipes.removeByRecipeName("immersiveposts:metal_rods/stick_gold");
recipes.addShaped("custom/gold_rod", <immersiveposts:metal_rods:0> * 2, [
    [<ore:ingotGold>],
    [<ore:ingotGold>]
]);
recipes.removeByRecipeName("immersiveposts:metal_rods/stick_copper");
recipes.addShaped("custom/copper_rod", <immersiveposts:metal_rods:1> * 2, [
    [<ore:ingotCopper>],
    [<ore:ingotCopper>]
]);
recipes.removeByRecipeName("immersiveposts:metal_rods/stick_lead");
recipes.addShaped("custom/lead_rod", <immersiveposts:metal_rods:2> * 2, [
    [<ore:ingotLead>],
    [<ore:ingotLead>]
]);
recipes.removeByRecipeName("immersiveposts:metal_rods/stick_silver");
recipes.addShaped("custom/silver_rod", <immersiveposts:metal_rods:3> * 2, [
    [<ore:ingotSilver>],
    [<ore:ingotSilver>]
]);
recipes.removeByRecipeName("immersiveposts:metal_rods/stick_nickel");
recipes.addShaped("custom/nickel_rod", <immersiveposts:metal_rods:4> * 2, [
    [<ore:ingotNickel>],
    [<ore:ingotNickel>]
]);
recipes.removeByRecipeName("immersiveposts:metal_rods/stick_constantan");
recipes.addShaped("custom/constantan_rod", <immersiveposts:metal_rods:5> * 2, [
    [<ore:ingotConstantan>],
    [<ore:ingotConstantan>]
]);
recipes.removeByRecipeName("immersiveposts:metal_rods/stick_electrum");
recipes.addShaped("custom/electrum_rod", <immersiveposts:metal_rods:6> * 2, [
    [<ore:ingotElectrum>],
    [<ore:ingotElectrum>]
]);
recipes.removeByRecipeName("immersiveposts:metal_rods/stick_uranium");
recipes.addShaped("custom/uranium_rod", <immersiveposts:metal_rods:7> * 2, [
    [<ore:ingotUranium>],
    [<ore:ingotUranium>]
]);

TableCrafting.addShaped(3, <ore:stickIron>.firstItem, [
    [null, null, <ore:nuggetIron>],
    [null, <ore:nuggetIron>, null],
    [<ore:nuggetIron>, null, null]
]);
TableCrafting.addShaped(3, <ore:stickGold>.firstItem, [
    [null, null, <ore:nuggetGold>],
    [null, <ore:nuggetGold>, null],
    [<ore:nuggetGold>, null, null]
]);
TableCrafting.addShaped(3, <ore:stickCopper>.firstItem, [
    [null, null, <ore:nuggetCopper>],
    [null, <ore:nuggetCopper>, null],
    [<ore:nuggetCopper>, null, null]
]);
TableCrafting.addShaped(3, <ore:stickAluminum>.firstItem, [
    [null, null, <ore:nuggetAluminum>],
    [null, <ore:nuggetAluminum>, null],
    [<ore:nuggetAluminum>, null, null]
]);
TableCrafting.addShaped(3, <ore:stickLead>.firstItem, [
    [null, null, <ore:nuggetLead>],
    [null, <ore:nuggetLead>, null],
    [<ore:nuggetLead>, null, null]
]);
TableCrafting.addShaped(3, <ore:stickSilver>.firstItem, [
    [null, null, <ore:nuggetSilver>],
    [null, <ore:nuggetSilver>, null],
    [<ore:nuggetSilver>, null, null]
]);
TableCrafting.addShaped(3, <ore:stickNickel>.firstItem, [
    [null, null, <ore:nuggetNickel>],
    [null, <ore:nuggetNickel>, null],
    [<ore:nuggetNickel>, null, null]
]);
TableCrafting.addShaped(3, <ore:stickUranium>.firstItem, [
    [null, null, <ore:nuggetUranium>],
    [null, <ore:nuggetUranium>, null],
    [<ore:nuggetUranium>, null, null]
]);
TableCrafting.addShaped(3, <ore:stickConstantan>.firstItem, [
    [null, null, <ore:nuggetConstantan>],
    [null, <ore:nuggetConstantan>, null],
    [<ore:nuggetConstantan>, null, null]
]);
TableCrafting.addShaped(3, <ore:stickElectrum>.firstItem, [
    [null, null, <ore:nuggetElectrum>],
    [null, <ore:nuggetElectrum>, null],
    [<ore:nuggetElectrum>, null, null]
]);
TableCrafting.addShaped(3, <ore:stickSteel>.firstItem, [
    [null, null, <ore:nuggetSteel>],
    [null, <ore:nuggetSteel>, null],
    [<ore:nuggetSteel>, null, null]
]);

TableCrafting.addShapeless(3, <ore:nuggetIron>.firstItem * 3, [
    <ore:stickIron>
]);
TableCrafting.addShapeless(3, <ore:nuggetGold>.firstItem * 3, [
    <ore:stickGold>
]);
TableCrafting.addShapeless(3, <ore:nuggetCopper>.firstItem * 3, [
    <ore:stickCopper>
]);
TableCrafting.addShapeless(3, <ore:nuggetAluminum>.firstItem * 3, [
    <ore:stickAluminum>
]);
TableCrafting.addShapeless(3, <ore:nuggetLead>.firstItem * 3, [
    <ore:stickLead>
]);
TableCrafting.addShapeless(3, <ore:nuggetSilver>.firstItem * 3, [
    <ore:stickSilver>
]);
TableCrafting.addShapeless(3, <ore:nuggetNickel>.firstItem * 3, [
    <ore:stickNickel>
]);
TableCrafting.addShapeless(3, <ore:nuggetUranium>.firstItem * 3, [
    <ore:stickUranium>
]);
TableCrafting.addShapeless(3, <ore:nuggetConstantan>.firstItem * 3, [
    <ore:stickConstantan>
]);
TableCrafting.addShapeless(3, <ore:nuggetElectrum>.firstItem * 3, [
    <ore:stickElectrum>
]);
TableCrafting.addShapeless(3, <ore:nuggetSteel>.firstItem * 3, [
    <ore:stickSteel>
]);

# Plates
TableCrafting.addShaped(3, <ore:plateIron>.firstItem, [
    [<ore:nuggetIron>, <ore:nuggetIron>],
    [<ore:nuggetIron>, <ore:nuggetIron>]
]);
TableCrafting.addShaped(3, <ore:plateGold>.firstItem, [
    [<ore:nuggetGold>, <ore:nuggetGold>],
    [<ore:nuggetGold>, <ore:nuggetGold>]
]);
TableCrafting.addShaped(3, <ore:plateCopper>.firstItem, [
    [<ore:nuggetCopper>, <ore:nuggetCopper>],
    [<ore:nuggetCopper>, <ore:nuggetCopper>]
]);
TableCrafting.addShaped(3, <ore:plateAluminum>.firstItem, [
    [<ore:nuggetAluminum>, <ore:nuggetAluminum>],
    [<ore:nuggetAluminum>, <ore:nuggetAluminum>]
]);
TableCrafting.addShaped(3, <ore:plateLead>.firstItem, [
    [<ore:nuggetLead>, <ore:nuggetLead>],
    [<ore:nuggetLead>, <ore:nuggetLead>]
]);
TableCrafting.addShaped(3, <ore:plateSilver>.firstItem, [
    [<ore:nuggetSilver>, <ore:nuggetSilver>],
    [<ore:nuggetSilver>, <ore:nuggetSilver>]
]);
TableCrafting.addShaped(3, <ore:plateNickel>.firstItem, [
    [<ore:nuggetNickel>, <ore:nuggetNickel>],
    [<ore:nuggetNickel>, <ore:nuggetNickel>]
]);
TableCrafting.addShaped(3, <ore:plateUranium>.firstItem, [
    [<ore:nuggetUranium>, <ore:nuggetUranium>],
    [<ore:nuggetUranium>, <ore:nuggetUranium>]
]);
TableCrafting.addShaped(3, <ore:plateConstantan>.firstItem, [
    [<ore:nuggetConstantan>, <ore:nuggetConstantan>],
    [<ore:nuggetConstantan>, <ore:nuggetConstantan>]
]);
TableCrafting.addShaped(3, <ore:plateElectrum>.firstItem, [
    [<ore:nuggetElectrum>, <ore:nuggetElectrum>],
    [<ore:nuggetElectrum>, <ore:nuggetElectrum>]
]);
TableCrafting.addShaped(3, <ore:plateSteel>.firstItem, [
    [<ore:nuggetSteel>, <ore:nuggetSteel>],
    [<ore:nuggetSteel>, <ore:nuggetSteel>]
]);
TableCrafting.addShaped(3, <ore:plateDarkSteel>.firstItem, [
    [<ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>],
    [<ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>]
]);
TableCrafting.addShaped(3, <ore:plateEndSteel>.firstItem, [
    [<ore:nuggetEndSteel>, <ore:nuggetEndSteel>],
    [<ore:nuggetEndSteel>, <ore:nuggetEndSteel>]
]);
TableCrafting.addShaped(3, <ore:plateStellarAlloy>.firstItem, [
    [<ore:nuggetStellarAlloy>, <ore:nuggetStellarAlloy>],
    [<ore:nuggetStellarAlloy>, <ore:nuggetStellarAlloy>]
]);
TableCrafting.addShaped(3, <ore:plateSoularium>.firstItem, [
    [<ore:nuggetSoularium>, <ore:nuggetSoularium>],
    [<ore:nuggetSoularium>, <ore:nuggetSoularium>]
]);

TableCrafting.addShapeless(3, <ore:nuggetIron>.firstItem * 4, [
    <ore:plateIron>
]);
TableCrafting.addShapeless(3, <ore:nuggetGold>.firstItem * 4, [
    <ore:plateGold>
]);
TableCrafting.addShapeless(3, <ore:nuggetCopper>.firstItem * 4, [
    <ore:plateCopper>
]);
TableCrafting.addShapeless(3, <ore:nuggetAluminum>.firstItem * 4, [
    <ore:plateAluminum>
]);
TableCrafting.addShapeless(3, <ore:nuggetLead>.firstItem * 4, [
    <ore:plateLead>
]);
TableCrafting.addShapeless(3, <ore:nuggetSilver>.firstItem * 4, [
    <ore:plateSilver>
]);
TableCrafting.addShapeless(3, <ore:nuggetNickel>.firstItem * 4, [
    <ore:plateNickel>
]);
TableCrafting.addShapeless(3, <ore:nuggetUranium>.firstItem * 4, [
    <ore:plateUranium>
]);
TableCrafting.addShapeless(3, <ore:nuggetConstantan>.firstItem * 4, [
    <ore:plateConstantan>
]);
TableCrafting.addShapeless(3, <ore:nuggetElectrum>.firstItem * 4, [
    <ore:plateElectrum>
]);
TableCrafting.addShapeless(3, <ore:nuggetSteel>.firstItem * 4, [
    <ore:plateSteel>
]);
TableCrafting.addShapeless(3, <ore:nuggetDarkSteel>.firstItem * 4, [
    <ore:plateDarkSteel>
]);
TableCrafting.addShapeless(3, <ore:nuggetEndSteel>.firstItem * 4, [
    <ore:plateEndSteel>
]);
TableCrafting.addShapeless(3, <ore:nuggetStellarAlloy>.firstItem * 4, [
    <ore:plateStellarAlloy>
]);
TableCrafting.addShapeless(3, <ore:nuggetSoularium>.firstItem * 4, [
    <ore:plateSoularium>
]);

# Alloys (Constantan & Electrum)
recipes.removeByRecipeName("immersiveengineering:material/dust_constantan");
AlloySmelter.removeRecipe(<immersiveengineering:metal:6>);
AlloySmelter.addRecipe(<immersiveengineering:metal:6>, <ore:dustCopper>, <ore:dustNickel>, 100);

recipes.removeByRecipeName("immersiveengineering:material/dust_electrum");
AlloySmelter.removeRecipe(<immersiveengineering:metal:7>);
AlloySmelter.addRecipe(<immersiveengineering:metal:7>, <ore:dustSilver>, <ore:dustGold>, 120);

# Carbonado
recipes.removeByRecipeName("carbonado:carbonado_block");
recipes.removeByRecipeName("carbonado:carbonado");
MetalPress.addRecipe(<ore:blockCarbonado>.firstItem, <ore:gemCarbonado>, <immersiveengineering:mold:6>, 2048, 9);
MetalPress.addRecipe(<ore:gemCarbonado>.firstItem * 9, <ore:blockCarbonado>, <immersiveengineering:mold:7>, 2048);

# Ender Biotite
MetalPress.addRecipe(<ore:blockEnderBiotite>.firstItem, <ore:gemEnderBiotite>, <immersiveengineering:mold:5>, 2048, 4);
MetalPress.addRecipe(<ore:gemEnderBiotite>.firstItem * 4, <ore:blockEnderBiotite>, <immersiveengineering:mold:7>, 2048);

# Crude Steel Tools
recipes.addShaped("custom/crude_steel_sword", <immersiveengineering:sword_steel>.withDamage(576), [
    [<ore:ingotCrudeSteel>],
    [<ore:ingotCrudeSteel>],
    [<ore:stickTreatedWood>]
]);
recipes.addShaped("custom/crude_steel_shovel", <immersiveengineering:shovel_steel>.withDamage(576), [
    [<ore:ingotCrudeSteel>],
    [<ore:stickTreatedWood>],
    [<ore:stickTreatedWood>]
]);
recipes.addShaped("custom/crude_steel_axe", <immersiveengineering:axe_steel>.withDamage(576), [
    [<ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>],
    [<ore:ingotCrudeSteel>, <ore:stickTreatedWood>],
    [null, <ore:stickTreatedWood>]
]);
recipes.addShaped("custom/crude_steel_pickaxe", <immersiveengineering:pickaxe_steel>.withDamage(576), [
    [<ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>],
    [null, <ore:stickTreatedWood>, null],
    [null, <ore:stickTreatedWood>, null]
]);

recipes.addShaped("custom/crude_steel_boots", <immersiveengineering:steel_armor_feet>.withDamage(245), [
    [<ore:ingotCrudeSteel>, null, <ore:ingotCrudeSteel>],
    [<ore:ingotCrudeSteel>, null, <ore:ingotCrudeSteel>]
]);
recipes.addShaped("custom/crude_steel_leggings", <immersiveengineering:steel_armor_legs>.withDamage(283), [
    [<ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>],
    [<ore:ingotCrudeSteel>, null, <ore:ingotCrudeSteel>],
    [<ore:ingotCrudeSteel>, null, <ore:ingotCrudeSteel>]
]);
recipes.addShaped("custom/crude_steel_helmet", <immersiveengineering:steel_armor_head>.withDamage(207), [
    [<ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>],
    [<ore:ingotCrudeSteel>, null, <ore:ingotCrudeSteel>]
]);
recipes.addShaped("custom/crude_steel_chestplate", <immersiveengineering:steel_armor_chest>.withDamage(302), [
    [<ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>],
    [<ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>, <ore:ingotCrudeSteel>],
    [<ore:ingotCrudeSteel>, null, <ore:ingotCrudeSteel>]
]);