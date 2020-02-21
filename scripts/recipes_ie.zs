import mods.jei.JEI;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Refinery;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.Fermenter;
import mods.immersivepetroleum.Distillation;
import mods.inworldcrafting.FluidToItem;
import mods.extendedcrafting.TableCrafting;
import mods.extendedcrafting.CombinationCrafting;
import scripts.ietools.ieHammerTransformer;

JEI.hide(<immersiveengineering:hemp>);
JEI.hide(<immersiveengineering:fake_light>);
JEI.hide(<immersivepetroleum:dummy>);
JEI.hide(<immersivepetroleum:metal_multiblock>);

# Misc recipes
AlloySmelter.addRecipe(<ore:cobblestoneWhite>.firstItem, <ore:cobblestone>, <ore:dyeWhite>, 100);
ArcFurnace.addRecipe(<ore:cobblestoneWhite>.firstItem, <ore:cobblestone>, null, 40, 256, [<ore:dyeWhite>]);

Crusher.addRecipe(<ore:foodCocoapowder>.firstItem, <ore:dyeBrown>, 512);
Crusher.addRecipe(<ore:dustCharcoal>.firstItem, <minecraft:coal:1>, 512);

Crusher.removeRecipesForInput(<minecraft:coal:0>);
Crusher.addRecipe(<ore:dustCoal>.firstItem, <minecraft:coal:0>, 512, <ore:dustSulfur>.firstItem, 1.0);

# Misc removals
recipes.removeByRecipeName("immersiveengineering:material/gunpowder0");
recipes.removeByRecipeName("immersiveengineering:tool/hammer");

# Remove gear mold (no uses)
JEI.removeAndHide(<immersiveengineering:mold:1>);

# Hammer
recipes.addShaped("custom/ie_hammer_crude", <immersiveengineering:tool>.withTag({Damage: 90}), [
    [null, <ore:ingotCrudeSteel>, <ore:string>],
    [null, <ore:stickWood>, <ore:ingotCrudeSteel>],
    [<ore:stickWood>, null, null]
]);
recipes.addShaped("custom/ie_hammer", <immersiveengineering:tool>, [
    [null, <ore:ingotSteel>, <ore:string>],
    [null, <ore:stickTreatedWood>, <ore:ingotSteel>],
    [<ore:stickTreatedWood>, null, null]
]);

# Wirecutters
recipes.removeByRecipeName("immersiveengineering:tool/wirecutters");
recipes.addShaped("custom/wirecutters", <immersiveengineering:tool:1>, [
    [<ore:ingotIron>, <ore:stickTreatedWood>],
    [<ore:stickTreatedWood>, null]
]);

# Mining Drill
recipes.removeByRecipeName("immersiveengineering:tool/drill_diesel");
CombinationCrafting.addRecipe(<immersiveengineering:drill>, 2457600, 4096, <immersiveengineering:metal_decoration0:5>, [
    <immersiveengineering:material:13>, <immersiveengineering:material:13>,
    <immersiveengineering:material:9>, <immersiveengineering:material:9>
]);

# Chem Thrower
recipes.removeByRecipeName("immersiveengineering:tool/chemthrower");
CombinationCrafting.addRecipe(<immersiveengineering:chemthrower>, 2457600, 4096, <immersiveengineering:metal_decoration0:5>, [
    <immersiveengineering:material:13>, <immersiveengineering:material:13>,
    <immersiveengineering:toolupgrade:0>, <immersiveengineering:metal_device1:6>,
    <minecraft:bucket>
]);

# Revolver
recipes.removeByRecipeName("immersiveengineering:tool/revolver");
CombinationCrafting.addRecipe(<immersiveengineering:revolver>, 2457600, 4096, <immersiveengineering:material:15>, [
    <immersiveengineering:material:13>, <immersiveengineering:material:13>,
    <immersiveengineering:material:14>, <immersiveengineering:material:16>,
    <ore:ingotSteel>, <ore:ingotSteel>
]);

