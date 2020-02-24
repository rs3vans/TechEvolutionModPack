#modloaded notreepunching

import mods.jei.JEI;

JEI.removeAndHide(<notreepunching:grass_fiber>);
JEI.removeAndHide(<notreepunching:pottery/large_vessel>);
JEI.removeAndHide(<notreepunching:pottery/small_vessel>);
JEI.removeAndHide(<notreepunching:pottery/bucket>);
JEI.removeAndHide(<notreepunching:pottery/flower_pot>);
JEI.removeAndHide(<notreepunching:ceramic_large_vessel>);
JEI.removeAndHide(<notreepunching:ceramic_small_vessel>);
JEI.removeAndHide(<notreepunching:ceramic_bucket>);
JEI.removeAndHide(<notreepunching:clay_tool>);
JEI.removeAndHide(<notreepunching:clay_brick>);
JEI.removeAndHide(<notreepunching:mattock/iron>);
JEI.removeAndHide(<notreepunching:mattock/gold>);
JEI.removeAndHide(<notreepunching:mattock/diamond>);
JEI.removeAndHide(<notreepunching:saw/iron>);
JEI.removeAndHide(<notreepunching:saw/gold>);
JEI.removeAndHide(<notreepunching:saw/diamond>);

recipes.removeByRecipeName("notreepunching:misc/grass_string");

recipes.remove(<notreepunching:knife/diamond>);
recipes.addShaped("custom/diamond_knife", <notreepunching:knife/diamond>, [
    [<ore:ingotDiamond>],
    [<ore:stickWood>]
]);

recipes.addShaped("custom/grass_string", <notreepunching:grass_string>, [
    [<ore:fiberPlant>, <ore:fiberPlant>],
    [<ore:fiberPlant>, <ore:fiberPlant>]
]);