#modloaded loottweaker

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.Functions;

val creeperTable = LootTables.getTable("minecraft:entities/creeper");
val creeperPool = creeperTable.getPool("main");

val shearedCreeperTable = LootTables.getTable("betterwithmods:entities/sheared_creeper");
val shearedCreeperPool = shearedCreeperTable.getPool("niter");

creeperPool.removeEntry("minecraft:gunpowder");
shearedCreeperPool.removeEntry("minecraft:gunpowder");

creeperPool.addItemEntryHelper(<immersiveengineering:material:24>, 1, 1, [
    Functions.setCount(0, 2),
    Functions.lootingEnchantBonus(0, 1, 0)
], []);
shearedCreeperPool.addItemEntryHelper(<immersiveengineering:material:24>, 1, 1, [
    Functions.setCount(0, 2),
    Functions.lootingEnchantBonus(0, 1, 0)
], []);