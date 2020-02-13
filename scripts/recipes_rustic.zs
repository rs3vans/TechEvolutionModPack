import mods.jei.JEI;
import mods.inworldcrafting.FluidToItem;

# Iron Ore from juice
FluidToItem.transform(<minecraft:iron_ore>, <liquid:ironberryjuice>, <ore:stone>, true);

JEI.removeAndHide(<rustic:sapling_apple>);
JEI.removeAndHide(<rustic:fertile_soil>);
JEI.removeAndHide(<rustic:chain>);
JEI.removeAndHide(<rustic:chain_gold>);
JEI.removeAndHide(<rustic:chandelier>);
JEI.removeAndHide(<rustic:chandelier_gold>);
JEI.removeAndHide(<rustic:iron_lantern>);
JEI.removeAndHide(<rustic:golden_lantern>);
JEI.removeAndHide(<rustic:gargoyle>);

recipes.removeByRecipeName("rustic:olive_planks");
recipes.removeByRecipeName("rustic:ironwood_planks");

recipes.removeByRecipeName("rustic:crushing_tub");
recipes.addShaped("custom/rustic_crushing_tub", <rustic:crushing_tub>, [
    [<ore:plankWood>, null, <ore:plankWood>],
    [<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]
]);

recipes.addShapeless("custom/iron_dust", <ore:dustIron>.firstItem, [
    <ore:dustTinyIron>, <ore:dustTinyIron>, <ore:dustTinyIron>, <ore:dustTinyIron>
]);
recipes.addShapeless("custom/iron_dust_uncraft", <ore:dustTinyIron>.firstItem * 4, [
    <ore:dustIron>
]);

recipes.removeShaped(<rustic:candle>);
recipes.addShaped("custom/rustic_candle", <rustic:candle>, [
    [<ore:string>],
    [<ore:tallow>],
    [<ore:nuggetIron>]
]);

recipes.removeShaped(<rustic:candle_gold>);
recipes.addShaped("custom/rustic_candle_gold", <rustic:candle_gold>, [
    [<ore:string>],
    [<ore:tallow>],
    [<ore:nuggetGold>]
]);

recipes.remove(<rustic:condenser>);
recipes.addShaped("custom/rustic_condenser", <rustic:condenser>, [
    [null, <ore:ingotBrick>, null],
    [<ore:ingotBrick>, <ceramics:porcelain_barrel>, <ore:ingotBrick>],
    [<ore:ingotBrick>, <minecraft:stained_hardened_clay:0>, <ore:ingotBrick>]
]);

recipes.remove(<rustic:retort>);
recipes.addShaped("custom/rustic_retort", <rustic:retort>, [
    [null, <ore:ingotBrick>],
    [<ceramics:faucet>, <ceramics:porcelain_barrel>],
    [null, <ore:ingotBrick>]
]);
recipes.addShaped("custom/rustic_retort_alt", <rustic:retort>, [
    [<ore:ingotBrick>, null],
    [<ceramics:porcelain_barrel>, <ceramics:faucet>],
    [<ore:ingotBrick>, null]
]);

furnace.addRecipe(<minecraft:iron_nugget>, <rustic:dust_tiny_iron>, 0.05);