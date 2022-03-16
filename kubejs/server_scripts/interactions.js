onEvent('block.right_click', event => {
	// disable End-Portal in Starry Sky
	if (event.world.dimension == 'starry_sky:starry_sky' && event.block.id == 'minecraft:end_portal_frame') {
		event.player.tell("Sorry, end portals don't work in this dimension.");
		event.cancel();
	}
});

onEvent('item.right_click', event => {
    if (event.item) {
			  //fixed Boomerangs
				if (event.item.id.contains('boomerang') || event.player.offHandItem.id.contains('boomerang')) {
					event.entity.damageHeldItem(event.hand, 0);
				}
				//disabled glider in overworld only if in MP
			  if (event.item.id.contains('glider') && event.world.dimension == 'minecraft:overworld' && global.isServer) {
					var id = event.item.id;
					event.player.tell("Sorry, you can not use Gliders in this dimension!");
					event.server.runCommandSilent(`clear ${event.player.name} ${id} 1`);
					event.server.schedule(500, event.server, function (callback) {
 					  callback.server.runCommandSilent(`give ${event.player.name} ${id}`);
					});
					event.cancel();
			  }

        // Water potions can place water puddles on the ground if the player is sneaking.
        if (event.item.id == 'minecraft:water_bucket' || event.item.id == 'kibe:water_wooden_bucket' || event.item.id == 'skyutils:water_crucible' || event.item.id == 'things:bater_wucket') {
            // Ray trace to get the block we're looking at.
            let ray = event.player.rayTrace();

            // If the block we're looking at is water, and the block above that is air, and we're looking at the top of the block
            if (ray && ray.block && ray.block.id == 'minecraft:glowstone' && ray.facing == 'up' && ray.block.up.id == 'minecraft:air') {
                event.cancel();
            }
        }
				if (event.item.id == 'minecraft:bucket') {
            // Ray trace to get the block we're looking at.
            let ray = event.player.rayTrace();

            // If the block we're looking at is water, and the block above that is air, and we're looking at the top of the block
            if (ray && ray.block && ray.block.id == 'skyutils:condenser') {
							event.server.schedule(10, event.server, function (callback) {
								if (event.player.mainHandItem.id.contains('water')) {
									callback.server.runCommandSilent(`item replace entity ${event.player.name} weapon.mainhand with minecraft:water_bucket`);
								}
								else if (event.player.offHandItem.id.contains('water')) {
									callback.server.runCommandSilent(`item replace entity ${event.player.name} weapon.offhand with minecraft:water_bucket`);
								}
								else if(event.player.inventory.find('skyutils:water_crucible') > 0) {
									callback.server.runCommandSilent(`clear ${event.player.name} skyutils:water_crucible 1`);
									callback.server.runCommandSilent(`give ${event.player.name} minecraft:water_bucket`);
								}
							});
            }
        }
        if (event.item.id == 'the_aether:crow_eye') {
          let ray = event.player.rayTrace();

          // If the block we're looking at is water, and the block above that is air, and we're looking at the top of the block
          if (ray && ray.block && ray.block.id == 'the_aether:zanite_block' && ray.facing == 'up' && ray.block.up.id == 'minecraft:air') {
            event.server.schedule(1, event.server, function (callback) {
              callback.server.runCommandSilent(`clear ${event.player.name} the_aether:crow_eye 1`);
              callback.server.runCommandSilent(`playsound minecraft:item.flintandsteel.use block MSandro`);
            });
          }
        }
        if (event.item.id == 'kubejs:sky_island_activator') {
          let ray = event.player.rayTrace();

          // If the block we're looking at is water, and the block above that is air, and we're looking at the top of the block
          if (ray && ray.block && ray.block.id == 'betterend:mossy_glowshroom_cap' && ray.facing == 'up' && ray.block.up.id == 'minecraft:air') {
            event.server.schedule(1, event.server, function (callback) {
              callback.server.runCommandSilent(`clear ${event.player.name} kubejs:sky_island_activator 1`);
              callback.server.runCommandSilent(`playsound minecraft:item.flintandsteel.use block MSandro`);
            });
          }
        }
    }
});
