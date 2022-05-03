// priority: 0

console.info('Hello, World! (You will only see this line once in console, during startup)')

onEvent('item.registry', event => {
  event.create('skyfabrication_logo').displayName('Sky FABRICation').type('basic');
  event.create('sky_island_activator').displayName('Sky-Island Activator').type('basic');

  // Food
  event.create('fish_and_chips').displayName('Ultimate Fish and Chips').food(foodBuilder => {foodBuilder.hunger(15).saturation(15.0).alwaysEdible()});
  event.create('cosmic_meatballs').displayName('Cosmic Meatballs').type('basic').food(food => {
  food.hunger(20).saturation(20)
  .effect("minecraft:strength", 30000, 0, 1.0)});
  event.create('ultimate_stew').displayName('Ultimate Stew').type('basic').food(food => {
  food.hunger(20).saturation(20)
  .effect("minecraft:regeneration", 3000, 0, 1.0)
  .effect("minecraft:resistance", 3000, 0, 1.0)});

  event.create('crystal_matrix_ingot').displayName('Crystal Matrix Ingot').type('basic');
  event.create('diamond_lattice').displayName('Diamond Lattice').type('basic');
  event.create('diamond_singularity').displayName('Diamond Singularity').type('basic');
  event.create('emerald_singularity').displayName('Emerald Singularity').type('basic');
  event.create('golden_singularity').displayName('Golden Singularity').type('basic');
  event.create('iron_singularity').displayName('Iron Singularity').type('basic');
  event.create('lapis_singularity').displayName('Lapis Singularity').type('basic');
  //event.create('nether_quartz_singularity').displayName('Nether Quartz Singularity').type('basic');
  event.create('redstone_singularity').displayName('Redstone Singularity').type('basic');
  event.create('endest_pearl').displayName('Endest Pearl').type('basic');
  event.create('infinity_catalyst').displayName('Infinity Catalyst').type('basic');
  event.create('infinity_ingot').displayName('Infinity Ingot').type('basic');
  event.create('neutronium_ingot').displayName('Neutronium Ingot').type('basic');
  event.create('neutronium_nugget').displayName('Neutronium Nugget').type('basic');
  event.create('pileof_neutrons').displayName('Pileof Neutrons').type('basic');
  event.create('record_fragment').displayName('Record Fragment').type('basic');
})
