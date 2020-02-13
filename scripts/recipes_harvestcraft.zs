import mods.jei.JEI;

var recipesToRemove = [] as string[];
for r in recipes.all {
    if (r.resourceDomain == "harvestcraft" && r.name.startsWith("minecraft_planks_meta")) {
        recipesToRemove += r.name;
    }
}
for r in recipesToRemove {
    recipes.removeByRecipeName(r);
}

JEI.hideCategory("jehc.apiary");
JEI.removeAndHide(<harvestcraft:hardenedleatheritem>);
JEI.removeAndHide(<harvestcraft:hardenedleatherhelmitem>);
JEI.removeAndHide(<harvestcraft:hardenedleatherchestitem>);
JEI.removeAndHide(<harvestcraft:hardenedleatherleggingsitem>);
JEI.removeAndHide(<harvestcraft:hardenedleatherbootsitem>);
JEI.removeAndHide(<harvestcraft:zombiejerkyitem>);
JEI.removeAndHide(<harvestcraft:apiary>);
JEI.removeAndHide(<harvestcraft:well>);
JEI.removeAndHide(<harvestcraft:honeycombitem>);
JEI.removeAndHide(<harvestcraft:honeycomb>);
JEI.removeAndHide(<harvestcraft:beehive>);
JEI.removeAndHide(<harvestcraft:queenbeeitem>);
JEI.removeAndHide(<harvestcraft:grubitem>);
JEI.removeAndHide(<harvestcraft:cookedgrubitem>);
JEI.removeAndHide(<harvestcraft:royaljellyitem>);
JEI.removeAndHide(<harvestcraft:flouritem>);
JEI.removeAndHide(<harvestcraft:candledeco1>);
JEI.removeAndHide(<harvestcraft:candledeco2>);
JEI.removeAndHide(<harvestcraft:candledeco3>);
JEI.removeAndHide(<harvestcraft:candledeco4>);
JEI.removeAndHide(<harvestcraft:candledeco5>);
JEI.removeAndHide(<harvestcraft:candledeco6>);
JEI.removeAndHide(<harvestcraft:candledeco7>);
JEI.removeAndHide(<harvestcraft:candledeco8>);
JEI.removeAndHide(<harvestcraft:candledeco9>);
JEI.removeAndHide(<harvestcraft:candledeco10>);
JEI.removeAndHide(<harvestcraft:candledeco11>);
JEI.removeAndHide(<harvestcraft:candledeco12>);
JEI.removeAndHide(<harvestcraft:candledeco13>);
JEI.removeAndHide(<harvestcraft:candledeco14>);
JEI.removeAndHide(<harvestcraft:candledeco15>);
JEI.removeAndHide(<harvestcraft:candledeco16>);
recipes.removeByRecipeName("harvestcraft:minecraft_leather_helmet");
recipes.removeByRecipeName("harvestcraft:leather_helmet");
recipes.removeByRecipeName("harvestcraft:minecraft_leather_chestplate");
recipes.removeByRecipeName("harvestcraft:leather_chestplate");
recipes.removeByRecipeName("harvestcraft:minecraft_leather_leggings");
recipes.removeByRecipeName("harvestcraft:leather_leggings");
recipes.removeByRecipeName("harvestcraft:minecraft_leather_boots");
recipes.removeByRecipeName("harvestcraft:leather_boots");
recipes.removeByRecipeName("harvestcraft:waterfilter");
recipes.removeByRecipeName("harvestcraft:grinder");
recipes.removeByRecipeName("harvestcraft:presser");
recipes.removeByRecipeName("harvestcraft:wovencottonitem");
recipes.removeByRecipeName("harvestcraft:driedsoupitem");

recipes.addShapeless("custom/honeycomb_to_honey", <harvestcraft:honeyitem>, [
    <ore:materialHoneycomb>
]);
recipes.addShaped("custom/honeycomb_to_waxcomb", <harvestcraft:waxcombitem>, [
    [null, <ore:materialHoneycomb>, null],
    [<ore:materialHoneycomb>, <ore:materialHoneycomb>, <ore:materialHoneycomb>],
    [null, <ore:materialHoneycomb>, null]
]);
recipes.addShaped("custom/hc_waterfilter", <harvestcraft:waterfilter>, [
    [<ore:barsIron>, <ore:barsIron>, <ore:barsIron>],
    [<ore:barsIron>, <betterwithmods:aesthetic:12>, <ore:barsIron>],
    [<ore:barsIron>, <ore:barsIron>, <ore:barsIron>]
]);
recipes.addShaped("custom/hc_grinder", <harvestcraft:grinder>, [
    [<ore:ingotIron>, <ore:barsIron>, <ore:ingotIron>],
    [<ore:plankWood>, <ore:gemQuartz>, <ore:plankWood>],
    [<ore:plankWood>, <minecraft:repeater>, <ore:plankWood>]
]);
recipes.addShaped("custom/hc_presser", <harvestcraft:presser>, [
    [<ore:ingotIron>, <minecraft:hopper>, <ore:ingotIron>],
    [<minecraft:piston>, null, <minecraft:piston>],
    [<ore:plankWood>, <minecraft:repeater>, <ore:plankWood>]
]);
recipes.addShaped("custom/hc_wovencotton", <harvestcraft:wovencottonitem>, [
    [null, <ore:string>, null],
    [<ore:string>, <ore:string>, <ore:string>],
    [<ore:string>, null, <ore:string>]
]);

val clayBucket = <ceramics:clay_bucket>;
val clayBucketWater = clayBucket.withTag({fluids:{FluidName: "water", Amount: 1000}});
recipes.addShapeless("custom/clay_bucket_to_fresh_water", <harvestcraft:freshwateritem>, [
    clayBucketWater.transformReplace(clayBucket)
]);