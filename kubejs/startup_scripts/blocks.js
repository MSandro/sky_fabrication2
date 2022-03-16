// priority: 0
onEvent('block.registry', event => {
  event.create('neutronium_block').material('iron').hardness(0.5).displayName('Neutronium Block').harvestTool('pickaxe', 4);
  event.create('infinity_block').material('iron').hardness(0.5).displayName('Infinity Block').harvestTool('pickaxe', 4);
  event.create('crystal_matrix').material('iron').hardness(0.5).displayName('Crystal Matrix').harvestTool('pickaxe', 4);
  event.create('unknown').material('iron').hardness(10.0).displayName('Unknown Block').unbreakable();
  event.create('end_portal_locked').material('iron').hardness(10.0).displayName('Locked End Portal').unbreakable().transparent(true).renderType('cutout').defaultCutout().notSolid();
})
