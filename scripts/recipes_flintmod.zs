#modloaded flintmod

recipes.removeByRecipeName("flintmod:flint_pick1");
recipes.removeByRecipeName("flintmod:flint_pick2");
recipes.removeByRecipeName("flintmod:flint_axe");
recipes.removeByRecipeName("flintmod:flint_spade");

recipes.addShaped("custom/flint_pick", <flintmod:pickaxe_flint>, [
    [<flintmod:tool_part_flint>, <ore:string>],
    [<ore:stickWood>, <flintmod:tool_part_flint>]
]);

recipes.addShaped("custom/flint_axe1", <flintmod:axe_flint>, [
    [<flintmod:tool_part_flint>, <flintmod:tool_part_flint>],
    [<ore:stickWood>, <ore:string>]
]);

recipes.addShaped("custom/flint_axe2", <flintmod:axe_flint>, [
    [<ore:string>, <flintmod:tool_part_flint>],
    [<ore:stickWood>, <flintmod:tool_part_flint>]
]);

recipes.addShaped("custom/flint_spade", <flintmod:spade_flint>, [
    [null, <flintmod:tool_part_flint>],
    [<ore:stickWood>, <ore:string>]
]);
recipes.addShaped("custom/flint_spade2", <flintmod:spade_flint>, [
    [<ore:string>, <flintmod:tool_part_flint>],
    [<ore:stickWood>, null]
]);