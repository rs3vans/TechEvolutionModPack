#modloaded storagedrawers

import mods.jei.JEI;

val stick = <ore:stickTreatedWood>;
val circuitBoard = <immersiveengineering:material:27>;
val glassPane = <ore:paneGlass>;
val upgradeTemplate = <storagedrawers:upgrade_template>;
val lightEng = <immersiveengineering:metal_decoration0:4>;
val heavyEng = <immersiveengineering:metal_decoration0:5>;
val crate = <immersiveengineering:wooden_device0:0>;

recipes.removeByRecipeName("storagedrawers:compacting_drawer");
recipes.addShaped("custom/compacting_drawer", <storagedrawers:compdrawers>,
        [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
         [<minecraft:piston>, <storagedrawers:basicdrawers:*>, <minecraft:piston>],
         [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.removeByRecipeName("storagedrawers:controller");
recipes.addShaped("custom/controller", <storagedrawers:controller>,
        [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
         [<ore:ingotDiamond>, <storagedrawers:basicdrawers:*>, <ore:ingotDiamond>],
         [heavyEng, circuitBoard, heavyEng]]);

recipes.removeByRecipeName("storagedrawers:controller_slave");
recipes.addShaped("custom/controller_slave", <storagedrawers:controllerslave>,
        [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],
         [<ore:ingotDiamond>, <storagedrawers:basicdrawers:*>, <ore:ingotDiamond>],
         [lightEng, circuitBoard, lightEng]]);

recipes.removeByRecipeName("storagedrawers:key_drawer");
recipes.addShaped("custom/drawer_key", <storagedrawers:drawer_key>,
        [[null, <ore:nuggetGold>, <ore:stickGold>],
         [null, <ore:stickGold>, null],
         [<ore:ingotGold>, null, null]]);

recipes.removeByRecipeName("storagedrawers:upgrade_template");
recipes.addShaped("custom/storagedrawers_upgrade_template", upgradeTemplate,
        [[stick, stick, stick],
         [glassPane, circuitBoard, glassPane],
         [stick, stick, stick]]);

val flint = <ore:itemFlint>;
recipes.removeByRecipeName("storagedrawers:upgrade_storage_obsidian");
recipes.addShaped("custom/storagedrawers_upgrade_storage_flint", <storagedrawers:upgrade_storage:0>,
        [[stick, stick, stick],
         [flint, upgradeTemplate, flint],
         [stick, stick, stick]]);

val steelPlate = <ore:plateSteel>;
recipes.removeByRecipeName("storagedrawers:upgrade_storage_iron");
recipes.addShaped("custom/storagedrawers_upgrade_storage_steel", <storagedrawers:upgrade_storage:1>,
        [[stick, stick, stick],
         [steelPlate, upgradeTemplate, steelPlate],
         [stick, stick, stick]]);

val electrumPlate = <ore:plateElectrum>;
recipes.removeByRecipeName("storagedrawers:upgrade_storage_gold");
recipes.addShaped("custom/storagedrawers_upgrade_storage_energetic", <storagedrawers:upgrade_storage:2>,
        [[stick, stick, stick],
         [electrumPlate, upgradeTemplate, electrumPlate],
         [stick, stick, stick]]);

val stone = <ore:cobblestone>;
recipes.removeByRecipeName("storagedrawers:upgrade_one_stack");
recipes.addShaped("custom/storagedrawers_upgrade_one_stack", <storagedrawers:upgrade_one_stack>,
        [[stick, stick, stick],
          [stone, upgradeTemplate, stone],
          [stick, stick, stick]]);

recipes.replaceAllOccurences(<ore:stickWood>, stick.firstItem, <*>.only(function(item) {
    return !isNull(item) & item.definition.owner == "storagedrawers";
}));
recipes.replaceAllOccurences(<ore:chestWood>, crate, <*>.only(function(item) {
    return !isNull(item) & item.definition.owner == "storagedrawers";
}));