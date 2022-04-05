onEvent('block.right_click', event => {
	fixPhases(event);
	// disable End-Portal in Starry Sky
	if (event.world.dimension == 'starry_sky:starry_sky' && event.block.id == 'minecraft:end_portal_frame') {
		event.player.tell("Sorry, end portals don't work in this dimension.");
		event.cancel();
	}
	if (event.world.dimension == 'minecraft:the_nether' && event.block.id == 'endrem:ancient_portal_frame') {
		event.player.tell("Sorry, end portals don't work in this dimension.");
		event.cancel();
	}
});

function checkDim(event) {
	let arr = event.server.getPlayers().toArray();
  for (p of arr) {
		if (String(p.name) == String(event.player.name)) {
			var id = event.item.id;
			if (p.world.dimension == 'minecraft:overworld') {
				event.server.runCommandSilent(`clear ${p.name} ${id} 1`);
				event.server.schedule(500, event.server, function (callback) {
					callback.server.runCommandSilent(`give ${p.name} ${id}`);
					p.getTags().remove('glider');
				});
			} else if(event.player.getTags().contains('glider')) {
				event.server.schedule(1000, event.server, function (callback) {
					checkDim(event);
				});
			}
		}
	}
}

onEvent('item.right_click', event => {
	  fixPhases(event);
    if (event.item) {
			  //fixed Boomerangs
				if (event.item.id.contains('boomerang') || event.player.offHandItem.id.contains('boomerang')) {
					event.entity.damageHeldItem(event.hand, 0);
				}
				// disabled glider in overworld only if in MP
				//
				if (event.item.id.contains('glider') && global.isServer) {
					if (event.world.dimension == 'minecraft:overworld') {
						var id = event.item.id;
						event.player.tell("Sorry, you can not use Gliders in this dimension!");
						event.server.runCommandSilent(`clear ${event.player.name} ${id} 1`);
						event.server.schedule(500, event.server, function (callback) {
	 					  callback.server.runCommandSilent(`give ${event.player.name} ${id}`);
							event.player.getTags().remove('glider');
						});
						event.cancel();
				  } else {
						if (!event.player.getTags().contains('glider'))
					  {
							event.player.getTags().add('glider');
							checkDim(event);
						} else {
							event.player.getTags().remove('glider');
						}
					}
				}

        // Water potions can place water puddles on the ground if the player is sneaking.
        if (event.item.id == 'minecraft:water_bucket' || event.item.id == 'kibe:water_wooden_bucket' || event.item.id == 'skyutils:water_crucible' || event.item.id == 'things:bater_wucket') {
            let ray = event.player.rayTrace();
						if (ray && ray.block && ray.block.id == 'minecraft:glowstone') {
                event.cancel();
            }
        }
        if (event.item.id == 'techreborn:diamond_grinding_head') {
          let ray = event.player.rayTrace();

          // If the block we're looking at is water, and the block above that is air, and we're looking at the top of the block
          if (ray && ray.block && ray.block.id == 'blockus:legacy_nether_reactor_core') {
            event.server.schedule(1, event.server, function (callback) {
              callback.server.runCommandSilent(`clear ${event.player.name} techreborn:diamond_grinding_head 1`);
              callback.server.runCommandSilent(`playsound minecraft:item.flintandsteel.use block ${event.player.name}`);
            });
          }
        }
        if (event.item.id == 'the_aether:crow_eye') {
          let ray = event.player.rayTrace();

          // If the block we're looking at is water, and the block above that is air, and we're looking at the top of the block
          if (ray && ray.block && ray.block.id == 'the_aether:zanite_block') {
            event.server.schedule(1, event.server, function (callback) {
              callback.server.runCommandSilent(`clear ${event.player.name} the_aether:crow_eye 1`);
              callback.server.runCommandSilent(`playsound minecraft:item.flintandsteel.use block ${event.player.name}`);
            });
          }
        }
        if (event.item.id == 'kubejs:sky_island_activator') {
          let ray = event.player.rayTrace();

          // If the block we're looking at is water, and the block above that is air, and we're looking at the top of the block
          if (ray && ray.block && ray.block.id == 'betterend:mossy_glowshroom_cap') {
            event.server.schedule(1, event.server, function (callback) {
              callback.server.runCommandSilent(`clear ${event.player.name} kubejs:sky_island_activator 1`);
              callback.server.runCommandSilent(`playsound minecraft:item.flintandsteel.use block ${event.player.name}`);
            });
          }
        }
    }
});
