import mods.jei.JEI;
import mods.extendedcrafting.TableCrafting;
import mods.extendedcrafting.CombinationCrafting;

<ore:ingotUranium>.remove(<bigreactors:ingotyellorium>);
<ore:dustUranium>.remove(<bigreactors:dustyellorium>);
<ore:ingotSteel>.remove(<bigreactors:ingotsteel>);
<ore:ingotGraphite>.remove(<bigreactors:ingotgraphite>);
<ore:blockSteel>.remove(<bigreactors:blocksteel>);
<ore:dustSteel>.remove(<bigreactors:duststeel>);

recipes.removeByMod("bigreactors");

JEI.removeAndHide(<bigreactors:ingotyellorium>);
JEI.removeAndHide(<bigreactors:blockyellorium>);
JEI.removeAndHide(<bigreactors:dustyellorium>);
JEI.removeAndHide(<bigreactors:ingotsteel>);
JEI.removeAndHide(<bigreactors:blocksteel>);
JEI.removeAndHide(<bigreactors:duststeel>);
JEI.removeAndHide(<bigreactors:ingotgraphite>);
JEI.removeAndHide(<bigreactors:blockgraphite>);
JEI.removeAndHide(<bigreactors:dustgraphite>);
JEI.removeAndHide(<bigreactors:ingotludicrite>);
JEI.removeAndHide(<bigreactors:blockludicrite>);
JEI.removeAndHide(<bigreactors:dustludicrite>);
JEI.removeAndHide(<bigreactors:mineralanglesite>);
JEI.removeAndHide(<bigreactors:oreanglesite>);
JEI.removeAndHide(<bigreactors:mineralbenitoite>);
JEI.removeAndHide(<bigreactors:orebenitoite>);
JEI.removeAndHide(<bigreactors:oreyellorite>);
JEI.removeAndHide(<bigreactors:turbinepowertaptesla>);
JEI.removeAndHide(<bigreactors:reactorpowertaptesla>);
JEI.removeAndHide(<bigreactors:turbinecomputerport>);
JEI.removeAndHide(<bigreactors:reactorcomputerport>);
JEI.removeAndHide(<bigreactors:reactorrednetport>);
JEI.removeAndHide(<bigreactors:turbinehousingcores>);
JEI.removeAndHide(<bigreactors:reactorcasingcores>);

JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "yellorium", Amount: 1000}));
JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "cyanite", Amount: 1000}));

JEI.hide(<liquid:yellorium>);
JEI.hide(<liquid:cyanite>);
JEI.hide(<liquid:fuelcolumn>);

for i in loadedMods["bigreactors"].items {
    if (i.displayName.endsWith(" (Legacy)")) {
        i.displayName = i.displayName.replace(" (Legacy)", "");
    }
}

CombinationCrafting.addRecipe(<ore:dustBlutonium>.firstItem * 8, 20480, 2048, <ore:gemLapis>.firstItem, [
    <ore:dustCyanite>, <ore:dustCyanite>, <ore:dustCyanite>, <ore:dustCyanite>,
    <ore:dustCyanite>, <ore:dustCyanite>, <ore:dustCyanite>, <ore:dustCyanite>
]);

