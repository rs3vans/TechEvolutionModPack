import mods.jei.JEI;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Blueprint;
import mods.extendedcrafting.TableCrafting;
import mods.extendedcrafting.CombinationCrafting;

JEI.removeAndHide(<vc:airship_workbench>);
JEI.removeAndHide(<vc:symbols/item_display_symbol>);
JEI.removeAndHide(<vc:achievements/achievement_airship_portal>);


# Airship parts

recipes.removeByRecipeName("vc:item_airship_balloon");
TableCrafting.addShaped(<vc:item_airship_balloon>, [
    [<immersiveengineering:wirecoil:3>, <ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>, <immersiveengineering:wirecoil:3>],
    [<ore:fabricHemp>, <immersiveengineering:wirecoil:3>, <ore:fabricHemp>, <immersiveengineering:wirecoil:3>, <ore:fabricHemp>],
    [<ore:fabricHemp>, <ore:fabricHemp>, <immersiveengineering:wirecoil:3>, <ore:fabricHemp>, <ore:fabricHemp>],
    [<ore:fabricHemp>, <immersiveengineering:wirecoil:3>, <ore:fabricHemp>, <immersiveengineering:wirecoil:3>, <ore:fabricHemp>],
    [<immersiveengineering:wirecoil:3>, <ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>, <immersiveengineering:wirecoil:3>]
]);

