#modloaded refinedstorage

import mods.jei.JEI;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.ArcFurnace;
import mods.extendedcrafting.TableCrafting;

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
TableCrafting.addShaped(<refinedstorage:machine_casing>, [
	[<ore:blockDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:blockDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <ore:compressed3xDustBedrock>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:blockDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:blockDarkSteel>]
]);

recipes.remove(<refinedstorage:controller>);
TableCrafting.addShaped(<refinedstorage:controller>, [
	[<ore:blockDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:blockDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <enderio:item_power_conduit:2>, <enderio:item_basic_capacitor:2>, <enderio:item_power_conduit:2>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <ore:gearDark>, <ore:compressed3xDustBedrock>, <ore:gearDark>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <enderio:item_power_conduit:2>, <ore:gearDark>, <enderio:item_power_conduit:2>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:blockDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:blockDarkSteel>]
]);