# Railgun
recipes.removeByRecipeName("immersiveengineering:tool/railgun");
CombinationCrafting.addRecipe(<immersiveengineering:railgun>, 2457600, 4096, <immersiveengineering:metal_device0:2>, [
    <immersiveengineering:material:13>, <immersiveengineering:material:13>,
    <immersiveengineering:material:14>, <immersiveengineering:material:14>,
    <immersiveengineering:metal_decoration0:1>, <immersiveengineering:metal_decoration0:1>
]);

# Hemp
Squeezer.addRecipe(null, <liquid:plantoil> * 120, <ore:seedHemp>, 2048);
Squeezer.removeByInput(<immersiveengineering:seed:0>);
JEI.removeAndHide(<immersiveengineering:seed:0>);
JEI.removeAndHide(<immersiveengineering:hemp:0>);

Crusher.addRecipe(<ore:fiberHemp>.firstItem * 4, <ore:cropHemp>, 1024, <ore:fiberHemp>.firstItem, 0.15);

# Planks
Crusher.addRecipe(<minecraft:planks:0> * 6, <minecraft:log:0>, 512, <ore:barkOak>.firstItem, 1.0);
Crusher.addRecipe(<minecraft:planks:1> * 6, <minecraft:log:1>, 512, <ore:barkSpruce>.firstItem, 1.0);
Crusher.addRecipe(<minecraft:planks:2> * 6, <minecraft:log:2>, 512, <ore:barkBirch>.firstItem, 1.0);
Crusher.addRecipe(<minecraft:planks:3> * 6, <minecraft:log:3>, 512, <ore:barkJungle>.firstItem, 1.0);
Crusher.addRecipe(<minecraft:planks:4> * 6, <minecraft:log2:0>, 512, <ore:barkAcacia>.firstItem, 1.0);
Crusher.addRecipe(<minecraft:planks:5> * 6, <minecraft:log2:1>, 512, <ore:barkDarkOak>.firstItem, 1.0);
Crusher.addRecipe(<minecraft:planks:3> * 6, <betterwithmods:blood_log>, 512, <ore:barkBlood>.firstItem, 1.0);
Crusher.addRecipe(<rustic:planks:0> * 6, <rustic:log:0>, 512, <ore:barkOak>.firstItem, 1.0);
Crusher.addRecipe(<rustic:planks:1> * 6, <rustic:log:1>, 512, <ore:barkOak>.firstItem, 1.0);
Crusher.addRecipe(<minecraft:planks:1> * 6, <harvestcraft:pammaple>, 512, <ore:cropMaplesyrup>.firstItem, 1.0);
Crusher.addRecipe(<minecraft:planks:3> * 6, <harvestcraft:pamcinnamon>, 512, <ore:cropCinnamon>.firstItem, 1.0);
Crusher.addRecipe(<minecraft:planks:3> * 6, <harvestcraft:pampaperbark>, 512, <ore:paper>.firstItem, 1.0);

Crusher.addRecipe(<ore:dustWood>.firstItem * 2, <ore:plankWood>, 512, <ore:dustWood>.firstItem, 0.5);

# Clay / Porcelain
AlloySmelter.addRecipe(<ore:ingotBrickPorcelain>.firstItem, <ore:itemClay>, <ore:itemBonemeal>, 100);
BlastFurnace.addRecipe(<ore:ingotBrickPorcelain>.firstItem, <ore:clayPorcelain>, 80);
ArcFurnace.addRecipe(<ore:ingotBrickPorcelain>.firstItem, <ore:itemClay>, null, 40, 256, [<ore:itemBonemeal>]);
ArcFurnace.addRecipe(<ore:ingotBrickPorcelain>.firstItem, <ore:clayPorcelain>, null, 20, 256);

# Ironberry
Distillation.addRecipe([<liquid:water> * 250], [<ore:dustTinyIron>.firstItem, <ore:dustTinyIron>.firstItem], <liquid:ironberryjuice> * 500, 4096, 600, [1, 0.15]);

# Quartz
recipes.addShapeless("custom/nether_quartz_from_hammer", <ore:gemQuartz>.firstItem, [
    <ore:oreQuartz>, ieHammerTransformer
]);