recipes.removeByRecipeName("vc:item_airship_frame");
TableCrafting.addShaped(<vc:item_airship_frame>, [
    [<ore:plateSteel>, <vc:item_logic_chip>, <minecraft:minecart>, <vc:item_logic_chip>, <ore:plateSteel>],
    [<ore:plateSteel>, <vc:item_logic_chip>, <vc:item_logic_chip>, <vc:item_logic_chip>, <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
]);

recipes.removeByRecipeName("vc:item_airship_engine");
TableCrafting.addShaped(<vc:item_airship_engine>, [
    [<ore:blockSteel>, <ore:plateSteel>, <ore:scaffoldingSteel>, <ore:plateSteel>, <ore:blockSteel>],
    [<ore:plateSteel>, <engineersdecor:panzerglass_block>, <vc:item_logic_chip>, <engineersdecor:panzerglass_block>, <ore:plateSteel>],
    [<ore:scaffoldingSteel>, <ore:stickUranium>, <ore:stickUranium>, <ore:stickUranium>, <ore:scaffoldingSteel>],
    [<ore:plateSteel>, <engineersdecor:panzerglass_block>, <vc:item_logic_chip>, <engineersdecor:panzerglass_block>, <ore:plateSteel>],
    [<ore:blockSteel>, <ore:plateSteel>, <ore:scaffoldingSteel>, <ore:plateSteel>, <ore:blockSteel>]
]);

recipes.removeByRecipeName("vc:item_airship_ignition");
TableCrafting.addShaped(<vc:item_airship_ignition>, [
	[null, null, <ore:blockSheetmetalAluminum>, <ore:blockSheetmetalAluminum>, null], 
	[null, <ore:blockSteel>, <immersiveengineering:metal_decoration0:6>, <immersiveengineering:metal_decoration0:6>, <ore:blockSteel>], 
	[<ore:blockSheetmetalSteel>, <immersiveengineering:metal_device1:1>, <vc:item_logic_chip>, <immersiveengineering:metal_decoration0:5>, <ore:plateSteel>], 
	[<ore:blockSheetmetalSteel>, <immersiveengineering:metal_device1:1>, <immersiveengineering:metal_decoration0:5>, <vc:item_logic_chip>, <ore:plateSteel>], 
	[null, <ore:blockSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:blockSteel>]
]);

recipes.removeByRecipeName("vc:airships/item_airship");
CombinationCrafting.addRecipe(<vc:airships/item_airship>, 4915200, 4096, <vc:item_airship_ignition>, [
    <vc:item_airship_balloon>, <vc:item_airship_engine>, <vc:item_airship_engine>, <vc:item_airship_frame>,
    <immersiveengineering:wirecoil:4>, <immersiveengineering:wirecoil:4>, <immersiveengineering:wirecoil:4>, <immersiveengineering:wirecoil:4>
]);


# Components

recipes.removeByRecipeName("vc:item_logic_chip");
Blueprint.addRecipe("Airship Components", <vc:item_logic_chip>,
        [<immersiveengineering:material:27>, <ore:nuggetSilver> * 3, <ore:dustRedstone>]);

recipes.removeByRecipeName("vc:modules/item_module_type_base");
Blueprint.addRecipe("Airship Components", <vc:modules/item_module_type>,
        [<immersiveengineering:material:27>, <ore:nuggetSilver> * 3, <ore:gemEmerald>]);

recipes.removeByRecipeName("vc:upgrades/item_upgrade_airship_balloon_tierbase");
Blueprint.addRecipe("Airship Components", <vc:upgrades/item_upgrade_airship_balloon>,
        [<vc:item_logic_chip>, <ore:nuggetElectrum>, <ore:fabricHemp>]);

recipes.removeByRecipeName("vc:upgrades/item_upgrade_airship_frame_tierbase");
Blueprint.addRecipe("Airship Components", <vc:upgrades/item_upgrade_airship_frame>,
        [<vc:item_logic_chip>, <ore:nuggetElectrum>, <ore:plateSteel>]);

recipes.removeByRecipeName("vc:upgrades/item_upgrade_airship_engine_tierbase");
Blueprint.addRecipe("Airship Components", <vc:upgrades/item_upgrade_airship_engine>,
        [<vc:item_logic_chip>, <ore:nuggetElectrum>, <minecraft:blaze_rod>]);

recipes.removeByRecipeName("vc:upgrades/item_upgrade_airship_core_tierbase");
Blueprint.addRecipe("Airship Components", <vc:upgrades/item_upgrade_airship_core>,
        [<vc:item_logic_chip>, <ore:nuggetElectrum>, <ore:ingotUranium>]);

val componentsBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "Airship Components"});
recipes.addShaped("custom/blueprint_vc_components", componentsBlueprint, [
    [<ore:plateSteel>, <ore:ingotUranium>, <ore:plateSteel>],
    [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
    [<ore:paper>, <ore:paper>, <ore:paper>]
]);

recipes.replaceAllOccurences(<ore:gemDiamond>, <ore:ingotDiamond>.firstItem, <*>.only(function(item) {
    return !isNull(item) & item.definition.owner == "vc";
}));


# Bombs

recipes.removeByRecipeName("vc:item_bomb_casing");
recipes.addShaped("custom/vc_bomb_casing", <vc:item_bomb:0>, [
    [<ore:plateSteel>, <vc:item_logic_chip>, <ore:plateSteel>],
    [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
]);

recipes.removeByRecipeName("vc:item_bomb_small");
Blueprint.addRecipe("Airship Bombs", <vc:item_bomb:1>,
        [<vc:item_bomb:0> * 2, <ore:dustRedstone>, <ore:ingotUranium>, <ore:gunpowder>]);

recipes.removeByRecipeName("vc:item_bomb_big");
Blueprint.addRecipe("Airship Bombs", <vc:item_bomb:2>,
        [<vc:item_bomb:0> * 3, <ore:dustRedstone>, <ore:blockUranium>, <ore:blaze_powder>]);

recipes.removeByRecipeName("vc:item_bomb_scatter");
Blueprint.addRecipe("Airship Bombs", <vc:item_bomb:3>,
        [<vc:item_bomb:0> * 4, <ore:dustRedstone>, <ore:blockUranium>, <minecraft:blaze_rod>]);

val bombBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "Airship Bombs"});
recipes.addShaped("custom/blueprint_vc_bomb", bombBlueprint, [
    [<vc:item_bomb:0>, <vc:item_bomb:0>, <vc:item_bomb:0>],
    [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
    [<ore:paper>, <ore:paper>, <ore:paper>]
]);

# Fuel

recipes.removeByRecipeName("vc:item_viesoline_pellets");
AlloySmelter.addRecipe(<vc:item_viesoline_pellets>, <minecraft:coal:*>, <ore:dustRedstone>, 100);
ArcFurnace.addRecipe(<vc:item_viesoline_pellets> * 3, <minecraft:coal:*>, null, 60, 512, [<ore:dustRedstone>]);