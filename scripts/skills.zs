import mods.compatskills.Requirement;
import mods.compatskills.Excavation;

// ~~~ Misc ~~~
Excavation.addExcavationLock("reskillable:mining|16");

Requirement.addRequirement(<minecraft:egg>, "reskillable:gathering|3");
Requirement.addRequirement(<minecraft:cactus>, "reskillable:gathering|2");
Requirement.addRequirement(<minecraft:soul_sand>, "reskillable:gathering|6");
Requirement.addRequirement(<minecraft:glowstone>, "reskillable:gathering|6");
Requirement.addRequirement(<minecraft:dye:15>, "reskillable:farming|6"); // bonemeal
Requirement.addRequirement(<minecraft:furnace>, "reskillable:building|2");

Requirement.addRequirement(<rustic:log:1>, "reskillable:gathering|2");

Requirement.addRequirement(<ceramics:faucet:*>, "reskillable:building|2");
Requirement.addRequirement(<ceramics:channel:*>, "reskillable:building|2");
Requirement.addRequirement(<ceramics:porcelain_barrel:*>, "reskillable:building|3");
Requirement.addRequirement(<ceramics:porcelain_barrel_extension:*>, "reskillable:building|3");

Requirement.addRequirement(<chisel:chisel_iron>, "reskillable:building|4");
Requirement.addRequirement(<chisel:chisel_diamond>, "reskillable:building|8");
Requirement.addRequirement(<chisel:chisel_hitech>, "reskillable:building|12");
Requirement.addRequirement(<chisel:auto_chisel>, "reskillable:building|18");


// ~~~ Tools ~~~

// - Misc
Requirement.addRequirement(<minecraft:tnt>, "reskillable:mining|8");
Requirement.addRequirement(<minecraft:fishing_rod>, "reskillable:gathering|5");
Requirement.addRequirement(<minecraft:bucket>, "reskillable:gathering|4");
Requirement.addRequirement(<minecraft:elytra:*>, "reskillable:magic|24", "reskillable:agility|24");

// - Pickaxes
Requirement.addRequirement(<minecraft:iron_pickaxe>, "reskillable:mining|4");
Requirement.addRequirement(<minecraft:golden_pickaxe>, "reskillable:mining|5", "reskillable:magic|5");
Requirement.addRequirement(<minecraft:diamond_pickaxe>, "reskillable:mining|12");
Requirement.addRequirement(<immersiveengineering:pickaxe_steel>, "reskillable:mining|8");
Requirement.addRequirement(<carbonado:carbonado_pickaxe>, "reskillable:mining|18");
Requirement.addRequirement(<enderio:item_dark_steel_pickaxe>, "reskillable:mining|16");
Requirement.addRequirement(<enderio:item_end_steel_pickaxe>, "reskillable:mining|24");
Requirement.addRequirement(<enderio:item_stellar_alloy_pickaxe>, "reskillable:mining|32");

// - Axes
Requirement.addRequirement(<minecraft:iron_axe>, "reskillable:gathering|4", "reskillable:attack|3");
Requirement.addRequirement(<minecraft:golden_axe>, "reskillable:gathering|5", "reskillable:attack|2", "reskillable:magic|5");
Requirement.addRequirement(<minecraft:diamond_axe>, "reskillable:gathering|12", "reskillable:attack|5");
Requirement.addRequirement(<immersiveengineering:axe_steel>, "reskillable:gathering|8", "reskillable:attack|4");
Requirement.addRequirement(<carbonado:carbonado_axe>, "reskillable:gathering|18", "reskillable:attack|7");
Requirement.addRequirement(<enderio:item_dark_steel_axe>, "reskillable:gathering|16", "reskillable:attack|6");
Requirement.addRequirement(<enderio:item_end_steel_axe>, "reskillable:gathering|24", "reskillable:attack|8");
Requirement.addRequirement(<enderio:item_stellar_alloy_axe>, "reskillable:gathering|32", "reskillable:attack|16");

