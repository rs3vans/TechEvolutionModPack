import mods.extendedcrafting.TableCrafting;

recipes.remove(<compactmachines3:psd>);
recipes.remove(<compactmachines3:fieldprojector>);

TableCrafting.addShaped(<compactmachines3:psd>, [
	[<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>], 
	[<ore:ingotElectricalSteel>, <ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>, <ore:ingotElectricalSteel>], 
	[<ore:ingotElectricalSteel>, <ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>, <ore:ingotElectricalSteel>], 
	[<ore:ingotElectricalSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotElectricalSteel>], 
	[<ore:ingotElectricalSteel>, <enderio:item_capacitor_crystalline>, <ore:gearEnergized>, <enderio:item_capacitor_crystalline>, <ore:ingotElectricalSteel>], 
	[<ore:ingotElectricalSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotElectricalSteel>], 
	[<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>]
]);

TableCrafting.addShaped(<compactmachines3:fieldprojector> * 2, [
	[null, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, null], 
	[null, <ore:plateDarkSteel>, <ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:plateDarkSteel>, null], 
	[null, <ore:plateDarkSteel>, <ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:plateDarkSteel>, null], 
	[null, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, null], 
	[<ore:blockDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:blockCrystallineAlloy>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:blockDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <enderio:item_capacitor_crystalline>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>], 
	[<ore:blockDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:blockDarkSteel>]
]);