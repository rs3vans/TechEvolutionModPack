import crafttweaker.data.IData;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.BottlingMachine;

val allPotionIds = [
"minecraft:fire_resistance",
"minecraft:long_fire_resistance",
"minecraft:healing",
"minecraft:strong_healing",
"minecraft:invisibility",
"minecraft:long_invisibility",
"minecraft:leaping",
"minecraft:long_leaping",
"minecraft:strong_leaping",
"minecraft:night_vision",
"minecraft:long_night_vision",
"minecraft:slowness",
"minecraft:long_slowness",
"minecraft:swiftness",
"minecraft:long_swiftness",
"minecraft:strong_swiftness",
"minecraft:water_breathing",
"minecraft:long_water_breathing",
"minecraft:harming",
"minecraft:strong_harming",
"minecraft:poison",
"minecraft:long_poison",
"minecraft:strong_poison",
"minecraft:regeneration",
"minecraft:long_regeneration",
"minecraft:strong_regeneration",
"minecraft:strength",
"minecraft:long_strength",
"minecraft:strong_strength",
"minecraft:weakness",
"minecraft:long_weakness",
"minecraft:luck",
"quark:resilience",
"quark:long_resilience",
"quark:strong_resilience",
"quark:haste",
"quark:long_haste",
"quark:strong_haste",
"quark:resistance",
"quark:long_resistance",
"quark:strong_resistance",
"quark:mining_fatigue",
"quark:long_mining_fatigue",
"quark:strong_mining_fatigue",
"quark:danger_sight",
"quark:long_danger_sight",
"enderio:confusion",
"enderio:long_confusion",
"enderio:withering",
"enderio:long_withering",
"enderio:floating",
"enderio:long_floating",
"enderio:strong_floating"
] as string[];

for p in allPotionIds {
    val pName = p.replaceAll(":", "_");
    recipes.addShapeless("custom/splash_potion_" ~ pName, <minecraft:splash_potion>.withTag({Potion: p}), [
        <minecraft:potion>.withTag({Potion: p}), <ore:gunpowder>
    ]);
    recipes.addShapeless("custom/lingering_potion_" ~ pName, <minecraft:lingering_potion>.withTag({Potion: p}), [
        <minecraft:splash_potion>.withTag({Potion: p}), <minecraft:dragon_breath>
    ]);
}

val potions = [
    {result: "enderio:floating", input: "minecraft:awkward", item: "fruitPoppedChorus"},
    {result: "enderio:strong_floating", input: "enderio:floating", item: "dustGlowstone"},
    {result: "enderio:long_floating", input: "enderio:floating", item: "dustRedstone"},
    {result: "enderio:confusion", input: "minecraft:awkward", item: "itemCocoaBeans"},
    {result: "enderio:long_confusion", input: "enderio:confusion", item: "dustRedstone"},
    {result: "enderio:withering", input: "minecraft:awkward", item: "dustWither"},
    {result: "enderio:long_withering", input: "enderio:withering", item: "dustRedstone"}
] as IData[];

for p in potions {
    val result = p.result.asString();
    val resultTag = {"Potion": result as string} as IData;
    val input = p.input.asString();
    val inputTag = {"Potion": input as string} as IData;
    val itemOreName = p.item.asString();
    val item = oreDict.get(itemOreName);

    Mixer.addRecipe(
        <liquid:potion>.withTag(resultTag) * 1000,
        <liquid:potion>.withTag(inputTag) * 1000,
        [item],
        2000);
    BottlingMachine.addRecipe(
        <minecraft:potion>.withTag(resultTag),
        <ore:itemEmptyBottle>,
        <liquid:potion>.withTag(resultTag) * 1000);
}