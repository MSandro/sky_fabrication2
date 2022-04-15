// Listen to player login event

var firstJoinMessage = "Welcome to Sky FABRICation 2, open the Quest-Book and claim the first Quest to unlock your inventory!";

events.listen('player.logged_in', function (event) {
  // Check if player doesn't have "starting_items" gamestage yet
  if (!event.player.getTags().contains('first_login'))
  {
    // Add the gamestage
	  event.player.getTags().add('first_login');
    // Run Commands
	  event.server.schedule(2, event.server, function (callback) {
		  callback.server.runCommandSilent(`locki lock inventory ${event.player.name}`);
		  callback.server.runCommandSilent(`locki unlock inventory.hands.main_hand ${event.player.name}`);
		  callback.server.runCommandSilent(`item replace entity ${event.player.name} container.0 with hardcorequesting:quest_book`);
		  callback.server.runCommandSilent(`clear ${event.player.name} patchouli:guide_book`);
		  //callback.server.runCommandSilent(`phase grant ${event.player.name} zero`);
      if (event.server.isDedicated()) {
        callback.server.runCommandSilent('item replace entity '+event.player.name+' container.7 with minecraft:golden_shovel{display:{Name:"{\\"text\\":\\"Claim-Selector\\"}",Lore:["\\"use /flan for help\\""]}}');
  		}
      callback.server.runCommandSilent(`item replace entity ${event.player.name} container.8 with minecraft:oak_sapling`);
		  event.player.tell(firstJoinMessage);
	  })
  }
  event.server.runCommandSilent(`scale set 0.912871 ${event.player.name}`);
})
