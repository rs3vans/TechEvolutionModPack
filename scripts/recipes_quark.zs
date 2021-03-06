import mods.jei.JEI;
import mods.extendedcrafting.CombinationCrafting;

JEI.removeAndHide(<quark:iron_rod>);

recipes.removeByRecipeName("quark:glass");
recipes.removeByRecipeName("quark:stained_glass");
recipes.removeByRecipeName("quark:stained_glass_1");
recipes.removeByRecipeName("quark:stained_glass_2");
recipes.removeByRecipeName("quark:stained_glass_3");
recipes.removeByRecipeName("quark:stained_glass_4");
recipes.removeByRecipeName("quark:stained_glass_5");
recipes.removeByRecipeName("quark:stained_glass_6");
recipes.removeByRecipeName("quark:stained_glass_7");
recipes.removeByRecipeName("quark:stained_glass_8");
recipes.removeByRecipeName("quark:stained_glass_9");
recipes.removeByRecipeName("quark:stained_glass_10");
recipes.removeByRecipeName("quark:stained_glass_11");
recipes.removeByRecipeName("quark:stained_glass_12");
recipes.removeByRecipeName("quark:stained_glass_13");
recipes.removeByRecipeName("quark:stained_glass_14");
recipes.removeByRecipeName("quark:stained_glass_15");

recipes.removeByRecipeName("quark:soul_powder");
<quark:soul_powder>.displayName = "Soul Sand Dust";

recipes.removeByRecipeName("quark:duskbound_lantern");
CombinationCrafting.addRecipe(<quark:duskbound_lantern>, 51200, 512, <minecraft:ender_eye>, [
    <quark:duskbound_block>, <quark:duskbound_block>, <quark:duskbound_block>, <quark:duskbound_block>,
    <quark:duskbound_block>, <quark:duskbound_block>, <quark:duskbound_block>, <quark:duskbound_block>
]);

recipes.removeByRecipeName("quark:arrow_explosive");
CombinationCrafting.addRecipe(<quark:arrow_explosive> * 8, 51200, 512, <minecraft:arrow>, [
    <ore:gunpowder>, <ore:gunpowder>, <ore:gunpowder>, <ore:gunpowder>,
    <ore:gunpowder>, <ore:gunpowder>, <ore:gunpowder>, <ore:gunpowder>
]);

recipes.removeByRecipeName("quark:arrow_ender");
CombinationCrafting.addRecipe(<quark:arrow_ender> * 8, 51200, 512, <minecraft:arrow>, [
    <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>,
    <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>
]);

# Biotite
recipes.removeByRecipeName("quark:biotite_block");