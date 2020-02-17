#modloaded enderio

import mods.jei.JEI;
import mods.extendedcrafting.TableCrafting;
import mods.enderio.AlloySmelter;

JEI.removeAndHide(<enderio:item_material:9>);
JEI.removeAndHide(<enderio:item_material:24>);
JEI.removeAndHide(<enderio:item_material:25>);
JEI.removeAndHide(<enderio:item_material:26>);

# Crystalline Pink Slime, Energetic Silver, Vivid Alloy
JEI.removeAndHide(<enderio:block_alloy_endergy:4>);
JEI.removeAndHide(<enderio:item_alloy_endergy_ingot:4>);
JEI.removeAndHide(<enderio:item_alloy_endergy_nugget:4>);
JEI.removeAndHide(<enderio:item_alloy_endergy_ball:4>);
JEI.removeAndHide(<enderio:block_alloy_endergy:5>);
JEI.removeAndHide(<enderio:item_alloy_endergy_ingot:5>);
JEI.removeAndHide(<enderio:item_alloy_endergy_nugget:5>);
JEI.removeAndHide(<enderio:item_alloy_endergy_ball:5>);
JEI.removeAndHide(<enderio:block_alloy_endergy:6>);
JEI.removeAndHide(<enderio:item_alloy_endergy_ingot:6>);
JEI.removeAndHide(<enderio:item_alloy_endergy_nugget:6>);
JEI.removeAndHide(<enderio:item_alloy_endergy_ball:6>);
JEI.removeAndHide(<enderio:item_endergy_conduit:7>);
JEI.removeAndHide(<enderio:item_endergy_conduit:9>);

recipes.removeByRecipeName("enderio:gear_stone");
recipes.removeByRecipeName("enderio:tweak_stick_from_wood");
recipes.removeByRecipeName("enderio:tweak_chest_from_wood");
recipes.removeByRecipeName("enderio:tweak_wood_hopper");

recipes.removeByRecipeName("enderio:x_p_rod");
recipes.addShaped("custom/xp_rod", <enderio:item_xp_transfer>, [
    [null, null, <ore:ingotSoularium>],
    [null, <ore:ingotVibrantAlloy>, null],
    [<ore:ingotSoularium>, null, null]
]);

recipes.removeByRecipeName("enderio:glider_wing");
recipes.addShaped("custom/glider_wing1", <enderio:item_material:6>, [
    [null, null, <ore:nuggetDarkSteel>],
    [null, <ore:nuggetDarkSteel>, <ore:hideTanned>],
    [<ore:nuggetDarkSteel>, <ore:hideTanned>, <ore:hideTanned>]
]);
recipes.addShaped("custom/glider_wing2", <enderio:item_material:6>, [
    [<ore:nuggetDarkSteel>, null, null],
    [<ore:hideTanned>, <ore:nuggetDarkSteel>, null],
    [<ore:hideTanned>, <ore:hideTanned>, <ore:nuggetDarkSteel>]
]);

# Rename Soularium Dust
<enderio:item_material:74>.displayName = "Soularium Grit";

# Brewing Stand
recipes.addShaped("custom/brewing_stand", <minecraft:brewing_stand>, [
    [<ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>, <ore:nuggetDarkSteel>],
    [null, <minecraft:blaze_rod>, null],
    [<ore:ingotIronEquiv>, <ore:ingotIronEquiv>, <ore:ingotIronEquiv>]
]);

# Stellar Alloy (required NBT)
AlloySmelter.addRecipe(<enderio:item_alloy_endergy_ingot:3> * 2,
	[<ore:ingotMelodicAlloy>, <ore:netherStar>, <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:shulker"})],
	20000,
	1.0 as float);

# Custom Tools / Armor
recipes.remove(<enderio:item_dark_steel_chestplate>);
TableCrafting.addShaped(<enderio:item_dark_steel_chestplate>, [
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, null, <ore:plateDarkSteel>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <ore:gearDark>, <ore:plateDarkSteel>, <ore:gearDark>, <ore:plateDarkSteel>],
    [null, <ore:plateDarkSteel>, <enderio:item_basic_capacitor:1>, <ore:plateDarkSteel>, null],
    [null, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, null]
]);

recipes.remove(<enderio:item_dark_steel_helmet>);
TableCrafting.addShaped(<enderio:item_dark_steel_helmet>, [
    [null, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, null],
    [<ore:plateDarkSteel>, <ore:gearDark>, <enderio:item_basic_capacitor:1>, <ore:gearDark>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, null, null, null, <ore:plateDarkSteel>]
]);