# Gunpowder
Crusher.addRecipe(<ore:dustSaltpeter>.firstItem * 2, <ore:itemCreeperOyster>, 1024);
Crusher.addRecipe(<ore:dustSaltpeter>.firstItem * 4, <ore:itemCreeperSkull>, 2048);

# Redstone
recipes.addShapeless("custom/redstone_dust_from_hammer", <ore:dustRedstone>.firstItem, [
    <ore:oreRedstone>, ieHammerTransformer
]);

# Lapis
recipes.addShapeless("custom/lapis_from_hammer", <ore:gemLapis>.firstItem, [
    <ore:oreLapis>, ieHammerTransformer
]);

# Diamond
AlloySmelter.addRecipe(<ore:ingotDiamond>.firstItem, <ore:ingotSteel>, <ore:gemDiamond>, 600);
ArcFurnace.addRecipe(<ore:ingotDiamond>.firstItem, <ore:ingotSteel>, null, 300, 2048, [<ore:gemDiamond>]);

# Carbonado
BlastFurnace.addRecipe(<ore:shardMoltenCarbonado>.firstItem, <ore:shardCarbonado>, 600);
Crusher.addRecipe(<ore:shardCarbonado>.firstItem * 4, <ore:gemCarbonado>, 2048);
ArcFurnace.addRecipe(<ore:shardMoltenCarbonado>.firstItem, <ore:shardCarbonado>, null, 200, 512);

# Crude steel
ArcFurnace.addRecipe(<ore:ingotCrudeSteel>.firstItem, <ore:dustIron>, null, 120, 512, [<ore:itemClay>, <ore:dustPotash>]);
ArcFurnace.addRecipe(<ore:ingotCrudeSteel>.firstItem, <ore:ingotIron>, null, 120, 512, [<ore:itemClay>, <ore:dustPotash>]);

# Coke Brick
recipes.removeByRecipeName("immersiveengineering:stone_decoration/cokebrick");
recipes.addShaped("custom/coke_brick", <immersiveengineering:stone_decoration:0> * 3, [
    [<ore:itemClay>, <ore:ingotBrickPorcelain>, <ore:itemClay>],
    [<ore:ingotBrickPorcelain>, <ore:gravel>, <ore:ingotBrickPorcelain>],
    [<ore:itemClay>, <ore:ingotBrickPorcelain>, <ore:itemClay>]
]);

# Treated Wood
recipes.removeByRecipeName("immersiveengineering:treated_wood/treated_wood");

FluidToItem.transform(<immersiveengineering:treated_wood> * 8, <liquid:creosote>, <ore:plankWood> * 8, true);

# Blast Brick
AlloySmelter.addRecipe(<ore:ingotBrickNetherGlazed>.firstItem * 2, <ore:clayPorcelain>, <ore:dustBlaze>, 300);
ArcFurnace.addRecipe(<ore:ingotBrickNetherGlazed>.firstItem * 3, <ore:clayPorcelain>, null, 150, 512, [<ore:dustBlaze>]);
ArcFurnace.addRecipe(<ore:ingotBrickNetherGlazed>.firstItem * 3, <ore:itemClay>, null, 180, 512, [<ore:itemBonemeal>, <ore:dustBlaze>]);

recipes.removeByRecipeName("immersiveengineering:stone_decoration/blastbrick");
recipes.addShaped("custom/blast_brick", <immersiveengineering:stone_decoration:1> * 3, [
    [<ore:ingotBrickNether>, <ore:ingotBrickNetherGlazed>, <ore:ingotBrickNether>],
    [<ore:ingotBrickNetherGlazed>, <ore:ingotHellfire>, <ore:ingotBrickNetherGlazed>],
    [<ore:ingotBrickNether>, <ore:ingotBrickNetherGlazed>, <ore:ingotBrickNether>]
]);

# Quartz
Crusher.addRecipe(<ore:dustNetherQuartz>.firstItem, <ore:gemQuartz>, 2048, <ore:dustNetherQuartz>.firstItem, 0.1);
Crusher.addRecipe(<ore:gemQuartz>.firstItem * 2, <ore:oreQuartz>, 2048, <ore:dustNetherQuartz>.firstItem, 0.1);

