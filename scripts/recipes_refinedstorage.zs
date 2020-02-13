#modloaded refinedstorage

import mods.jei.JEI;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.ArcFurnace;

JEI.removeAndHide(<refinedstorage:silicon>);
furnace.remove(<refinedstorage:silicon>);

JEI.removeAndHide(<refinedstorage:quartz_enriched_iron_block>);
recipes.replaceAllOccurences(<refinedstorage:quartz_enriched_iron>, <enderio:item_alloy_ingot>);
recipes.replaceAllOccurences(<minecraft:sugar>, <ore:dustUranium>.firstItem, <*>.only(function(item) {
    return !isNull(item) & item.definition.owner == "refinedstorage";
}));
JEI.removeAndHide(<refinedstorage:quartz_enriched_iron>);

recipes.removeByRecipeName("refinedstorage:processor_binding");
recipes.addShapeless("custom/rs_processor_binding", <refinedstorage:processor_binding>, [
    <ore:slimeball>, <ore:dustSilver>
]);

recipes.remove(<refinedstorage:machine_casing>);
recipes.addShaped("custom/rs_machine_casing", <refinedstorage:machine_casing>, [
    [<enderio:item_alloy_ingot>, <enderio:item_alloy_ingot>, <enderio:item_alloy_ingot>],
    [<enderio:item_alloy_ingot>, <ore:blockSteel>, <enderio:item_alloy_ingot>],
    [<enderio:item_alloy_ingot>, <enderio:item_alloy_ingot>, <enderio:item_alloy_ingot>]
]);

recipes.remove(<refinedstorage:controller>);
recipes.addShaped("custom/rs_controller", <refinedstorage:controller>, [
    [<enderio:item_alloy_ingot>, <refinedstorage:processor:5>, <enderio:item_alloy_ingot>],
    [<ore:dustBedrock>, <refinedstorage:machine_casing>, <ore:dustBedrock>],
    [<enderio:item_alloy_ingot>, <ore:dustBedrock>, <enderio:item_alloy_ingot>]
]);
