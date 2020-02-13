import mods.jei.JEI;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Blueprint;

JEI.removeAndHide(<vc:airship_workbench>);
JEI.removeAndHide(<vc:symbols/item_display_symbol>);
JEI.removeAndHide(<vc:achievements/achievement_airship_portal>);

# Airship parts

recipes.removeByRecipeName("vc:item_airship_balloon");
recipes.addShaped("custom/vc_airship_balloon", <vc:item_airship_balloon>, [
    [<ore:fabricHemp>, <immersiveengineering:wirecoil:3>, <ore:fabricHemp>],
    [<immersiveengineering:wirecoil:3>, null, <immersiveengineering:wirecoil:3>],
    [<ore:fabricHemp>, <immersiveengineering:wirecoil:3>, <ore:fabricHemp>]
]);

recipes.removeByRecipeName("vc:item_airship_frame");
recipes.addShaped("custom/vc_airship_frame", <vc:item_airship_frame>, [
    [<ore:plateSteel>, <vc:item_logic_chip>, <ore:plateSteel>],
    [<vc:item_logic_chip>, <minecraft:minecart>, <vc:item_logic_chip>],
    [<ore:plateSteel>, <vc:item_logic_chip>, <ore:plateSteel>]
]);

recipes.removeByRecipeName("vc:item_airship_engine");
recipes.addShaped("custom/vc_airship_engine", <vc:item_airship_engine>, [
    [<ore:plateSteel>, <ore:scaffoldingSteel>, <ore:plateSteel>],
    [<immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_device1:1>, <immersiveengineering:metal_decoration0:5>],
    [<ore:plateSteel>, <vc:item_logic_chip>, <ore:plateSteel>]
]);

recipes.removeByRecipeName("vc:item_airship_ignition");
recipes.addShaped("custom/vc_airship_ignition", <vc:item_airship_ignition>, [
    [<ore:plateSteel>, <ore:scaffoldingSteel>, <ore:plateSteel>],
    [<immersiveengineering:metal_decoration0:6>, <ore:blockUranium>, <immersiveengineering:metal_decoration0:6>],
    [<ore:plateSteel>, <immersiveengineering:metal_device0:2>, <ore:plateSteel>]
]);

recipes.removeByRecipeName("vc:airships/item_airship");
recipes.addShaped("custom/vc_airship", <vc:airships/item_airship>, [
    [<immersiveengineering:wirecoil:4>, <vc:item_airship_balloon>, <immersiveengineering:wirecoil:4>],
    [<vc:item_airship_engine>, <vc:item_airship_ignition>, <vc:item_airship_engine>],
    [<immersiveengineering:wirecoil:4>, <vc:item_airship_frame>, <immersiveengineering:wirecoil:4>]
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