import mods.extendedcrafting.TableCrafting;
import mods.extendedcrafting.CombinationCrafting;

# Hunting
recipes.replaceAllOccurences(<ore:arrow>, <ore:itemSkull>, <*>.only(function(item) {
    return !isNull(item) & item.definition.owner == "huntingdim";
}));

# The Beneath
TableCrafting.addShaped(<beneath:teleporterbeneath>, [
    [<ore:blockSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:blockSteel>],
    [<ore:plateSteel>, <ore:blockUranium>, <ore:obsidian>, <ore:blockUranium>, <ore:plateSteel>],
    [<ore:plateSteel>, <ore:obsidian>, <minecraft:skull:1>, <ore:obsidian>, <ore:plateSteel>],
    [<ore:plateSteel>, <ore:blockUranium>, <ore:obsidian>, <ore:blockUranium>, <ore:plateSteel>],
    [<ore:blockSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>, <ore:blockSteel>]
]);

# The End
recipes.removeByMod("crftep");
TableCrafting.addShaped(<minecraft:end_portal_frame> * 12, [
    [<ore:enderpearl>, <ore:enderpearl>, null, null, null, <ore:enderpearl>, <ore:enderpearl>],
    [<ore:enderpearl>, <ore:endstone>, null, null, null, <ore:endstone>, <ore:enderpearl>],
    [<ore:endstone>, <ore:obsidian>, <ore:blockDarkSteel>, <ore:blockDarkSteel>, <ore:blockDarkSteel>, <ore:obsidian>, <ore:endstone>],
    [<ore:enderpearl>, <ore:obsidian>, <ore:blockDarkSteel>, <ore:blockVibrantAlloy>, <ore:blockDarkSteel>, <ore:obsidian>, <ore:enderpearl>],
    [<ore:endstone>, <ore:obsidian>, <ore:blockDarkSteel>, <ore:blockDarkSteel>, <ore:blockDarkSteel>, <ore:obsidian>, <ore:endstone>],
    [<ore:endstone>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:obsidian>, <ore:endstone>],
    [<ore:endstone>, <ore:endstone>, <ore:endstone>, <ore:endstone>, <ore:endstone>, <ore:endstone>, <ore:endstone>]
]);