TableCrafting.addShaped(<bigreactors:reactorcasing> * 8, [
	[<ore:blockDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:blockDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:scaffoldingSteel>, <ore:scaffoldingSteel>, <ore:scaffoldingSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:scaffoldingSteel>, <ore:gearDark>, <ore:scaffoldingSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:scaffoldingSteel>, <ore:scaffoldingSteel>, <ore:scaffoldingSteel>, <ore:plateDarkSteel>], 
	[<ore:blockDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:blockDarkSteel>]
]);
TableCrafting.addShaped(<bigreactors:reactorglass> * 16, [
	[<ore:blockDarkSteel>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockDarkSteel>], 
	[<ore:blockGlassHardened>, <ore:itemVibrantPowder>, <ore:itemVibrantPowder>, <ore:itemVibrantPowder>, <ore:blockGlassHardened>], 
	[<ore:blockGlassHardened>, <ore:itemVibrantPowder>, null, <ore:itemVibrantPowder>, <ore:blockGlassHardened>], 
	[<ore:blockGlassHardened>, <ore:itemVibrantPowder>, <ore:itemVibrantPowder>, <ore:itemVibrantPowder>, <ore:blockGlassHardened>], 
	[<ore:blockDarkSteel>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockDarkSteel>]
]);
TableCrafting.addShaped(<bigreactors:reactorfuelrod> * 8, [
	[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>], 
	[<ore:plateDarkSteel>, <ore:blockGlassHardened>, <ore:plateDarkSteel>, <ore:blockGlassHardened>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:blockGlassHardened>, <ore:plateDarkSteel>, <ore:blockGlassHardened>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:blockGlassHardened>, <ore:plateDarkSteel>, <ore:blockGlassHardened>, <ore:plateDarkSteel>], 
	[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>]
]);

TableCrafting.addShaped(<bigreactors:turbinehousing> * 8, [
	[<ore:blockAluminum>, <ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>, <ore:blockAluminum>], 
	[<ore:plateAluminum>, <ore:scaffoldingAluminum>, <ore:scaffoldingAluminum>, <ore:scaffoldingAluminum>, <ore:plateAluminum>], 
	[<ore:plateAluminum>, <ore:scaffoldingAluminum>, <ore:gearIronInfinity>, <ore:scaffoldingAluminum>, <ore:plateAluminum>], 
	[<ore:plateAluminum>, <ore:scaffoldingAluminum>, <ore:scaffoldingAluminum>, <ore:scaffoldingAluminum>, <ore:plateAluminum>], 
	[<ore:blockAluminum>, <ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>, <ore:blockAluminum>]
]);
TableCrafting.addShaped(<bigreactors:turbineglass> * 16, [
	[<ore:blockAluminum>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockAluminum>], 
	[<ore:blockGlassHardened>, <ore:dustObsidian>, <ore:dustObsidian>, <ore:dustObsidian>, <ore:blockGlassHardened>], 
	[<ore:blockGlassHardened>, <ore:dustObsidian>, null, <ore:dustObsidian>, <ore:blockGlassHardened>], 
	[<ore:blockGlassHardened>, <ore:dustObsidian>, <ore:dustObsidian>, <ore:dustObsidian>, <ore:blockGlassHardened>], 
	[<ore:blockAluminum>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockGlassHardened>, <ore:blockAluminum>]
]);
TableCrafting.addShaped(<bigreactors:turbinerotorshaft> * 3, [
	[null, <ore:plateSteel>, null, <ore:plateSteel>, null], 
	[<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>], 
	[null, <ore:plateSteel>, null, <ore:plateSteel>, null]
]);
TableCrafting.addShaped(<bigreactors:turbinerotorblade> * 4, [
	[null, null, null, <ore:plateSteel>, <ore:plateSteel>], 
	[null, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>], 
	[null, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, null], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, null], 
	[<ore:plateSteel>, <ore:plateSteel>, null, null, null]
]);