# Blaze
MetalPress.addRecipe(<minecraft:blaze_rod>, <minecraft:blaze_powder>, <immersiveengineering:mold:2>, 4096, 6);

recipes.addShapeless("custom/blaze_powder_from_hammer", <minecraft:blaze_powder> * 3, [
    <minecraft:blaze_rod>, ieHammerTransformer
]);

# Amethyst
Crusher.addRecipe(<ore:gemAmethyst>.firstItem * 2, <ore:oreAmethyst>, 2048, <ore:gemAmethyst>.firstItem, 0.5);

# Hellfire
BlastFurnace.addRecipe(<ore:ingotHellfire>.firstItem, <ore:dustHellfire>, 600);
ArcFurnace.addRecipe(<ore:ingotHellfire>.firstItem, <ore:dustHellfire>, null, 200, 512);

# Soul / Nether
Crusher.addRecipe(<ore:dustNether>.firstItem * 2, <ore:netherrack>, 1024);

ArcFurnace.addRecipe(<ore:dustPotash>.firstItem, <ore:plankWood> * 6, null, 40, 256);
ArcFurnace.addRecipe(<ore:sludgeNether>.firstItem * 2, <ore:dustNether>, null, 40, 256, [<ore:dustPotash>, <ore:itemClay>]);

BlastFurnace.addRecipe(<ore:ingotBrickNether>.firstItem, <ore:sludgeNether>, 120);
BlastFurnace.addRecipe(<ore:ingotBrickNether>.firstItem, <ore:ingotBrickNetherUnfired>, 120);
ArcFurnace.addRecipe(<ore:ingotBrickNether>.firstItem, <ore:sludgeNether>, null, 40, 256);
ArcFurnace.addRecipe(<ore:ingotBrickNether>.firstItem, <ore:ingotBrickNetherUnfired>, null, 40, 256);

Crusher.addRecipe(<ore:dustSoulsand>.firstItem, <minecraft:soul_sand>, 2048, <ore:dustSoulsand>.firstItem, 0.25);

# Endstone
Crusher.addRecipe(<ore:dustEndstone>.firstItem, <ore:endstone>, 2048, <ore:dustEndstone>.firstItem, 0.15);

# Ender
ArcFurnace.addRecipe(<minecraft:ender_pearl>, <ore:dustEnder> * 4, null, 100, 1024);
Crusher.addRecipe(<ore:dustEnder>.firstItem * 3, <minecraft:ender_pearl>, 4096, <ore:dustEnder>.firstItem, 0.75);

Crusher.addRecipe(<ore:enderpearl>.firstItem * 4, <ore:itemEndermanSkull>, 2048);

# Dragon
Mixer.addRecipe(<liquid:endersyrup> * 250, <liquid:honey> * 250, [<ore:dustEnder>], 2048);
Refinery.addRecipe(<liquid:dragonsbrew> * 10, <liquid:endersyrup> * 5, <liquid:lava> * 5, 2048);
Distillation.addRecipe([<liquid:dragonsbreath> * 250, <liquid:steam> * 750], [<ore:obsidian>.firstItem], <liquid:dragonsbrew> * 2000, 4096, 1200, [1]);
BottlingMachine.addRecipe(<minecraft:dragon_breath>, <minecraft:glass_bottle>, <liquid:dragonsbreath> * 250);

# Infinity
ArcFurnace.addRecipe(<ore:dustBedrock>.firstItem, <ore:shardMoltenCarbonado>, null, 640, 3125, [<ore:dustEndstone> * 8]);

# Energetic Alloy
ArcFurnace.removeRecipe(<ore:ingotEnergeticAlloy>.firstItem);
ArcFurnace.addRecipe(<ore:ingotEnergeticAlloy>.firstItem, <ore:ingotHellfire>, null, 200, 512, [<ore:dustRedstone>, <ore:dustGlowstone>]);

