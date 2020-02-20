import mods.jei.JEI;
import mods.extendedcrafting.TableCrafting;

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
	[<ore:blockSheetmetalSteel>, <ore:blockSteel>, <ore:plateUranium>, <ore:blockSteel>, <ore:blockSheetmetalSteel>], 
	[<ore:blockSheetmetalSteel>, <ore:plateUranium>, <ore:craftingTableWood>, <ore:plateUranium>, <ore:blockSheetmetalSteel>], 
	[<ore:blockSheetmetalSteel>, <ore:blockSteel>, <ore:plateUranium>, <ore:blockSteel>, <ore:blockSheetmetalSteel>], 
	[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]
]);
recipes.addShaped("custom/crafting_pedestal", <extendedcrafting:pedestal> * 4, [
    [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
    [null, <ore:stone>, null],
    [<ore:stone>, <ore:stone>, <ore:stone>]
]);