// - Swords
Requirement.addRequirement(<minecraft:iron_sword>, "reskillable:attack|4");
Requirement.addRequirement(<minecraft:golden_sword>, "reskillable:attack|5", "reskillable:magic|5");
Requirement.addRequirement(<minecraft:diamond_sword>, "reskillable:attack|12");
Requirement.addRequirement(<immersiveengineering:sword_steel>, "reskillable:attack|8");
Requirement.addRequirement(<carbonado:carbonado_sword>, "reskillable:attack|18");
Requirement.addRequirement(<enderio:item_dark_steel_sword>, "reskillable:attack|16");
Requirement.addRequirement(<enderio:item_end_steel_sword>, "reskillable:attack|24");
Requirement.addRequirement(<enderio:item_stellar_alloy_sword>, "reskillable:attack|32");

// - Shovels
Requirement.addRequirement(<minecraft:iron_shovel>, "reskillable:gathering|4");
Requirement.addRequirement(<minecraft:golden_shovel>, "reskillable:gathering|5", "reskillable:magic|5");
Requirement.addRequirement(<minecraft:diamond_shovel>, "reskillable:gathering|12");
Requirement.addRequirement(<immersiveengineering:shovel_steel>, "reskillable:gathering|8");
Requirement.addRequirement(<carbonado:carbonado_shovel>, "reskillable:gathering|18");

// - Shears
Requirement.addRequirement(<minecraft:shears>, "reskillable:gathering|5");
Requirement.addRequirement(<enderio:item_dark_steel_shears>, "reskillable:gathering|16");

// - Hoes
Requirement.addRequirement(<minecraft:iron_hoe>, "reskillable:farming|4");
Requirement.addRequirement(<minecraft:golden_hoe>, "reskillable:farming|5", "reskillable:magic|5");
Requirement.addRequirement(<minecraft:diamond_hoe>, "reskillable:farming|12");
Requirement.addRequirement(<carbonado:carbonado_hoe>, "reskillable:farming|18");
Requirement.addRequirement(<enderio:item_dark_steel_crook>, "reskillable:farming|24");

// - Bows
Requirement.addRequirement(<minecraft:bow>, "reskillable:attack|5");
Requirement.addRequirement(<betterwithmods:composite_bow>, "reskillable:attack|8");
Requirement.addRequirement(<enderio:item_dark_steel_bow>, "reskillable:attack|16");
Requirement.addRequirement(<enderio:item_end_steel_bow>, "reskillable:attack|24");


// ~~~ Armor ~~~
Requirement.addRequirement(<minecraft:chainmail_helmet>, "reskillable:defense|3");
Requirement.addRequirement(<minecraft:chainmail_chestplate>, "reskillable:defense|3");
Requirement.addRequirement(<minecraft:chainmail_leggings>, "reskillable:defense|3");
Requirement.addRequirement(<minecraft:chainmail_boots>, "reskillable:defense|3", "reskillable:agility|3");
Requirement.addRequirement(<minecraft:iron_helmet>, "reskillable:defense|4");
Requirement.addRequirement(<minecraft:iron_chestplate>, "reskillable:defense|4");
Requirement.addRequirement(<minecraft:iron_leggings>, "reskillable:defense|4");
Requirement.addRequirement(<minecraft:iron_boots>, "reskillable:defense|4");
Requirement.addRequirement(<minecraft:shield>, "reskillable:defense|5");
Requirement.addRequirement(<minecraft:golden_helmet>, "reskillable:defense|5", "reskillable:magic|5");
Requirement.addRequirement(<minecraft:golden_chestplate>, "reskillable:defense|5", "reskillable:magic|5");
Requirement.addRequirement(<minecraft:golden_leggings>, "reskillable:defense|5", "reskillable:magic|5");
Requirement.addRequirement(<minecraft:golden_boots>, "reskillable:defense|5", "reskillable:magic|5", "reskillable:agility|3");
Requirement.addRequirement(<minecraft:diamond_helmet>, "reskillable:defense|12");
Requirement.addRequirement(<minecraft:diamond_chestplate>, "reskillable:defense|12");
Requirement.addRequirement(<minecraft:diamond_leggings>, "reskillable:defense|12");
Requirement.addRequirement(<minecraft:diamond_boots>, "reskillable:defense|12", "reskillable:agility|5");
Requirement.addRequirement(<immersiveengineering:steel_armor_head>, "reskillable:defense|8");
Requirement.addRequirement(<immersiveengineering:steel_armor_chest>, "reskillable:defense|8");
Requirement.addRequirement(<immersiveengineering:steel_armor_legs>, "reskillable:defense|8");
Requirement.addRequirement(<immersiveengineering:steel_armor_feet>, "reskillable:defense|8", "reskillable:agility|4");
Requirement.addRequirement(<immersiveengineering:shield>, "reskillable:defense|9");
Requirement.addRequirement(<carbonado:carbonado_helmet>, "reskillable:defense|18");
Requirement.addRequirement(<carbonado:carbonado_chestplate>, "reskillable:defense|18");
Requirement.addRequirement(<carbonado:carbonado_leggings>, "reskillable:defense|18");
Requirement.addRequirement(<carbonado:carbonado_boots>, "reskillable:defense|18");
Requirement.addRequirement(<enderio:item_dark_steel_helmet>, "reskillable:defense|16");
Requirement.addRequirement(<enderio:item_dark_steel_chestplate>, "reskillable:defense|16");
Requirement.addRequirement(<enderio:item_dark_steel_leggings>, "reskillable:defense|16");
Requirement.addRequirement(<enderio:item_dark_steel_boots>, "reskillable:defense|16", "reskillable:agility|6");
Requirement.addRequirement(<enderio:item_dark_steel_shield>, "reskillable:defense|17");
Requirement.addRequirement(<enderio:item_end_steel_helmet>, "reskillable:defense|24");
Requirement.addRequirement(<enderio:item_end_steel_chestplate>, "reskillable:defense|24");
Requirement.addRequirement(<enderio:item_end_steel_leggings>, "reskillable:defense|24");
Requirement.addRequirement(<enderio:item_end_steel_boots>, "reskillable:defense|24", "reskillable:agility|8");
Requirement.addRequirement(<enderio:item_end_steel_shield>, "reskillable:defense|25");
Requirement.addRequirement(<enderio:item_stellar_alloy_helmet>, "reskillable:defense|32");
Requirement.addRequirement(<enderio:item_stellar_alloy_chestplate>, "reskillable:defense|32");
Requirement.addRequirement(<enderio:item_stellar_alloy_leggings>, "reskillable:defense|32");
Requirement.addRequirement(<enderio:item_stellar_alloy_boots>, "reskillable:defense|32", "reskillable:agility|16");


