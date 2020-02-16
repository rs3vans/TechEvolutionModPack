#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.MaterialSystem;

val enderSyrup = VanillaFactory.createFluid("endersyrup", Color.fromHex("aed100"));
enderSyrup.register();

val dragonsBrew = VanillaFactory.createFluid("dragonsbrew", Color.fromHex("e61774"));
dragonsBrew.setDensity(1000);
dragonsBrew.setViscosity(100);
dragonsBrew.setLuminosity(13);
dragonsBrew.setTemperature(3000);
dragonsBrew.setFillSound(<soundevent:item.bucket.fill_lava>);
dragonsBrew.setEmptySound(<soundevent:item.bucket.empty_lava>);
dragonsBrew.setMaterial(<blockmaterial:lava>);
dragonsBrew.register();

val dragonsBreath = VanillaFactory.createFluid("dragonsbreath", Color.fromHex("cc00fa"));
dragonsBreath.setGaseous(true);
dragonsBreath.setDensity(10);
dragonsBreath.setViscosity(10);
dragonsBreath.setLuminosity(16);
dragonsBreath.setTemperature(5000);
dragonsBreath.setFillSound(<soundevent:item.bucket.fill_lava>);
dragonsBreath.setEmptySound(<soundevent:item.bucket.empty_lava>);
dragonsBreath.setMaterial(<blockmaterial:lava>);
dragonsBreath.register();

val endstone = MaterialSystem.getMaterialBuilder()
        .setName("Endstone")
        .setColor(Color.fromHex("d6d09c"))
        .build();
endstone.registerParts([ "dust" ] as string[]);

val darkSteel = MaterialSystem.getMaterialBuilder()
        .setName("Dark Steel")
        .setColor(Color.fromHex("4a4a4a"))
        .build();
darkSteel.registerParts([ "plate" ] as string[]);

val endSteel = MaterialSystem.getMaterialBuilder()
        .setName("End Steel")
        .setColor(Color.fromHex("ddd7a3"))
        .build();
endSteel.registerParts([ "plate" ] as string[]);

val stellarAlloy = MaterialSystem.getMaterialBuilder()
        .setName("Stellar Alloy")
        .setColor(Color.fromHex("ffffe4"))
        .build();
stellarAlloy.registerParts([ "plate" ] as string[]);

val soularium = MaterialSystem.getMaterialBuilder()
        .setName("Soularium")
        .setColor(Color.fromHex("89736b"))
        .build();
soularium.registerParts([ "plate" ] as string[]);