TableCrafting.addShaped(<bigreactors:reactorcontroller>, [
	[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <enderio:item_basic_capacitor:2>, <enderio:block_enhanced_combustion_generator>, <ore:gearDark>, <enderio:block_enhanced_combustion_generator>, <enderio:item_basic_capacitor:2>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>]
]);
TableCrafting.addShaped(<bigreactors:reactoraccessport>, [
	[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <enderio:item_item_conduit>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <enderio:item_item_conduit>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <enderio:item_basic_capacitor:2>, <enderio:item_item_conduit>, <enderio:item_basic_capacitor:2>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<enderio:item_item_conduit>, <enderio:item_item_conduit>, <enderio:item_item_conduit>, <ore:gearDark>, <enderio:item_item_conduit>, <enderio:item_item_conduit>, <enderio:item_item_conduit>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <enderio:item_basic_capacitor:2>, <enderio:item_item_conduit>, <enderio:item_basic_capacitor:2>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <enderio:item_item_conduit>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <enderio:item_item_conduit>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>]
]);
TableCrafting.addShaped(<bigreactors:reactorcoolantport>, [
	[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <enderio:item_liquid_conduit:2>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <enderio:item_liquid_conduit:2>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <enderio:item_basic_capacitor:2>, <enderio:item_liquid_conduit:2>, <enderio:item_basic_capacitor:2>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<enderio:item_liquid_conduit:2>, <enderio:item_liquid_conduit:2>, <enderio:item_liquid_conduit:2>, <ore:gearDark>, <enderio:item_liquid_conduit:2>, <enderio:item_liquid_conduit:2>, <enderio:item_liquid_conduit:2>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <enderio:item_basic_capacitor:2>, <enderio:item_liquid_conduit:2>, <enderio:item_basic_capacitor:2>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <enderio:item_liquid_conduit:2>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <enderio:item_liquid_conduit:2>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>]
]);
TableCrafting.addShaped(<bigreactors:reactorpowertaprf>, [
	[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <enderio:item_power_conduit:2>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <enderio:item_power_conduit:2>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <enderio:item_basic_capacitor:2>, <enderio:item_power_conduit:2>, <enderio:item_basic_capacitor:2>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<enderio:item_power_conduit:2>, <enderio:item_power_conduit:2>, <enderio:item_power_conduit:2>, <ore:gearDark>, <enderio:item_power_conduit:2>, <enderio:item_power_conduit:2>, <enderio:item_power_conduit:2>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <enderio:item_basic_capacitor:2>, <enderio:item_power_conduit:2>, <enderio:item_basic_capacitor:2>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <enderio:item_power_conduit:2>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <enderio:item_power_conduit:2>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>]
]);
TableCrafting.addShaped(<bigreactors:reactorredstoneport>, [
	[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <enderio:item_redstone_conduit>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <enderio:item_redstone_conduit>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <enderio:item_basic_capacitor:2>, <enderio:item_redstone_conduit>, <enderio:item_basic_capacitor:2>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<enderio:item_redstone_conduit>, <enderio:item_redstone_conduit>, <enderio:item_redstone_conduit>, <ore:gearDark>, <enderio:item_redstone_conduit>, <enderio:item_redstone_conduit>, <enderio:item_redstone_conduit>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <enderio:item_basic_capacitor:2>, <enderio:item_redstone_conduit>, <enderio:item_basic_capacitor:2>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <enderio:item_redstone_conduit>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <enderio:item_redstone_conduit>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>]
]);
TableCrafting.addShaped(<bigreactors:reactorcontrolrod> * 2, [
	[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <enderio:item_basic_capacitor:2>, <ore:ingotElectricalSteel>, <ore:ingotHOPGraphite>, <ore:ingotElectricalSteel>, <enderio:item_basic_capacitor:2>, <bigreactors:reactorcasing>], 
	[<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotHOPGraphite>, <ore:ingotHOPGraphite>, <ore:ingotHOPGraphite>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>], 
	[<ore:ingotElectricalSteel>, <ore:ingotHOPGraphite>, <ore:ingotHOPGraphite>, <ore:gearDark>, <ore:ingotHOPGraphite>, <ore:ingotHOPGraphite>, <ore:ingotElectricalSteel>], 
	[<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotHOPGraphite>, <ore:ingotHOPGraphite>, <ore:ingotHOPGraphite>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>], 
	[<bigreactors:reactorcasing>, <enderio:item_basic_capacitor:2>, <ore:ingotElectricalSteel>, <ore:ingotHOPGraphite>, <ore:ingotElectricalSteel>, <enderio:item_basic_capacitor:2>, <bigreactors:reactorcasing>], 
	[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>]
]);