// ~~~ Ores ~~~
Requirement.addRequirement(<minecraft:coal_ore>, "reskillable:mining|2");
Requirement.addRequirement(<minecraft:iron_ore>, "reskillable:mining|4");
Requirement.addRequirement(<minecraft:gold_ore>, "reskillable:mining|5");
Requirement.addRequirement(<minecraft:redstone_ore>, "reskillable:mining|5");
Requirement.addRequirement(<minecraft:lapis_ore>, "reskillable:mining|5");
Requirement.addRequirement(<minecraft:quartz_ore>, "reskillable:mining|6");
Requirement.addRequirement(<minecraft:diamond_ore>, "reskillable:mining|8");
Requirement.addRequirement(<minecraft:emerald_ore>, "reskillable:mining|10");
Requirement.addRequirement(<minecraft:glowstone>, "reskillable:mining|10");
Requirement.addRequirement(<immersiveengineering:ore:0>, "reskillable:mining|4");
Requirement.addRequirement(<immersiveengineering:ore:1>, "reskillable:mining|6");
Requirement.addRequirement(<immersiveengineering:ore:2>, "reskillable:mining|5");
Requirement.addRequirement(<immersiveengineering:ore:3>, "reskillable:mining|6");
Requirement.addRequirement(<immersiveengineering:ore:4>, "reskillable:mining|8");
Requirement.addRequirement(<immersiveengineering:ore:5>, "reskillable:mining|10");


// ~~~ Anvils / Enchant / Potions ~~~
Requirement.addRequirement(<minecraft:anvil:*>, "reskillable:magic|5");
Requirement.addRequirement(<enderio:block_dark_paper_anvil:*>, "reskillable:magic|10");
Requirement.addRequirement(<enderio:block_dark_steel_anvil:*>, "reskillable:magic|10");

Requirement.addRequirement(<minecraft:enchanting_table:*>, "reskillable:magic|8");

Requirement.addRequirement(<minecraft:brewing_stand:*>, "reskillable:magic|12");
Requirement.addRequirement(<minecraft:potion:*>, "reskillable:magic|12");
Requirement.addRequirement(<minecraft:splash_potion:*>, "reskillable:magic|14");
Requirement.addRequirement(<minecraft:lingering_potion:*>, "reskillable:magic|18");

