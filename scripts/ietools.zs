#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

static ieHammer as IItemStack = <immersiveengineering:tool:0>;
static ieHammerMaxDamage as int = 99;

static ieCutter as IItemStack = <immersiveengineering:tool:1>;
static ieCutterMaxDamage as int = 249;

static ieHammerTransformer as IIngredient = ieHammer.transformNew(function (hammer) {
    var damage = 0;
    if (hammer.tag has "Damage") {
        damage = hammer.tag.Damage.asInt();
    }
    if (damage == ieHammerMaxDamage) {
        return null;
    }
    return hammer.withTag({Damage: damage + 1});
});

static ieCutterTransformer as IIngredient = ieCutter.transformNew(function (cutter) {
    var damage = 0;
    if (cutter.tag has "Damage") {
        damage = cutter.tag.Damage.asInt();
    }
    if (damage == ieCutterMaxDamage) {
        return null;
    }
    return cutter.withTag({Damage: damage + 1});
});