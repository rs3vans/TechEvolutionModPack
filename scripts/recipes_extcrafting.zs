import mods.jei.JEI;
import mods.extendedcrafting.TableCrafting;
import mods.extendedcrafting.CompressionCrafting;

recipes.removeByMod("extendedcrafting");

JEI.removeAndHide(<extendedcrafting:material:*>);
JEI.removeAndHide(<extendedcrafting:storage:*>);
JEI.removeAndHide(<extendedcrafting:trimmed:*>);
JEI.removeAndHide(<extendedcrafting:guide>);
JEI.removeAndHide(<extendedcrafting:frame>);
JEI.removeAndHide(<extendedcrafting:lamp:*>);
JEI.removeAndHide(<extendedcrafting:crafting_table>);
JEI.removeAndHide(<extendedcrafting:table_basic>);
JEI.removeAndHide(<extendedcrafting:table_ultimate>);

TableCrafting.remove(<extendedcrafting:material:24>);

recipes.addShaped("custom/steel_crafting_table", <extendedcrafting:table_advanced>, [
    [<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>],
    [null, <ore:craftingTableTreatedWood>, null],
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
]);

TableCrafting.addShaped(<extendedcrafting:table_elite>, [
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:trapdoorDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
    [<ore:ingotDarkSteel>, <ore:blockDarkSteel>, <ore:blockVibrantAlloy>, <ore:blockDarkSteel>, <ore:ingotDarkSteel>],
    [null, <ore:barsDarkSteel>, <ore:gearVibrant>, <ore:barsDarkSteel>, null],
    [null, <ore:barsDarkSteel>, <ore:blockDarkSteel>, <ore:barsDarkSteel>, null],
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>]
]);

TableCrafting.addShaped(<extendedcrafting:crafting_core>, [
	[<ore:plateSteel>, <ore:barsIron>, <ore:barsIron>, <ore:barsIron>, <ore:plateSteel>], 
	[<ore:blockSheetmetalSteel>, <ore:blockSteel>, <ore:ingotDiamond>, <ore:blockSteel>, <ore:blockSheetmetalSteel>], 
	[<ore:blockSheetmetalSteel>, <ore:ingotDiamond>, <ore:craftingTableWood>, <ore:ingotDiamond>, <ore:blockSheetmetalSteel>], 
	[<ore:blockSheetmetalSteel>, <ore:blockSteel>, <ore:ingotDiamond>, <ore:blockSteel>, <ore:blockSheetmetalSteel>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
]);
recipes.addShaped("custom/crafting_pedestal", <extendedcrafting:pedestal> * 4, [
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
    [null, <ore:stone>, null],
    [<ore:stone>, <ore:stone>, <ore:stone>]
]);

TableCrafting.addShaped(<extendedcrafting:compressor>, [
	[<ore:blockDarkSteel>, <ore:plateDarkSteel>, null, null, null, <ore:plateDarkSteel>, <ore:blockDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotCrystallineAlloy>, <ore:ingotCrystallineAlloy>, <ore:ingotCrystallineAlloy>, <ore:ingotCrystallineAlloy>, <ore:ingotCrystallineAlloy>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <enderio:item_capacitor_crystalline>, <ore:ingotCrystallineAlloy>, <ore:barsDarkSteel>, <ore:ingotCrystallineAlloy>, <enderio:item_capacitor_crystalline>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <enderio:item_item_conduit>, <ore:barsDarkSteel>, <ore:blockCrystallineAlloy>, <ore:barsDarkSteel>, <enderio:item_item_conduit>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:gearVibrant>, <ore:ingotCrystallineAlloy>, <ore:barsDarkSteel>, <ore:ingotCrystallineAlloy>, <ore:gearVibrant>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <enderio:item_capacitor_crystalline>, <enderio:item_endergy_conduit:8>, <ore:gearVibrant>, <enderio:item_endergy_conduit:8>, <enderio:item_capacitor_crystalline>, <ore:plateDarkSteel>], 
	[<ore:blockDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:blockDarkSteel>]
]);

CompressionCrafting.addRecipe(<ore:obsidian>.firstItem, <ore:cobblestone>.firstItem, 64, <enderio:item_basic_capacitor:2>, 250000, 2500);

CompressionCrafting.addRecipe(<minecraft:coal:0>, <minecraft:coal:1>, 64, <enderio:item_capacitor_melodic>, 500000, 5000);
CompressionCrafting.addRecipe(<ore:gemDiamond>.firstItem, <minecraft:coal:0>, 64, <enderio:item_capacitor_melodic>, 500000, 5000);
CompressionCrafting.addRecipe(<ore:gemCarbonado>.firstItem, <ore:gemDiamond>.firstItem, 64, <enderio:item_capacitor_melodic>, 500000, 5000);
CompressionCrafting.addRecipe(<ore:gemAmethyst>.firstItem, <ore:gemQuartz>.firstItem, 16, <enderio:item_capacitor_melodic>, 500000, 5000);
CompressionCrafting.addRecipe(<ore:gemEmerald>.firstItem, <ore:dustGlowstone>.firstItem, 32, <enderio:item_capacitor_melodic>, 500000, 5000);