#modloaded improvedbackpacks

import mods.jei.JEI;
import mods.immersiveengineering.Blueprint;

furnace.remove(<improvedbackpacks:tanned_leather>);
JEI.removeAndHide(<improvedbackpacks:bound_leather>);
JEI.removeAndHide(<improvedbackpacks:tanned_leather>);

val upgradeBlank = <improvedbackpacks:blank_upgrade>;
val upgradeTier1 = <improvedbackpacks:upgrade:0>;
val upgradeTier2 = <improvedbackpacks:upgrade:1>;
val upgradeTier3 = <improvedbackpacks:upgrade:2>;
val upgradeTier4 = <improvedbackpacks:upgrade:3>;
val upgradeTier5 = <improvedbackpacks:upgrade:4>;

upgradeBlank.displayName = "Backpack Upgrade (Tier 0)";
upgradeTier1.displayName = "Backpack Upgrade (Tier 1)";
upgradeTier2.displayName = "Backpack Upgrade (Tier 2)";
upgradeTier3.displayName = "Backpack Upgrade (Tier 3)";
upgradeTier4.displayName = "Backpack Upgrade (Tier 4)";
upgradeTier5.displayName = "Backpack Upgrade (Tier 5)";

recipes.remove(upgradeTier1);
recipes.remove(upgradeTier2);
recipes.remove(upgradeTier3);
recipes.remove(upgradeTier4);
recipes.remove(upgradeTier5);

Blueprint.addRecipe("Backpack Upgrades", upgradeTier1,
        [upgradeBlank, <ore:plankTreatedWood> * 3]);
Blueprint.addRecipe("Backpack Upgrades", upgradeTier2,
        [upgradeTier1, <ore:plateIron> * 3]);
Blueprint.addRecipe("Backpack Upgrades", upgradeTier3,
        [upgradeTier2, <ore:plateSteel> * 3]);
Blueprint.addRecipe("Backpack Upgrades", upgradeTier4,
        [upgradeTier3, <ore:plateElectrum> * 3]);
Blueprint.addRecipe("Backpack Upgrades", upgradeTier5,
        [upgradeTier4, <ore:ingotDiamond> * 3]);

val backpackUpgradesBlueprint = <immersiveengineering:blueprint>.withTag({blueprint: "Backpack Upgrades"});
recipes.addShaped("immc/blueprint_backpack_upgrades", backpackUpgradesBlueprint,
        [[<ore:hideTanned>, upgradeBlank, <ore:hideTanned>],
         [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
         [<ore:paper>, <ore:paper>, <ore:paper>]]);

recipes.replaceAllOccurences(<improvedbackpacks:tanned_leather>, <ore:hideTanned>.firstItem, <*>.only(function(item) {
    return !isNull(item) & item.definition.owner == "improvedbackpacks";
}));
recipes.replaceAllOccurences(<minecraft:string>, <ore:padding>.firstItem, <*>.only(function(item) {
    return !isNull(item) & item.definition.owner == "improvedbackpacks";
}));
recipes.replaceAllOccurences(<ore:stickWood>, <ore:padding>.firstItem, <*>.only(function(item) {
    return !isNull(item) & item.definition.owner == "improvedbackpacks";
}));