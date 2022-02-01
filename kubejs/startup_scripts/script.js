// priority: 0

console.info('Hello, World! (You will only see this line once in console, during startup)')

onEvent('item.registry', event => {
  event.create('skyfabrication_logo').displayName('Sky FABRICation').type('basic');
  event.create('sky_island_activator').displayName('Sky-Island Activator').type('basic');
  //event.create('skyfabrication_quests').displayName('Help me please!').type('basic');
})
