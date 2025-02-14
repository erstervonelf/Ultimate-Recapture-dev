import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipePrimer;
val reci = mods.modularmachinery.RecipeBuilder.newBuilder("supernitrate_water", "water_nitrator", 5, 0);
val sep = mods.modularmachinery.RecipeBuilder.newBuilder("seperate_supernitradedwater", "seperator_centrifuge", 5, 0);
val mix = mods.modularmachinery.RecipeBuilder.newBuilder("mix_coolant", "mixer_cryo", 5, 0);
val cryo = mods.modularmachinery.RecipeBuilder.newBuilder("mix_cryogel", "water_nitrator", 5, 0);
val des = mods.modularmachinery.RecipeBuilder.newBuilder("destillize Gaseous Fuel", "destiller", 120, 0);

recipes.addShaped(<railcraft:dust:2>, [[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],[<minecraft:stone>, <minecraft:fire_charge>, <minecraft:stone>], [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]]);

des.addEnergyPerTickInput(100);
des.addFluidInput(<liquid:fuel_gaseous>);
des.addFluidOutput(<liquid:ethanol>);
des.build();

reci.addFluidInput(<liquid:water>);
reci.addItemInput(<railcraft:dust:2>);
reci.addFluidOutput(<liquid:supernitradedwater>);
reci.build();

cryo.addFluidInput(<liquid:supernitradedwater>);
cryo.addItemInput(<hbm:powder_ice>);
cryo.addFluidOutput(<liquid:cryogel>);
cryo.build();

sep.addFluidInput(<liquid:supernitradedwater>);
sep.addItemOutput(<railcraft:dust:2>);
sep.addFluidOutput(<liquid:nitratedwater>);
sep.build();

mix.addFluidInput(<liquid:cryogel>);
mix.addFluidInput(<liquid:nitratedwater>);
mix.addFluidOutput(<liquid:coolant>);
mix.build();