recipes.remove(<enderio:item_dark_steel_boots>);
TableCrafting.addShaped(<enderio:item_dark_steel_boots>, [
    [null, <ore:plateDarkSteel>, null, <ore:plateDarkSteel>, null],
    [<ore:plateDarkSteel>, <enderio:item_basic_capacitor:1>, null, <enderio:item_basic_capacitor:1>, <ore:plateDarkSteel>],
    [<ore:ingotDarkSteel>, <ore:gearDark>, null, <ore:gearDark>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:item_dark_steel_leggings>);
TableCrafting.addShaped(<enderio:item_dark_steel_leggings>, [
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, <enderio:item_basic_capacitor:1>, <ore:plateDarkSteel>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <ore:gearDark>, <ore:plateDarkSteel>, <ore:gearDark>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, null, <ore:plateDarkSteel>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, null, <ore:plateDarkSteel>, <ore:plateDarkSteel>],
    [<ore:plateDarkSteel>, <ore:plateDarkSteel>, null, <ore:plateDarkSteel>, <ore:plateDarkSteel>]
]);

recipes.remove(<enderio:item_dark_steel_sword>);
TableCrafting.addShaped(<enderio:item_dark_steel_sword>, [
	[null, null, null, null, <ore:ingotDarkSteel>], 
	[null, <ore:ingotDarkSteel>, null, <ore:ingotDarkSteel>, null], 
	[null, <ore:ingotDarkSteel>, <ore:gearDark>, null, null], 
	[null, <enderio:item_basic_capacitor:1>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, null], 
	[<ore:stickTreatedWood>, null, null, null, null]
]);

recipes.remove(<enderio:item_dark_steel_pickaxe>);
TableCrafting.addShaped(<enderio:item_dark_steel_pickaxe>, [
	[null, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, null], 
	[null, null, null, <ore:gearDark>, <ore:ingotDarkSteel>], 
	[null, null, <enderio:item_basic_capacitor:1>, null, <ore:ingotDarkSteel>], 
	[null, <ore:stickTreatedWood>, null, null, <ore:ingotDarkSteel>], 
	[<ore:stickTreatedWood>, null, null, null, null]
]);

recipes.remove(<enderio:item_dark_steel_axe>);
TableCrafting.addShaped(<enderio:item_dark_steel_axe>, [
	[null, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, null, null], 
	[null, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:gearDark>, null], 
	[null, null, <enderio:item_basic_capacitor:1>, <ore:ingotDarkSteel>, null], 
	[null, <ore:stickTreatedWood>, null, null, null], 
	[<ore:stickTreatedWood>, null, null, null, null]
]);

recipes.remove(<enderio:item_dark_steel_bow>);
TableCrafting.addShaped(<enderio:item_dark_steel_bow>, [
	[null, null, <ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:string>], 
	[<ore:ingotDarkSteel>, <ore:stickTreatedWood>, null, null, <ore:string>], 
	[<ore:skullSkeletalContractor>, null, null, null, <ore:string>], 
	[<ore:ingotDarkSteel>, <ore:stickTreatedWood>, null, null, <ore:string>], 
	[null, null, <ore:stickTreatedWood>, <ore:stickTreatedWood>, <ore:string>]
]);

recipes.remove(<enderio:item_dark_steel_shears>);
TableCrafting.addShaped(<enderio:item_dark_steel_shears>, [
	[null, null, <ore:ingotDarkSteel>, <ore:nuggetDarkSteel>, null], 
	[null, <ore:ingotDarkSteel>, <ore:nuggetDarkSteel>, null, <ore:nuggetDarkSteel>], 
	[null, <ore:ingotDarkSteel>, null, <ore:nuggetDarkSteel>, <ore:ingotDarkSteel>], 
	[null, <enderio:item_basic_capacitor:1>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, null], 
	[<ore:gearDark>, null, null, null, null]
]);

recipes.remove(<enderio:item_dark_steel_crook>);
TableCrafting.addShaped(<enderio:item_dark_steel_crook>, [
	[null, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:gearDark>], 
	[<ore:ingotDarkSteel>, null, null, <enderio:item_basic_capacitor:1>, <ore:nuggetDarkSteel>], 
	[null, null, <ore:stickTreatedWood>, null, null], 
	[null, <ore:stickTreatedWood>, null, null, null], 
	[<ore:stickTreatedWood>, null, null, null, null]
]);

recipes.remove(<enderio:item_dark_steel_hand>);
TableCrafting.addShaped(<enderio:item_dark_steel_hand>, [
	[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:stickTreatedWood>], 
	[null, <ore:nuggetDarkSteel>, null, <ore:gearDark>, <enderio:item_basic_capacitor:1>], 
	[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:stickTreatedWood>], 
	[null, null, null, null, <ore:stickTreatedWood>], 
	[null, null, null, null, <ore:stickTreatedWood>]
]);

recipes.remove(<enderio:item_dark_steel_shield>);
TableCrafting.addShaped(<enderio:item_dark_steel_shield>, [
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:plateDarkSteel>, <enderio:item_basic_capacitor:1>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:gearDark>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:item_end_steel_chestplate>);
TableCrafting.addShaped(<enderio:item_end_steel_chestplate>, [
    [null, <ore:plateEndSteel>, null, null, null, <ore:plateEndSteel>, null],
    [<ore:plateEndSteel>, <ore:plateEndSteel>, null, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>],
    [<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>],
    [null, <ore:plateEndSteel>, <ore:gearEnergized>, <enderio:item_material:56>, <ore:gearEnergized>, <ore:plateEndSteel>, null],
    [null, <ore:plateEndSteel>, <ore:plateEndSteel>, <enderio:item_material:56>, <ore:plateEndSteel>, <ore:plateEndSteel>, null],
    [null, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, null],
    [null, null, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, null, null]
]);

recipes.remove(<enderio:item_end_steel_helmet>);
TableCrafting.addShaped(<enderio:item_end_steel_helmet>, [
	[null, null, <ore:ingotEndSteel>, <ore:plateEndSteel>, <ore:ingotEndSteel>, null, null], 
	[null, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, null], 
	[<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <enderio:item_material:56>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>], 
	[<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:gearEnergized>, <enderio:item_material:56>, <ore:gearEnergized>, <ore:plateEndSteel>, <ore:plateEndSteel>], 
	[<ore:ingotEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:ingotEndSteel>]
]);

recipes.remove(<enderio:item_end_steel_boots>);
TableCrafting.addShaped(<enderio:item_end_steel_boots>, [
	[null, <ore:plateEndSteel>, <ore:plateEndSteel>, null, <ore:plateEndSteel>, <ore:plateEndSteel>, null], 
	[null, <ore:plateEndSteel>, <ore:plateEndSteel>, null, <ore:plateEndSteel>, <ore:plateEndSteel>, null], 
	[null, <ore:plateEndSteel>, <enderio:item_material:56>, null, <enderio:item_material:56>, <ore:plateEndSteel>, null], 
	[<ore:ingotEndSteel>, <ore:plateEndSteel>, <ore:gearEnergized>, null, <ore:gearEnergized>, <ore:plateEndSteel>, <ore:ingotEndSteel>], 
	[<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>, null, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>]
]);

recipes.remove(<enderio:item_end_steel_leggings>);
TableCrafting.addShaped(<enderio:item_end_steel_leggings>, [
	[<ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:gearEnergized>, <ore:gearEnergized>, <ore:ingotEndSteel>, <ore:ingotEndSteel>], 
	[<ore:ingotEndSteel>, <enderio:item_material:56>, <ore:plateEndSteel>, <ore:plateEndSteel>, <enderio:item_material:56>, <ore:ingotEndSteel>], 
	[<ore:plateEndSteel>, <ore:plateEndSteel>, null, null, <ore:plateEndSteel>, <ore:plateEndSteel>], 
	[<ore:plateEndSteel>, <ore:plateEndSteel>, null, null, <ore:plateEndSteel>, <ore:plateEndSteel>], 
	[<ore:plateEndSteel>, <ore:plateEndSteel>, null, null, <ore:plateEndSteel>, <ore:plateEndSteel>], 
	[<ore:plateEndSteel>, <ore:plateEndSteel>, null, null, <ore:plateEndSteel>, <ore:plateEndSteel>], 
	[<ore:plateEndSteel>, <ore:plateEndSteel>, null, null, <ore:plateEndSteel>, <ore:plateEndSteel>]
]);

recipes.remove(<enderio:item_end_steel_sword>);
TableCrafting.addShaped(<enderio:item_end_steel_sword>, [
	[null, null, null, null, null, <ore:nuggetEndSteel>, <ore:ingotEndSteel>], 
	[null, null, null, null, <ore:nuggetEndSteel>, <ore:ingotEndSteel>, <ore:nuggetEndSteel>], 
	[null, <ore:ingotEndSteel>, null, <ore:nuggetEndSteel>, <ore:ingotEndSteel>, <ore:nuggetEndSteel>, null], 
	[null, <ore:ingotEndSteel>, <ore:nuggetEndSteel>, <ore:gearEnergized>, <ore:nuggetEndSteel>, null, null], 
	[null, <ore:ingotEndSteel>, <enderio:item_material:56>, <ore:nuggetEndSteel>, null, null, null], 
	[null, <ore:itemInfinityRod>, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>, null, null], 
	[<ore:itemInfinityRod>, null, null, null, null, null, null]
]);

recipes.remove(<enderio:item_end_steel_pickaxe>);
TableCrafting.addShaped(<enderio:item_end_steel_pickaxe>, [
	[<ore:nuggetEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:nuggetEndSteel>, null], 
	[null, null, null, <ore:nuggetEndSteel>, <ore:ingotEndSteel>, <ore:gearEnergized>, <ore:nuggetEndSteel>], 
	[null, null, null, null, <enderio:item_material:56>, <ore:ingotEndSteel>, <ore:ingotEndSteel>], 
	[null, null, null, <ore:itemInfinityRod>, null, <ore:nuggetEndSteel>, <ore:ingotEndSteel>], 
	[null, null, <ore:itemInfinityRod>, null, null, null, <ore:ingotEndSteel>], 
	[null, <ore:itemInfinityRod>, null, null, null, null, <ore:ingotEndSteel>], 
	[<ore:itemInfinityRod>, null, null, null, null, null, <ore:nuggetEndSteel>]
]);

recipes.remove(<enderio:item_end_steel_axe>);
TableCrafting.addShaped(<enderio:item_end_steel_axe>, [
	[null, null, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:nuggetEndSteel>, null], 
	[null, null, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:gearEnergized>, <ore:nuggetEndSteel>], 
	[null, null, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <enderio:item_material:56>, <ore:nuggetEndSteel>, null], 
	[null, null, null, <ore:itemInfinityRod>, <ore:nuggetEndSteel>, null, null], 
	[null, null, <ore:itemInfinityRod>, null, null, null, null], 
	[null, <ore:itemInfinityRod>, null, null, null, null, null], 
	[<ore:itemInfinityRod>, null, null, null, null, null, null]
]);

recipes.remove(<enderio:item_end_steel_bow>);
TableCrafting.addShaped(<enderio:item_end_steel_bow>, [
	[null, null, null, <ore:itemInfinityRod>, <ore:itemInfinityRod>, <ore:itemInfinityRod>, <ore:string>], 
	[null, null, <ore:gearEnergized>, null, null, null, <ore:string>], 
	[null, <ore:ingotEndSteel>, <ore:itemInfinityRod>, null, null, null, <ore:string>], 
	[null, <ore:skullSkeletalContractor>, <enderio:item_material:56>, null, null, null, <ore:string>], 
	[null, <ore:ingotEndSteel>, <ore:itemInfinityRod>, null, null, null, <ore:string>], 
	[null, null, <ore:gearEnergized>, <ore:itemInfinityRod>, null, null, <ore:string>], 
	[null, null, null, null, <ore:itemInfinityRod>, <ore:itemInfinityRod>, <ore:string>]
]);

recipes.remove(<enderio:item_end_steel_shield>);
TableCrafting.addShaped(<enderio:item_end_steel_shield>, [
	[<ore:ingotEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:ingotEndSteel>], 
	[<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>], 
	[<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:gearEnergized>, <ore:plateEndSteel>, <ore:plateEndSteel>], 
	[<ore:plateEndSteel>, <ore:plateEndSteel>, <enderio:item_material:56>, <ore:plateEndSteel>, <ore:plateEndSteel>], 
	[<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:gearEnergized>, <ore:plateEndSteel>, <ore:plateEndSteel>], 
	[<ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>], 
	[<ore:ingotEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:plateEndSteel>, <ore:ingotEndSteel>]
]);

recipes.remove(<enderio:item_stellar_alloy_chestplate>);
TableCrafting.addShaped(<enderio:item_stellar_alloy_chestplate>, [
    [null, <ore:plateStellarAlloy>, null, null, null, <ore:plateStellarAlloy>, null],
    [<ore:plateStellarAlloy>, <ore:plateStellarAlloy>, null, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>],
    [<ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>],
    [null, <ore:plateStellarAlloy>, <enderio:item_capacitor_stellar>, <ore:gearVibrant>, <enderio:item_capacitor_stellar>, <ore:plateStellarAlloy>, null],
    [null, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:gearVibrant>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, null],
    [null, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, null],
    [null, null, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, null, null]
]);

recipes.remove(<enderio:item_stellar_alloy_helmet>);
TableCrafting.addShaped(<enderio:item_stellar_alloy_helmet>, [
	[null, null, <ore:ingotStellarAlloy>, <ore:plateStellarAlloy>, <ore:ingotStellarAlloy>, null, null], 
	[null, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, null], 
	[<ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <enderio:item_capacitor_stellar>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>], 
	[<ore:ingotStellarAlloy>, <ore:plateStellarAlloy>, <ore:gearVibrant>, <ore:plateStellarAlloy>, <ore:gearVibrant>, <ore:plateStellarAlloy>, <ore:ingotStellarAlloy>], 
	[<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>]
]);

recipes.remove(<enderio:item_stellar_alloy_boots>);
TableCrafting.addShaped(<enderio:item_stellar_alloy_boots>, [
	[null, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, null, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, null], 
	[null, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, null, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, null], 
	[null, <ore:plateStellarAlloy>, <enderio:item_capacitor_stellar>, null, <enderio:item_capacitor_stellar>, <ore:plateStellarAlloy>, null], 
	[<ore:ingotStellarAlloy>, <ore:plateStellarAlloy>, <ore:gearVibrant>, null, <ore:gearVibrant>, <ore:plateStellarAlloy>, <ore:ingotStellarAlloy>], 
	[<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, null, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>]
]);

recipes.remove(<enderio:item_stellar_alloy_leggings>);
TableCrafting.addShaped(<enderio:item_stellar_alloy_leggings>, [
	[<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:gearVibrant>, <ore:gearVibrant>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>], 
	[<ore:plateStellarAlloy>, <enderio:item_capacitor_stellar>, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>, <enderio:item_capacitor_stellar>, <ore:plateStellarAlloy>], 
	[<ore:plateStellarAlloy>, <ore:plateStellarAlloy>, null, null, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>], 
	[<ore:plateStellarAlloy>, <ore:plateStellarAlloy>, null, null, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>], 
	[<ore:plateStellarAlloy>, <ore:plateStellarAlloy>, null, null, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>], 
	[<ore:plateStellarAlloy>, <ore:plateStellarAlloy>, null, null, <ore:plateStellarAlloy>, <ore:plateStellarAlloy>], 
	[<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, null, null, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>]
]);

recipes.remove(<enderio:item_stellar_alloy_sword>);
TableCrafting.addShaped(<enderio:item_stellar_alloy_sword>, [
	[null, null, null, null, null, <ore:nuggetStellarAlloy>, <ore:ingotStellarAlloy>], 
	[null, null, null, null, <ore:nuggetStellarAlloy>, <ore:ingotStellarAlloy>, <ore:nuggetStellarAlloy>], 
	[null, <ore:ingotStellarAlloy>, null, <ore:nuggetStellarAlloy>, <ore:ingotStellarAlloy>, <ore:nuggetStellarAlloy>, null], 
	[null, <ore:ingotStellarAlloy>, <enderio:item_capacitor_stellar>, <ore:gearVibrant>, <ore:nuggetStellarAlloy>, null, null], 
	[null, <ore:ingotStellarAlloy>, <ore:skullSentientEnder>, <enderio:item_capacitor_stellar>, null, null, null], 
	[null, <ore:itemInfinityRod>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, null, null], 
	[<ore:itemInfinityRod>, null, null, null, null, null, null]
]);

recipes.remove(<enderio:item_stellar_alloy_pickaxe>);
TableCrafting.addShaped(<enderio:item_stellar_alloy_pickaxe>, [
	[null, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:nuggetStellarAlloy>, null], 
	[null, null, null, <ore:nuggetStellarAlloy>, <enderio:item_capacitor_stellar>, <ore:gearVibrant>, <ore:nuggetStellarAlloy>], 
	[null, null, null, null, <ore:skullSentientEnder>, <enderio:item_capacitor_stellar>, <ore:ingotStellarAlloy>], 
	[null, null, null, <ore:itemInfinityRod>, null, <ore:nuggetStellarAlloy>, <ore:ingotStellarAlloy>], 
	[null, null, <ore:itemInfinityRod>, null, null, null, <ore:ingotStellarAlloy>], 
	[null, <ore:itemInfinityRod>, null, null, null, null, <ore:ingotStellarAlloy>], 
	[<ore:itemInfinityRod>, null, null, null, null, null, null]
]);

recipes.remove(<enderio:item_stellar_alloy_axe>);
TableCrafting.addShaped(<enderio:item_stellar_alloy_axe>, [
	[null, null, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:nuggetStellarAlloy>, null], 
	[null, null, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <enderio:item_capacitor_stellar>, <ore:gearVibrant>, <ore:nuggetStellarAlloy>], 
	[null, null, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:skullSentientEnder>, <enderio:item_capacitor_stellar>, null], 
	[null, null, null, <ore:itemInfinityRod>, <ore:nuggetStellarAlloy>, null, null], 
	[null, null, <ore:itemInfinityRod>, null, null, null, null], 
	[null, <ore:itemInfinityRod>, null, null, null, null, null], 
	[<ore:itemInfinityRod>, null, null, null, null, null, null]
]);


// Machines

recipes.remove(<enderio:block_alloy_smelter>);
TableCrafting.addShaped(<enderio:block_alloy_smelter>, [
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:plateDarkSteel>, <minecraft:furnace>, <minecraft:furnace>, <minecraft:furnace>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:gearDark>, <ore:itemMachineChassi>, <ore:gearDark>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <minecraft:furnace>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_sag_mill>);
TableCrafting.addShaped(<enderio:block_sag_mill>, [
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:plateDarkSteel>, <minecraft:piston>, <minecraft:piston>, <minecraft:piston>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:gearDark>, <ore:itemMachineChassi>, <ore:gearDark>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <minecraft:piston>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_vat>);
TableCrafting.addShaped(<enderio:block_vat>, [
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:plateDarkSteel>, <enderio:block_tank>, <minecraft:bucket>, <enderio:block_tank>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:gearDark>, <ore:itemMachineChassi>, <ore:gearDark>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <minecraft:furnace>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_wired_charger>);
TableCrafting.addShaped(<enderio:block_wired_charger>, [
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:plateDarkSteel>, <enderio:block_cap_bank:1>, <ore:blockGlassHardened>, <enderio:block_cap_bank:1>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:gearDark>, <ore:itemMachineChassi>, <ore:gearDark>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <ore:blockLead>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_wireless_charger>);
TableCrafting.addShaped(<enderio:block_wireless_charger>, [
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:itemWirelessDish>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:plateDarkSteel>, <enderio:block_cap_bank:1>, <enderio:block_cap_bank:1>, <enderio:block_cap_bank:1>, <ore:plateDarkSteel>], 
	[<ore:itemWirelessDish>, <ore:gearDark>, <ore:itemMachineChassi>, <ore:gearDark>, <ore:itemWirelessDish>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <ore:blockLead>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_crafter>);
TableCrafting.addShaped(<enderio:block_crafter>, [
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:craftingTableWood>, <minecraft:piston>, <ore:craftingTableWood>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:gearDark>, <ore:itemMachineChassi>, <ore:gearDark>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <minecraft:piston>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_slice_and_splice>);
TableCrafting.addShaped(<enderio:block_slice_and_splice>, [
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:ingotSoularium>], 
	[<ore:plateSoularium>, <minecraft:piston>, <ore:barsDarkSteel>, <minecraft:piston>, <ore:plateSoularium>], 
	[<ore:plateSoularium>, <ore:gearEnergized>, <ore:itemSoulMachineChassi>, <ore:gearEnergized>, <ore:plateSoularium>], 
	[<ore:plateSoularium>, <ore:ingotElectricalSteel>, <ore:barsDarkSteel>, <ore:ingotElectricalSteel>, <ore:plateSoularium>], 
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:ingotSoularium>]
]);

recipes.remove(<enderio:block_soul_binder>);
TableCrafting.addShaped(<enderio:block_soul_binder>, [
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:ingotSoularium>], 
	[<ore:plateSoularium>, <minecraft:skull:0>, <minecraft:skull:2>, <minecraft:skull:4>, <ore:plateSoularium>], 
	[<ore:plateSoularium>, <ore:gearEnergized>, <ore:itemSoulMachineChassi>, <ore:gearEnergized>, <ore:plateSoularium>], 
	[<ore:plateSoularium>, <ore:ingotElectricalSteel>, <enderio:block_enderman_skull>, <ore:ingotElectricalSteel>, <ore:plateSoularium>], 
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:ingotSoularium>]
]);

recipes.remove(<enderio:block_powered_spawner>);
TableCrafting.addShaped(<enderio:block_powered_spawner>, [
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:ingotSoularium>], 
	[<ore:plateSoularium>, <enderio:item_soul_vial>, <ore:barsDarkSteel>, <enderio:item_soul_vial>, <ore:plateSoularium>], 
	[<ore:plateSoularium>, <ore:gearEnergized>, <ore:itemSoulMachineChassi>, <ore:gearEnergized>, <ore:plateSoularium>], 
	[<ore:plateSoularium>, <ore:ingotElectricalSteel>, <ore:barsDarkSteel>, <ore:ingotElectricalSteel>, <ore:plateSoularium>], 
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:ingotSoularium>]
]);

recipes.remove(<enderio:block_farm_station>);
TableCrafting.addShaped(<enderio:block_farm_station>, [
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:ingotSoularium>], 
	[<ore:barsDarkSteel>, <minecraft:bucket>, <enderio:block_buffer>, <minecraft:bucket>, <ore:barsDarkSteel>], 
	[<ore:plateSoularium>, <ore:gearEnergized>, <ore:itemSoulMachineChassi>, <ore:gearEnergized>, <ore:plateSoularium>], 
	[<ore:plateSoularium>, <ore:ingotElectricalSteel>, <ironchest:iron_chest:7>, <ore:ingotElectricalSteel>, <ore:plateSoularium>], 
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:ingotSoularium>]
]);

