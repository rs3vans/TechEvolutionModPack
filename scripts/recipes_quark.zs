import mods.jei.JEI;

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
recipes.addShaped("custom/duskbound_lantern", <quark:duskbound_lantern>, [
    [<quark:duskbound_block>, <quark:duskbound_block>, <quark:duskbound_block>],
    [<quark:duskbound_block>, <minecraft:ender_eye>, <quark:duskbound_block>],
    [<quark:duskbound_block>, <quark:duskbound_block>, <quark:duskbound_block>]
]);

recipes.removeByRecipeName("quark:arrow_ender");
recipes.addShaped("custom/ender_arrow", <quark:arrow_ender> * 8, [
    [<ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>],
    [<ore:enderpearl>, <ore:arrow>, <ore:enderpearl>],
    [<ore:enderpearl>, <ore:enderpearl>, <ore:enderpearl>]
]);