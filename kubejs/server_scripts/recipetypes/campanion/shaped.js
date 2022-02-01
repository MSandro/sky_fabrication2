////////////////////////
/// Made by MSandro ///
////////////////////////

onEvent('recipes', (event) => {

  // Cracker
  event.remove({output: 'campanion:cracker'});
  event.shaped(item.of('campanion:cracker', 4), [
    ["minecraft:wheat", "minecraft:sugar", "minecraft:wheat"],
  ]);

});
