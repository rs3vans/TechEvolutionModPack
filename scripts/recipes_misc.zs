import mods.jei.JEI;
import mods.extendedcrafting.TableCrafting;

# Remove posts that are janky
JEI.removeAndHide(<immersiveengineering:wooden_device1:3>);
JEI.removeAndHide(<immersiveengineering:metal_decoration2:0>);
JEI.removeAndHide(<immersiveengineering:metal_decoration2:2>);

# Endstone by throwing Dragon's Breath
JEI.addDescription(<minecraft:end_stone>, "Throw a bottle of Dragon's Breath at some regular stone to convert it to End stone.");
JEI.addDescription(<minecraft:dragon_breath>, "Throw a bottle of Dragon's Breath at some regular stone to convert it to End stone.");

# TOP
JEI.removeAndHide(<theoneprobe:diamond_helmet_probe>);
JEI.removeAndHide(<theoneprobe:gold_helmet_probe>);
JEI.removeAndHide(<theoneprobe:iron_helmet_probe>);
JEI.removeAndHide(<theoneprobe:creativeprobe>);
JEI.removeAndHide(<theoneprobe:probenote>);
recipes.remove(<theoneprobe:probe>);
TableCrafting.addShaped(<theoneprobe:probe>, [
	[<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>], 
	[<ore:ingotElectricalSteel>, <ore:paneGlass>, <ore:ingotElectricalSteel>], 
	[<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>], 
	[<ore:ingotElectricalSteel>, <ore:gearDark>, <ore:ingotElectricalSteel>], 
	[<ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>]
]);

# CB
furnace.remove(<ceramics:clay_bucket>);
furnace.remove(<ceramics:unfired_clay:5>);

# NC
recipes.replaceAllOccurences(<minecraft:nether_brick>, <ore:ingotBrickNether>, <*>.only(function(item) {
    return !isNull(item) & item.definition.owner == "netherchest";
}));

# NEX
furnace.remove(<netherex:gloomy_netherbrick>, <netherex:gloomy_netherrack>);
furnace.remove(<netherex:lively_netherbrick>, <netherex:lively_netherrack>);
furnace.remove(<netherex:icy_netherbrick>, <netherex:icy_netherrack>);
furnace.remove(<netherex:fiery_netherbrick>, <netherex:fiery_netherrack>);

furnace.remove(<netherex:amethyst_ore>);

JEI.removeAndHide(<netherex:withered_amedian_hammer>);
JEI.removeAndHide(<netherex:blazed_amedian_hammer>);
JEI.removeAndHide(<netherex:frosted_amedian_hammer>);
JEI.removeAndHide(<netherex:withered_amedian_sword>);
JEI.removeAndHide(<netherex:blazed_amedian_sword>);
JEI.removeAndHide(<netherex:frosted_amedian_sword>);
JEI.removeAndHide(<netherex:withered_amedian_pickaxe>);
JEI.removeAndHide(<netherex:blazed_amedian_pickaxe>);
JEI.removeAndHide(<netherex:frosted_amedian_pickaxe>);
JEI.removeAndHide(<netherex:withered_amedian_axe>);
JEI.removeAndHide(<netherex:blazed_amedian_axe>);
JEI.removeAndHide(<netherex:frosted_amedian_axe>);
JEI.removeAndHide(<netherex:withered_amedian_shovel>);
JEI.removeAndHide(<netherex:blazed_amedian_shovel>);
JEI.removeAndHide(<netherex:frosted_amedian_shovel>);
JEI.removeAndHide(<netherex:withered_amedian_hoe>);
JEI.removeAndHide(<netherex:blazed_amedian_hoe>);
JEI.removeAndHide(<netherex:frosted_amedian_hoe>);
JEI.removeAndHide(<netherex:wither_bone_helmet>);
JEI.removeAndHide(<netherex:wither_bone_chestplate>);
JEI.removeAndHide(<netherex:wither_bone_leggings>);
JEI.removeAndHide(<netherex:wither_bone_boots>);
JEI.removeAndHide(<netherex:orange_salamander_hide_helmet>);
JEI.removeAndHide(<netherex:orange_salamander_hide_chestplate>);
JEI.removeAndHide(<netherex:orange_salamander_hide_leggings>);
JEI.removeAndHide(<netherex:orange_salamander_hide_boots>);
JEI.removeAndHide(<netherex:black_salamander_hide_helmet>);
JEI.removeAndHide(<netherex:black_salamander_hide_chestplate>);
JEI.removeAndHide(<netherex:black_salamander_hide_leggings>);
JEI.removeAndHide(<netherex:black_salamander_hide_boots>);

