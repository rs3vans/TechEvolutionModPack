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

TableCrafting.addShaped(<extendedcrafting:table_elite>, [
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:trapdoorDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>],
    [<ore:ingotDarkSteel>, <ore:blockDarkSteel>, <ore:blockVibrantAlloy>, <ore:blockDarkSteel>, <ore:ingotDarkSteel>],
    [null, <ore:barsDarkSteel>, <ore:gearVibrant>, <ore:barsDarkSteel>, null],
    [null, <ore:barsDarkSteel>, <ore:blockDarkSteel>, <ore:barsDarkSteel>, null],
    [<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>]
]);