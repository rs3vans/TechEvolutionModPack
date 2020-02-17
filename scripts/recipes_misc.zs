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
recipes.addShaped("custom/top_probe", <theoneprobe:probe>, [
    [<ore:paneGlassColorless>, <ore:nuggetSilver>, null],
    [null, <enderio:item_basic_capacitor:0>, null],
    [null, null, <ore:ingotSteel>]
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