# Vibrant Alloy
ArcFurnace.removeRecipe(<ore:ingotVibrantAlloy>.firstItem);
ArcFurnace.addRecipe(<ore:ingotVibrantAlloy>.firstItem, <ore:ingotEnergeticAlloy>, null, 200, 512, [<ore:enderpearl>, <ore:dustUranium>]);

# Dark Steel
ArcFurnace.removeRecipe(<ore:ingotDarkSteel>.firstItem);
ArcFurnace.addRecipe(<ore:ingotDarkSteel>.firstItem, <ore:dustSteel>, <ore:itemSlag>.firstItem, 180, 512, [<ore:dustObsidian>, <ore:gemAmethyst>]);
ArcFurnace.addRecipe(<ore:ingotDarkSteel>.firstItem, <ore:ingotSteel>, <ore:itemSlag>.firstItem, 200, 512, [<ore:dustObsidian>, <ore:gemAmethyst>]);

# Soularium
ArcFurnace.removeRecipe(<ore:ingotSoularium>.firstItem);
ArcFurnace.addRecipe(<ore:ingotSoularium>.firstItem, <ore:dustElectrum>, null, 180, 512, [<ore:dustSoulsand>]);
ArcFurnace.addRecipe(<ore:ingotSoularium>.firstItem, <ore:ingotElectrum>, null, 200, 512, [<ore:dustSoulsand>]);
ArcFurnace.addRecipe(<ore:ingotSoularium>.firstItem, <ore:dustSoularium>, null, 100, 512);

# Replace regular leather in recipes
recipes.replaceAllOccurences(<ore:leather>, <ore:hideTanned>.firstItem, <*>.only(function(item) {
    return !isNull(item) & item.definition.owner == "immersiveengineering";
}));

# Bricks
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:hardened_clay>, 2048, <minecraft:brick>, 0.5);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:0>, 2048, <minecraft:dye:15>, 0.25);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:1>, 2048, <minecraft:dye:14>, 0.25);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:2>, 2048, <minecraft:dye:13>, 0.25);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:3>, 2048, <minecraft:dye:12>, 0.25);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:4>, 2048, <minecraft:dye:11>, 0.25);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:5>, 2048, <minecraft:dye:10>, 0.25);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:6>, 2048, <minecraft:dye:9>, 0.25);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:7>, 2048, <minecraft:dye:8>, 0.25);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:8>, 2048, <minecraft:dye:7>, 0.25);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:9>, 2048, <minecraft:dye:6>, 0.25);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:10>, 2048, <minecraft:dye:5>, 0.25);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:11>, 2048, <minecraft:dye:4>, 0.25);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:12>, 2048, <minecraft:dye:3>, 0.25);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:13>, 2048, <minecraft:dye:2>, 0.25);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:14>, 2048, <minecraft:dye:1>, 0.25);
Crusher.addRecipe(<minecraft:brick> * 3, <minecraft:stained_hardened_clay:15>, 2048, <minecraft:dye:0>, 0.25);

# Ext Crafting Recipes

// Heavy eng block
recipes.remove(<immersiveengineering:metal_decoration0:5>);
TableCrafting.addShaped(<immersiveengineering:metal_decoration0:5> * 2, [
    [<ore:ingotSteel>, <ore:plateSteel>, <immersiveengineering:material:9>, <ore:plateSteel>, <ore:ingotSteel>],
    [<ore:plateSteel>, <ore:ingotIron>, <ore:ingotElectrum>, <ore:ingotIron>, <ore:plateSteel>],
    [<minecraft:piston>, <ore:ingotElectrum>, <immersiveengineering:material:26>, <ore:ingotElectrum>, <minecraft:piston>],
    [<ore:plateSteel>, <ore:ingotIron>, <ore:ingotElectrum>, <ore:ingotIron>, <ore:plateSteel>],
    [<ore:ingotSteel>, <ore:plateSteel>, <immersiveengineering:material:9>, <ore:plateSteel>, <ore:ingotSteel>]
]);