Requirement.addRequirement(<enderio:block_enchanter>, "reskillable:magic|24");


// ~~~ Rustic (Elixers) ~~~
Requirement.addRequirement(<rustic:elixir:*>, "reskillable:magic|3");
Requirement.addRequirement(<rustic:condenser:*>, "reskillable:magic|3");
Requirement.addRequirement(<rustic:retort:*>, "reskillable:magic|3");
Requirement.addRequirement(<rustic:condenser_advanced:*>, "reskillable:magic|10");
Requirement.addRequirement(<rustic:retort_advanced:*>, "reskillable:magic|10");


// ~~~ BWM ~~~
Requirement.addRequirement(<betterwithmods:hemp:*>, "reskillable:farming|4");
Requirement.addRequirement(<betterwithmods:fertilizer:*>, "reskillable:farming|7");
Requirement.addRequirement(<betterwithmods:planter:*>, "reskillable:farming|7");

Requirement.addRequirement(<betterwithmods:single_machine:0>, "reskillable:mining|3");

Requirement.addRequirement(<betterwithmods:breeding_harness:*>, "reskillable:gathering|5");
Requirement.addRequirement(<betterwithmods:vine_trap:*>, "reskillable:gathering|5");

Requirement.addRequirement(<betterwithmods:ender_spectacles:*>, "reskillable:magic|12");

Requirement.addRequirement(<betterwithmods:steel_battleaxe:*>, "reskillable:attack|6");

Requirement.addRequirement(<betterwithmods:axle_generator:0>, "reskillable:building|4");
Requirement.addRequirement(<betterwithmods:axle_generator:1>, "reskillable:building|6");
Requirement.addRequirement(<betterwithmods:axle_generator:2>, "reskillable:building|8");


// ~~~ HC ~~~
Requirement.addRequirement(<harvestcraft:market>, "reskillable:magic|16");
Requirement.addRequirement(<harvestcraft:shippingbin>, "reskillable:magic|16");

Requirement.addRequirement(<harvestcraft:waterfilter>, "reskillable:gathering|6");
Requirement.addRequirement(<harvestcraft:grinder>, "reskillable:gathering|6");
Requirement.addRequirement(<harvestcraft:groundtrap>, "reskillable:gathering|7");
Requirement.addRequirement(<harvestcraft:watertrap>, "reskillable:gathering|7");
Requirement.addRequirement(<harvestcraft:presser>, "reskillable:gathering|8");
Requirement.addRequirement(<harvestcraft:shippingbin>, "reskillable:gathering|16");
Requirement.addRequirement(<harvestcraft:market>, "reskillable:farming|16");

Requirement.addRequirement(<harvestcraft:aridgarden>, "reskillable:gathering|2");
Requirement.addRequirement(<harvestcraft:frostgarden>, "reskillable:gathering|2");
Requirement.addRequirement(<harvestcraft:shadedgarden>, "reskillable:gathering|2");
Requirement.addRequirement(<harvestcraft:soggygarden>, "reskillable:gathering|2");
Requirement.addRequirement(<harvestcraft:tropicalgarden>, "reskillable:gathering|2");
Requirement.addRequirement(<harvestcraft:windygarden>, "reskillable:gathering|2");


// ~~~ Chests ~~~
Requirement.addRequirement(<minecraft:chest:*>, "reskillable:building|2");
Requirement.addRequirement(<minecraft:trapped_chest:*>, "reskillable:building|2");
Requirement.addRequirement(<minecraft:chest_minecart:*>, "reskillable:building|2");
Requirement.addRequirement(<quark:custom_chest:*>, "reskillable:building|2");
Requirement.addRequirement(<quark:custom_chest_trap:*>, "reskillable:building|2");
Requirement.addRequirement(<ironchest:iron_chest:3>, "reskillable:building|3"); // copper
Requirement.addRequirement(<ironchest:iron_chest:0>, "reskillable:building|4"); // iron
Requirement.addRequirement(<ironchest:iron_chest:1>, "reskillable:building|5"); // gold
Requirement.addRequirement(<ironchest:iron_chest:4>, "reskillable:building|6"); // silver
Requirement.addRequirement(<ironchest:iron_chest:2>, "reskillable:building|7"); // diamond
Requirement.addRequirement(<ironchest:iron_chest:5>, "reskillable:building|8"); // obsidian
Requirement.addRequirement(<ironchest:iron_chest:6>, "reskillable:building|8"); // crystal
Requirement.addRequirement(<immersiveengineering:wooden_device0:0>, "reskillable:building|5");
Requirement.addRequirement(<immersiveengineering:wooden_device0:1>, "reskillable:building|5");
Requirement.addRequirement(<storagedrawers:basicdrawers:*>, "reskillable:building|7");
Requirement.addRequirement(<storagedrawers:customdrawers:*>, "reskillable:building|7");
Requirement.addRequirement(<storagedrawers:compdrawers:*>, "reskillable:building|9");
Requirement.addRequirement(<storagedrawers:controller:*>, "reskillable:building|10");
Requirement.addRequirement(<storagedrawers:controllerslave:*>, "reskillable:building|10");
Requirement.addRequirement(<refinedstorage:controller:*>, "reskillable:building|18");


