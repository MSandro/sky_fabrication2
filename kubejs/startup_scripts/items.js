// priority: 0

console.info('Hello, World! (You will only see this line once in console, during startup)')

onEvent('item.registry', event => {
  event.create('skyfabrication_logo').displayName('Sky FABRICation').type('basic');
  event.create('sky_island_activator').displayName('Sky-Island Activator').type('basic');

  // Food
  event.create('beef').displayName('Ultimate Steak').food(foodBuilder => {foodBuilder.hunger(15).saturation(15.0).alwaysEdible()});
  event.create('fish_and_chips').displayName('Ultimate Fish and Chips').food(foodBuilder => {foodBuilder.hunger(15).saturation(15.0).alwaysEdible()});
  event.create('stew').displayName('Ultimate Stew').food(foodBuilder => {foodBuilder.hunger(20).saturation(30.0).alwaysEdible()});
})