# SSM
JEI.removeAndHide(<supersoundmuffler:sound_muffler_bauble>);

# IP
recipes.removeByRegex("immersiveposts:recipes/metal_rods/\\w+");

# WG
recipes.removeByMod("weirdinggadget");
TableCrafting.addShaped(<weirdinggadget:weirding_gadget>, [
    [<ore:ingotElectrum>, null, <ore:ingotElectrum>, null, <ore:ingotElectrum>],
    [null, <ore:stickElectrum>, <ore:stickElectrum>, <ore:stickElectrum>, null],
    [null, <ore:blockElectrum>, <ore:enderpearl>, <ore:blockElectrum>, null],
    [null, <ore:blockElectrum>, <ore:ingotAluminum>, <ore:blockElectrum>, null],
    [null, <ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>, null]
]);

# Baubles
JEI.removeAndHide(<baubles:ring>);

# MF
recipes.removeByMod("magicfeather");
recipes.addShaped("custom/magic_feather", <magicfeather:magicfeather>, [
    [<minecraft:feather>, <minecraft:feather>, <minecraft:feather>],
    [<minecraft:feather>, <extendedcrafting:singularity_ultimate>, <minecraft:feather>],
    [<minecraft:feather>, <minecraft:feather>, <minecraft:feather>]
]);

# PF
recipes.removeByMod("potionfingers");
recipes.addShaped("custom/potion_ring", <potionfingers:ring:0>, [
    [<minecraft:diamond>, <ore:nuggetGold>, null],
    [<ore:nuggetGold>, null, <ore:nuggetGold>],
    [null, <ore:nuggetGold>, null]
]);
recipes.addShapeless("custom/potion_ring_speed", <potionfingers:ring:1>.withTag({effect: "minecraft:speed"}), [
    <extendedcrafting:singularity_ultimate>, <potionfingers:ring:0>,
    <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"})
]);
recipes.addShapeless("custom/potion_ring_haste", <potionfingers:ring:1>.withTag({effect: "minecraft:haste"}), [
    <extendedcrafting:singularity_ultimate>, <potionfingers:ring:0>,
    <minecraft:potion>.withTag({Potion: "quark:strong_haste"})
]);
recipes.addShapeless("custom/potion_ring_resist", <potionfingers:ring:1>.withTag({effect: "minecraft:resistance"}), [
    <extendedcrafting:singularity_ultimate>, <potionfingers:ring:0>,
    <minecraft:potion>.withTag({Potion: "quark:strong_resistance"})
]);
recipes.addShapeless("custom/potion_ring_jump", <potionfingers:ring:1>.withTag({effect: "minecraft:jump_boost"}), [
    <extendedcrafting:singularity_ultimate>, <potionfingers:ring:0>,
    <minecraft:potion>.withTag({Potion: "minecraft:strong_leaping"})
]);
recipes.addShapeless("custom/potion_ring_strength", <potionfingers:ring:1>.withTag({effect: "minecraft:strength"}), [
    <extendedcrafting:singularity_ultimate>, <potionfingers:ring:0>,
    <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"})
]);
recipes.addShapeless("custom/potion_ring_regen", <potionfingers:ring:1>.withTag({effect: "minecraft:regeneration"}), [
    <extendedcrafting:singularity_ultimate>, <potionfingers:ring:0>,
    <minecraft:potion>.withTag({Potion: "minecraft:strong_regeneration"})
]);