// ~~~ Crafting ~~~
Requirement.addRequirement(<extendedcrafting:table_advanced:*>, "reskillable:building|8");
Requirement.addRequirement(<extendedcrafting:table_elite:*>, "reskillable:building|16");
Requirement.addRequirement(<refinedstorage:grid:1>, "reskillable:building|24");
Requirement.addRequirement(<refinedstorage:grid:2>, "reskillable:building|28");
Requirement.addRequirement(<refinedstorage:portable_grid:*>, "reskillable:building|30");
Requirement.addRequirement(<refinedstorageaddons:wireless_crafting_grid:*>, "reskillable:building|32");


// ~~~ Redstone ~~~
Requirement.addRequirement(<minecraft:redstone:*>, "reskillable:building|5");
Requirement.addRequirement(<minecraft:redstone_torch:*>, "reskillable:building|5");
Requirement.addRequirement(<minecraft:redstone_block:*>, "reskillable:building|5");
Requirement.addRequirement(<minecraft:repeater:*>, "reskillable:building|6");
Requirement.addRequirement(<minecraft:comparator:*>, "reskillable:building|6");
Requirement.addRequirement(<minecraft:piston:*>, "reskillable:building|6");
Requirement.addRequirement(<minecraft:dropper:*>, "reskillable:building|6");
Requirement.addRequirement(<minecraft:dispenser:*>, "reskillable:building|6");
Requirement.addRequirement(<minecraft:observer:*>, "reskillable:building|7");
Requirement.addRequirement(<quark:redstone_inductor:*>, "reskillable:building|6");
Requirement.addRequirement(<quark:redstone_randomizer:*>, "reskillable:building|6");


// ~~~ IE Wires / Connectors ~~~
Requirement.addRequirement(<immersiveengineering:wirecoil:1>, "reskillable:building|6");
Requirement.addRequirement(<immersiveengineering:wirecoil:2>, "reskillable:building|12");
Requirement.addRequirement(<immersiveengineering:wirecoil:5>, "reskillable:building|8");
Requirement.addRequirement(<immersiveengineering:connector:2>, "reskillable:building|6");
Requirement.addRequirement(<immersiveengineering:connector:3>, "reskillable:building|6");
Requirement.addRequirement(<immersiveengineering:connector:4>, "reskillable:building|12");
Requirement.addRequirement(<immersiveengineering:connector:5>, "reskillable:building|12");
Requirement.addRequirement(<immersiveengineering:connector:7>, "reskillable:building|6");
Requirement.addRequirement(<immersiveengineering:connector:8>, "reskillable:building|12");
Requirement.addRequirement(<immersiveengineering:connector:12>, "reskillable:building|8");
Requirement.addRequirement(<immersiveengineering:connector:13>, "reskillable:building|8");
Requirement.addRequirement(<immersiveengineering:metal_device0:0>, "reskillable:building|6");
Requirement.addRequirement(<immersiveengineering:metal_device0:1>, "reskillable:building|8");
Requirement.addRequirement(<immersiveengineering:metal_device0:2>, "reskillable:building|12");


// ~~~ IE Machines ~~~
Requirement.addRequirement(<immersiveengineering:metal_device1:13>, "reskillable:farming|12");


// ~~~ EIO Machines ~~~
Requirement.addRequirement(<enderio:block_farm_station>, "reskillable:farming|32");