// Generator block
recipes.remove(<immersiveengineering:metal_decoration0:6>);
TableCrafting.addShaped(<immersiveengineering:metal_decoration0:6> * 2, [
    [<ore:ingotSteel>, <ore:plateSteel>, <ore:plateCopper>, <ore:plateSteel>, <ore:ingotSteel>],
    [<ore:plateSteel>, <ore:ingotCopper>, <ore:ingotElectrum>, <ore:ingotCopper>, <ore:plateSteel>],
    [<ore:plateCopper>, <ore:ingotElectrum>, <immersiveengineering:metal_device1:2>, <ore:ingotElectrum>, <ore:plateCopper>],
    [<ore:plateSteel>, <ore:ingotCopper>, <ore:ingotElectrum>, <ore:ingotCopper>, <ore:plateSteel>],
    [<ore:ingotSteel>, <ore:plateSteel>, <ore:plateCopper>, <ore:plateSteel>, <ore:ingotSteel>]
]);

// Radiator block
recipes.remove(<immersiveengineering:metal_decoration0:7>);
TableCrafting.addShaped(<immersiveengineering:metal_decoration0:7> * 2, [
    [<ore:ingotSteel>, <ore:plateSteel>, <ore:plateCopper>, <ore:plateSteel>, <ore:ingotSteel>],
    [<ore:plateSteel>, <ore:ingotCopper>, <immersiveengineering:metal_device1:6>, <ore:ingotCopper>, <ore:plateSteel>],
    [<ore:plateCopper>, <immersiveengineering:metal_device1:6>, <minecraft:water_bucket>, <immersiveengineering:metal_device1:6>, <ore:plateCopper>],
    [<ore:plateSteel>, <ore:ingotCopper>, <immersiveengineering:metal_device1:6>, <ore:ingotCopper>, <ore:plateSteel>],
    [<ore:ingotSteel>, <ore:plateSteel>, <ore:plateCopper>, <ore:plateSteel>, <ore:ingotSteel>]
]);

// Blast furnace preheater
recipes.remove(<immersiveengineering:metal_device1:0>);
TableCrafting.addShaped(<immersiveengineering:metal_device1:0>, [
    [<ore:blockSheetmetalIron>, <ore:blockSheetmetalIron>, <ore:blockSheetmetalIron>],
    [<ore:blockSheetmetalIron>, null, <ore:blockSheetmetalIron>],
    [<ore:blockSheetmetalIron>, <immersiveengineering:metal_device1:1>, <ore:blockSheetmetalIron>],
    [<ore:blockSheetmetalIron>, null, <ore:blockSheetmetalIron>],
    [<immersiveengineering:metal_device1:6>, <ore:blockSheetmetalIron>, <ore:blockSheetmetalIron>]
]);

// Thermo-electric generator
recipes.remove(<immersiveengineering:metal_device1:3>);
TableCrafting.addShaped(<immersiveengineering:metal_device1:3>, [
    [<ore:ingotSteel>, <ore:plateConstantan>, <ore:plateSteel>, <ore:plateConstantan>, <ore:ingotSteel>],
    [<ore:plateSteel>, <ore:ingotIron>, <ore:plateConstantan>, <ore:ingotIron>, <ore:plateSteel>],
    [<ore:plateConstantan>, <ore:plateConstantan>, <immersiveengineering:metal_decoration0:0>, <ore:plateConstantan>, <ore:plateConstantan>],
    [<ore:plateConstantan>, <ore:ingotIron>, <ore:plateConstantan>, <ore:ingotIron>, <ore:plateConstantan>],
    [<ore:ingotConstantan>, <ore:plateConstantan>, <ore:plateConstantan>, <ore:plateConstantan>, <ore:ingotConstantan>]
]);

// Garden cloche
recipes.remove(<immersiveengineering:metal_device1:13>);
TableCrafting.addShaped(<immersiveengineering:metal_device1:13>, [
    [<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:ingotCopper>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],
    [<ore:blockGlassColorless>, null, <immersiveengineering:material:26>, null, <ore:blockGlassColorless>],
    [<ore:blockGlassColorless>, null, null, null, <ore:blockGlassColorless>],
    [<ore:plankTreatedWood>, <ore:plankTreatedWood>, null, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
    [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <immersiveengineering:material:9>, <ore:plankTreatedWood>, <ore:plankTreatedWood>]
]);