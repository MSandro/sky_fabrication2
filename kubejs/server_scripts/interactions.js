onEvent('block.place', event => {
	if (event.block.id == 'minecraft:pointed_dripstone') {
		event.cancel();
	}
});

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

	var cobbleFunnel = "cobblestone, stone, diorite, deepslate, coal";
	var ironFunnel = "gravel, sand, redstone, copper, iron, silver";
	var goldFunnel = "clay, granite, lapis, nickel, gold, quartz, tin";
  var diamondFunnel = "calcite, salt, diamond, lead, bauxite, antimony, mozanite, gleaming powder";
	var netheriteFunnel = "sky stone, ruby, nikolite, ancient debris, certus quartz, cincinnasite, uranium";

	if (event.player.isCrouching()) {
		if (event.block.id == 'bcf:cobblestone_funnel') {
			event.player.tell(" >>> COBBLESTONE FUNNEL <<< ");
			event.player.tell(cobbleFunnel);
		}
		if (event.block.id == 'bcf:iron_funnel') {
			event.player.tell(" >>> IRON FUNNEL <<< ");
			event.player.tell(cobbleFunnel);
			event.player.tell(ironFunnel);
		}
		if (event.block.id == 'bcf:gold_funnel') {
			event.player.tell(" >>> GOLD FUNNEL <<< ");
			event.player.tell(cobbleFunnel);
			event.player.tell(ironFunnel);
			event.player.tell(goldFunnel);
		}
		if (event.block.id == 'bcf:diamond_funnel') {
			event.player.tell(" >>> DIAMOND FUNNEL <<< ");
			event.player.tell(cobbleFunnel);
			event.player.tell(ironFunnel);
			event.player.tell(goldFunnel);
			event.player.tell(diamondFunnel);
		}
		if (event.block.id == 'bcf:netherite_funnel') {
			event.player.tell(" >>> NETHERITE FUNNEL <<< ");
			event.player.tell(cobbleFunnel);
			event.player.tell(ironFunnel);
			event.player.tell(goldFunnel);
			event.player.tell(diamondFunnel);
			event.player.tell(netheriteFunnel);
		}
	}
});

function checkDim(event, id) {
	let arr = event.server.getPlayers().toArray();
	if (global.isExpertMode) {
		event.server.runCommandSilent(`effect give ${event.player.name} wither 2`);
	} else {
		event.server.runCommandSilent(`effect give ${event.player.name} hunger 2 5`);
	}
  for (p of arr) {
		if (String(p.name) == String(event.player.name)) {
			if (p.world.dimension == 'minecraft:overworld') {
				if (p.mainHandItem.id.contains('glider') && global.isServer) {
					p.mainHandItem.count = 0;
					event.server.runCommandSilent(`give ${event.player.name} ${id}`);
				}
				if (p.offHandItem.id.contains('glider') && global.isServer) {
				  p.offHandItem.count = 0;
					event.server.runCommandSilent(`give ${event.player.name} ${id}`);
				}
				p.getTags().remove('glider');
			} else if(event.player.getTags().contains('glider')) {
				if (!p.mainHandItem.getNbt().toString().contains("enabled:1") && !p.offHandItem.getNbt().toString().contains("enabled:1")) {
					event.player.getTags().remove('glider');
				}

				event.server.schedule(1000, event.server, function (callback) {
					checkDim(event, id);
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
				if ((event.item.id.contains('glider') || event.player.mainHandItem.id.contains('glider') || event.player.offHandItem.id.contains('glider'))) {
					var id = "";
					if (event.item.id.contains('glider')) {
						id = event.item.id;
					} else if (event.player.offHandItem.id.contains('glider')) {
						id = event.player.offHandItem.id;
					}
					if (event.world.dimension == 'minecraft:overworld') {
						if (global.isServer) {
							event.player.tell("Sorry, you can not use Gliders in this dimension!");
							event.player.getTags().remove('glider');
							if (event.player.mainHandItem.id.contains('glider')) {
								event.player.mainHandItem.count = 0;
								event.server.schedule(500, event.server, function (callback) {
									callback.server.runCommandSilent(`give ${event.player.name} ${id}`);
								});
							}
							if (event.player.offHandItem.id.contains('glider')) {
								event.player.offHandItem.count = 0;
								event.server.schedule(500, event.server, function (callback) {
									callback.server.runCommandSilent(`give ${event.player.name} ${id}`);
								});
							}
						}
					} else {
						if (!event.player.getTags().contains('glider'))
						{
							event.player.getTags().add('glider');
							event.server.schedule(250, event.server, function (callback) {
							  checkDim(event, id);
						  })
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