TableCrafting.addShaped(<bigreactors:turbinecontroller>, [
	[<bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <ore:dustRedstone>, <ore:ingotElectricalSteel>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <ore:gearIronInfinity>, <ore:gearIronInfinity>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <carbonado:carbonado_glass>, <ore:dustRedstone>, <ore:ingotElectricalSteel>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <enderio:item_basic_capacitor:2>, <enderio:item_basic_capacitor:2>, <enderio:item_basic_capacitor:2>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>]
]);
TableCrafting.addShaped(<bigreactors:turbinefluidport>, [
	[<bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <enderio:item_liquid_conduit:2>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <ore:plateAluminum>, <ore:plateAluminum>, <enderio:item_liquid_conduit:2>, <ore:plateAluminum>, <ore:plateAluminum>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <ore:plateAluminum>, <enderio:item_basic_capacitor:2>, <enderio:item_liquid_conduit:2>, <enderio:item_basic_capacitor:2>, <ore:plateAluminum>, <bigreactors:turbinehousing>], 
	[<enderio:item_liquid_conduit:2>, <enderio:item_liquid_conduit:2>, <enderio:item_liquid_conduit:2>, <ore:gearIronInfinity>, <enderio:item_liquid_conduit:2>, <enderio:item_liquid_conduit:2>, <enderio:item_liquid_conduit:2>], 
	[<bigreactors:turbinehousing>, <ore:plateAluminum>, <enderio:item_basic_capacitor:2>, <enderio:item_liquid_conduit:2>, <enderio:item_basic_capacitor:2>, <ore:plateAluminum>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <ore:plateAluminum>, <ore:plateAluminum>, <enderio:item_liquid_conduit:2>, <ore:plateAluminum>, <ore:plateAluminum>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <enderio:item_liquid_conduit:2>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>]
]);
TableCrafting.addShaped(<bigreactors:turbinepowertaprf>, [
	[<bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <enderio:item_power_conduit:2>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <ore:plateAluminum>, <ore:plateAluminum>, <enderio:item_power_conduit:2>, <ore:plateAluminum>, <ore:plateAluminum>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <ore:plateAluminum>, <enderio:item_basic_capacitor:2>, <enderio:item_power_conduit:2>, <enderio:item_basic_capacitor:2>, <ore:plateAluminum>, <bigreactors:turbinehousing>], 
	[<enderio:item_power_conduit:2>, <enderio:item_power_conduit:2>, <enderio:item_power_conduit:2>, <ore:gearIronInfinity>, <enderio:item_power_conduit:2>, <enderio:item_power_conduit:2>, <enderio:item_power_conduit:2>], 
	[<bigreactors:turbinehousing>, <ore:plateAluminum>, <enderio:item_basic_capacitor:2>, <enderio:item_power_conduit:2>, <enderio:item_basic_capacitor:2>, <ore:plateAluminum>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <ore:plateAluminum>, <ore:plateAluminum>, <enderio:item_power_conduit:2>, <ore:plateAluminum>, <ore:plateAluminum>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <enderio:item_power_conduit:2>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>]
]);
TableCrafting.addShaped(<bigreactors:turbinebearing>, [
	[<bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <ore:gearIronInfinity>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <ore:plateAluminum>, <ore:plateAluminum>, <ore:gearIronInfinity>, <ore:plateAluminum>, <ore:plateAluminum>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <ore:plateAluminum>, <ore:plateAluminum>, <ore:gearIronInfinity>, <ore:plateAluminum>, <ore:plateAluminum>, <bigreactors:turbinehousing>], 
	[<ore:gearIronInfinity>, <ore:gearIronInfinity>, <ore:gearIronInfinity>, <ore:gearIronInfinity>, <ore:gearIronInfinity>, <ore:gearIronInfinity>, <ore:gearIronInfinity>], 
	[<bigreactors:turbinehousing>, <ore:plateAluminum>, <ore:plateAluminum>, <ore:gearIronInfinity>, <ore:plateAluminum>, <ore:plateAluminum>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <ore:plateAluminum>, <ore:plateAluminum>, <ore:gearIronInfinity>, <ore:plateAluminum>, <ore:plateAluminum>, <bigreactors:turbinehousing>], 
	[<bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <ore:gearIronInfinity>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>, <bigreactors:turbinehousing>]
]);