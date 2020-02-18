import mods.jei.JEI;

<ore:ingotUranium>.remove(<bigreactors:ingotyellorium>);
<ore:dustUranium>.remove(<bigreactors:dustyellorium>);
<ore:ingotSteel>.remove(<bigreactors:ingotsteel>);
<ore:ingotGraphite>.remove(<bigreactors:ingotgraphite>);
<ore:blockSteel>.remove(<bigreactors:blocksteel>);
<ore:dustSteel>.remove(<bigreactors:duststeel>);

recipes.removeByMod("bigreactors");

JEI.removeAndHide(<bigreactors:ingotyellorium>);
JEI.removeAndHide(<bigreactors:blockyellorium>);
JEI.removeAndHide(<bigreactors:dustyellorium>);
JEI.removeAndHide(<bigreactors:ingotsteel>);
JEI.removeAndHide(<bigreactors:blocksteel>);
JEI.removeAndHide(<bigreactors:duststeel>);
JEI.removeAndHide(<bigreactors:ingotgraphite>);
JEI.removeAndHide(<bigreactors:blockgraphite>);
JEI.removeAndHide(<bigreactors:dustgraphite>);
JEI.removeAndHide(<bigreactors:ingotludicrite>);
JEI.removeAndHide(<bigreactors:blockludicrite>);
JEI.removeAndHide(<bigreactors:dustludicrite>);
JEI.removeAndHide(<bigreactors:mineralanglesite>);
JEI.removeAndHide(<bigreactors:oreanglesite>);
JEI.removeAndHide(<bigreactors:mineralbenitoite>);
JEI.removeAndHide(<bigreactors:orebenitoite>);
JEI.removeAndHide(<bigreactors:oreyellorite>);
JEI.removeAndHide(<bigreactors:turbinepowertaptesla>);
JEI.removeAndHide(<bigreactors:reactorpowertaptesla>);
JEI.removeAndHide(<bigreactors:turbinecomputerport>);
JEI.removeAndHide(<bigreactors:reactorcomputerport>);
JEI.removeAndHide(<bigreactors:reactorrednetport>);
JEI.removeAndHide(<bigreactors:turbinehousingcores>);
JEI.removeAndHide(<bigreactors:reactorcasingcores>);

JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "yellorium", Amount: 1000}));
JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "cyanite", Amount: 1000}));

JEI.hide(<liquid:yellorium>);
JEI.hide(<liquid:cyanite>);
JEI.hide(<liquid:fuelcolumn>);

for i in loadedMods["bigreactors"].items {
    if (i.displayName.endsWith(" (Legacy)")) {
        i.displayName = i.displayName.replace(" (Legacy)", "");
    }
}