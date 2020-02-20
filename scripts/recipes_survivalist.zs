import mods.jei.JEI;
import gigaherz.survivalist.Dryable;

JEI.removeAndHide(<survivalist:sawmill>);
JEI.removeAndHide(<survivalist:tanned_leather>);
JEI.removeAndHide(<survivalist:tanned_helmet>);
JEI.removeAndHide(<survivalist:tanned_chestplate>);
JEI.removeAndHide(<survivalist:tanned_leggings>);
JEI.removeAndHide(<survivalist:tanned_boots>);
JEI.removeAndHide(<survivalist:jerky>);
JEI.removeAndHide(<survivalist:chainmail>);
JEI.removeAndHide(<survivalist:nugget:*>);
JEI.removeAndHide(<survivalist:rock:*>);
JEI.removeAndHide(<survivalist:rock_ore:*>);
JEI.removeAndHide(<survivalist:hatchet>);
JEI.removeAndHide(<survivalist:pick>);
JEI.removeAndHide(<survivalist:spade>);

furnace.remove(<survivalist:rock_ore:*>);

Dryable.addRecipe(<ore:listAllbeefraw>, <harvestcraft:beefjerkyitem>, 400);
Dryable.addRecipe(<ore:foodStock>, <harvestcraft:driedsoupitem>, 400);

Dryable.addRecipe(<ore:meatRotten>, <minecraft:leather>, 1800);

Dryable.addRecipe(<minecraft:clay_ball>, <minecraft:brick>, 1200);