recipes.remove(<enderio:block_stirling_generator>);
TableCrafting.addShaped(<enderio:block_stirling_generator>, [
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:barsDarkSteel>, <minecraft:furnace>, <ore:barsDarkSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:gearDark>, <ore:itemMachineChassi>, <ore:gearDark>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <ore:barsDarkSteel>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_combustion_generator>);
TableCrafting.addShaped(<enderio:block_combustion_generator>, [
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, null, <ore:plateDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:plateDarkSteel>, <enderio:block_simple_furnace>, null, <enderio:block_simple_furnace>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:gearDark>, <ore:itemMachineChassi>, <ore:gearDark>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <enderio:block_reinforced_obsidian>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, null, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_zombie_generator>);
TableCrafting.addShaped(<enderio:block_zombie_generator>, [
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:blockGlassHardened>, null, <ore:itemInfinityRod>, null, <ore:blockGlassHardened>], 
	[<ore:blockGlassHardened>, null, <ore:skullZombieElectrode>, null, <ore:blockGlassHardened>], 
	[<ore:blockGlassHardened>, null, <ore:itemInfinityRod>, null, <ore:blockGlassHardened>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_franken_zombie_generator>);
TableCrafting.addShaped(<enderio:block_franken_zombie_generator>, [
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:ingotSoularium>], 
	[<ore:blockGlassHardened>, null, <ore:itemInfinityRod>, null, <ore:blockGlassHardened>], 
	[<ore:blockGlassHardened>, null, <ore:skullZombieController>, null, <ore:blockGlassHardened>], 
	[<ore:blockGlassHardened>, null, <ore:itemInfinityRod>, null, <ore:blockGlassHardened>], 
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:plateSoularium>, <ore:ingotSoularium>]
]);

recipes.remove(<enderio:block_ender_generator>);
TableCrafting.addShaped(<enderio:block_ender_generator>, [
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:blockGlassHardened>, null, <ore:itemInfinityRod>, null, <ore:blockGlassHardened>], 
	[<ore:blockGlassHardened>, null, <ore:skullEnderResonator>, null, <ore:blockGlassHardened>], 
	[<ore:blockGlassHardened>, null, <ore:itemInfinityRod>, null, <ore:blockGlassHardened>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_lava_generator>);
TableCrafting.addShaped(<enderio:block_lava_generator>, [
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotBrickNetherGlazed>, <ore:ingotBrickNetherGlazed>, <ore:ingotBrickNetherGlazed>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <enderio:block_tank:1>, <ore:itemMachineChassi>, <enderio:block_tank:1>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotBrickNetherGlazed>, <ore:ingotBrickNetherGlazed>, <ore:ingotBrickNetherGlazed>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_killer_joe>);
TableCrafting.addShaped(<enderio:block_killer_joe>, [
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:blockGlassHardened>, null, <ore:itemInfinityRod>, null, <ore:blockGlassHardened>], 
	[<ore:blockGlassHardened>, <ore:gearDark>, <ore:skullZombieFrankenstein>, <ore:gearDark>, <ore:blockGlassHardened>], 
	[<ore:blockGlassHardened>, null, <ore:itemInfinityRod>, null, <ore:blockGlassHardened>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_enchanter>);
TableCrafting.addShaped(<enderio:block_enchanter>, [
	[null, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, null], 
	[<ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:book>, <ore:plateDarkSteel>, <ore:plateDarkSteel>], 
	[null, <ore:ingotDarkSteel>, <minecraft:enchanting_table>, <ore:ingotDarkSteel>, null], 
	[null, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, null], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_transceiver>);
TableCrafting.addShaped(<enderio:block_transceiver>, [
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:blockGlassHardened>, <ore:ingotElectricalSteel>, <ore:skullEnderResonator>, <ore:ingotElectricalSteel>, <ore:blockGlassHardened>], 
	[<ore:blockGlassHardened>, null, <ore:itemEnderCrystal>, null, <ore:blockGlassHardened>], 
	[<ore:blockGlassHardened>, <ore:ingotElectricalSteel>, <enderio:item_basic_capacitor:2>, <ore:ingotElectricalSteel>, <ore:blockGlassHardened>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_tele_pad>);
TableCrafting.addShaped(<enderio:block_tele_pad>, [
	[<ore:ingotDarkSteel>, <ore:nuggetVibrantAlloy>, <ore:ingotVibrantAlloy>, <ore:nuggetVibrantAlloy>, <ore:ingotDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <enderio:block_travel_anchor>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <enderio:item_basic_capacitor>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_attractor_obelisk>);
TableCrafting.addShaped(<enderio:block_attractor_obelisk>, [
	[null, null, <ore:itemAttractorCrystal>, null, null], 
	[null, null, null, null, null], 
	[null, <ore:ingotSoularium>, <enderio:item_basic_capacitor:1>, <ore:ingotSoularium>, null], 
	[<ore:ingotSoularium>, <ore:ingotEnergeticAlloy>, <ore:itemSoulMachineChassi>, <ore:ingotEnergeticAlloy>, <ore:ingotSoularium>], 
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:gearDark>, <ore:plateSoularium>, <ore:ingotSoularium>]
]);

recipes.remove(<enderio:block_aversion_obelisk>);
TableCrafting.addShaped(<enderio:block_aversion_obelisk>, [
	[null, null, <ore:itemSkull>, null, null], 
	[null, null, null, null, null], 
	[null, <ore:ingotSoularium>, <enderio:item_basic_capacitor:1>, <ore:ingotSoularium>, null], 
	[<ore:ingotSoularium>, <ore:ingotEnergeticAlloy>, <ore:itemSoulMachineChassi>, <ore:ingotEnergeticAlloy>, <ore:ingotSoularium>], 
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:gearDark>, <ore:plateSoularium>, <ore:ingotSoularium>]
]);

recipes.remove(<enderio:block_inhibitor_obelisk>);
TableCrafting.addShaped(<enderio:block_inhibitor_obelisk>, [
	[null, null, <ore:enderpearl>, null, null], 
	[null, null, null, null, null], 
	[null, <ore:ingotSoularium>, <enderio:item_basic_capacitor:1>, <ore:ingotSoularium>, null], 
	[<ore:ingotSoularium>, <ore:ingotEnergeticAlloy>, <ore:itemSoulMachineChassi>, <ore:ingotEnergeticAlloy>, <ore:ingotSoularium>], 
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:gearDark>, <ore:plateSoularium>, <ore:ingotSoularium>]
]);

recipes.remove(<enderio:block_relocator_obelisk>);
TableCrafting.addShaped(<enderio:block_relocator_obelisk>, [
	[null, null, <ore:blockPrismarine>, null, null], 
	[null, null, null, null, null], 
	[null, <ore:ingotSoularium>, <enderio:item_basic_capacitor:1>, <ore:ingotSoularium>, null], 
	[<ore:ingotSoularium>, <ore:ingotEnergeticAlloy>, <ore:itemSoulMachineChassi>, <ore:ingotEnergeticAlloy>, <ore:ingotSoularium>], 
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:gearDark>, <ore:plateSoularium>, <ore:ingotSoularium>]
]);

recipes.remove(<enderio:block_weather_obelisk>);
TableCrafting.addShaped(<enderio:block_weather_obelisk>, [
	[null, <ore:ingotSoularium>, <ore:itemWeatherCrystal>, <ore:ingotSoularium>, null], 
	[<ore:ingotSoularium>, <ore:ingotEnergeticAlloy>, <ore:itemSoulMachineChassi>, <ore:ingotEnergeticAlloy>, <ore:ingotSoularium>], 
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:gearDark>, <ore:plateSoularium>, <ore:ingotSoularium>]
]);

recipes.remove(<enderio:block_experience_obelisk>);
TableCrafting.addShaped(<enderio:block_experience_obelisk>, [
	[null, null, <enderio:item_xp_transfer>, null, null], 
	[null, null, null, null, null], 
	[null, <ore:ingotSoularium>, <ore:ingotEnergeticAlloy>, <ore:ingotSoularium>, null], 
	[<ore:ingotSoularium>, <enderio:block_tank>, <ore:itemSoulMachineChassi>, <enderio:block_tank>, <ore:ingotSoularium>], 
	[<ore:ingotSoularium>, <ore:plateSoularium>, <ore:gearDark>, <ore:plateSoularium>, <ore:ingotSoularium>]
]);


// Enhanced Machines

recipes.remove(<enderio:block_enhanced_alloy_smelter>);
TableCrafting.addShaped(<enderio:block_enhanced_alloy_smelter>, [
	[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:barsDarkSteel>, <ore:barsDarkSteel>, <ore:barsDarkSteel>, <ore:ingotDarkSteel>], 
	[null, <ore:ingotDarkSteel>, <ore:gearVibrant>, <ore:ingotDarkSteel>, null], 
	[<ore:plateDarkSteel>, <ore:gearDark>, <enderio:block_alloy_smelter>, <ore:gearDark>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotEndSteel>, <ore:itemEnhancedMachineChassi>, <ore:ingotEndSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <ore:gearDark>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_enhanced_sag_mill>);
TableCrafting.addShaped(<enderio:block_enhanced_alloy_smelter>, [
	[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:barsDarkSteel>, <ore:barsDarkSteel>, <ore:barsDarkSteel>, <ore:ingotDarkSteel>], 
	[null, <ore:ingotDarkSteel>, <ore:gearVibrant>, <ore:ingotDarkSteel>, null], 
	[<ore:plateDarkSteel>, <ore:gearDark>, <enderio:block_sag_mill>, <ore:gearDark>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotEndSteel>, <ore:itemEnhancedMachineChassi>, <ore:ingotEndSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <ore:gearDark>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_enhanced_vat>);
TableCrafting.addShaped(<enderio:block_enhanced_alloy_smelter>, [
	[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:barsDarkSteel>, <ore:barsDarkSteel>, <ore:barsDarkSteel>, <ore:ingotDarkSteel>], 
	[null, <ore:ingotDarkSteel>, <ore:gearVibrant>, <ore:ingotDarkSteel>, null], 
	[<ore:plateDarkSteel>, <ore:gearDark>, <enderio:block_vat>, <ore:gearDark>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotEndSteel>, <ore:itemEnhancedMachineChassi>, <ore:ingotEndSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <ore:gearDark>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_enhanced_wired_charger>);
TableCrafting.addShaped(<enderio:block_enhanced_alloy_smelter>, [
	[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:barsDarkSteel>, <ore:barsDarkSteel>, <ore:barsDarkSteel>, <ore:ingotDarkSteel>], 
	[null, <ore:ingotDarkSteel>, <ore:gearVibrant>, <ore:ingotDarkSteel>, null], 
	[<ore:plateDarkSteel>, <ore:gearDark>, <enderio:block_wired_charger>, <ore:gearDark>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotEndSteel>, <ore:itemEnhancedMachineChassi>, <ore:ingotEndSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <ore:gearDark>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);

recipes.remove(<enderio:block_enhanced_combustion_generator>);
TableCrafting.addShaped(<enderio:block_enhanced_alloy_smelter>, [
	[<ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:barsDarkSteel>, <ore:barsDarkSteel>, <ore:barsDarkSteel>, <ore:ingotDarkSteel>], 
	[null, <ore:ingotDarkSteel>, <ore:gearVibrant>, <ore:ingotDarkSteel>, null], 
	[<ore:plateDarkSteel>, <ore:gearDark>, <enderio:block_combustion_generator>, <ore:gearDark>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotEndSteel>, <ore:itemEnhancedMachineChassi>, <ore:ingotEndSteel>, <ore:plateDarkSteel>], 
	[<ore:plateDarkSteel>, <ore:ingotElectricalSteel>, <ore:gearDark>, <ore:ingotElectricalSteel>, <ore:plateDarkSteel>], 
	[<ore:ingotDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:plateDarkSteel>, <ore:ingotDarkSteel>]
]);