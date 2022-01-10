// Listen to player login event
events.listen('player.inventory.changed', function (event) {
  // Check if player doesn't have "starting_items" gamestage yet
  if (!event.player.getTags().contains('first_login'))
  {
    // Add the gamestage
	event.player.getTags().add('first_login');
	
    // Run Commands
	event.server.schedule(1, event.server, function (callback) { 
		callback.server.runCommandSilent(`locki lock inventory ${event.player.name}`);
		callback.server.runCommandSilent(`locki unlock inventory.hands.main_hand ${event.player.name}`);
		callback.server.runCommandSilent(`item replace entity ${event.player.name} container.0 with hardcorequesting:quest_book`);
	})	
  }
  event.server.schedule(1, event.server, function (callback) { 
		callback.server.runCommandSilent(`scale set 0.912871 ${event.player.name}`);
  })
})