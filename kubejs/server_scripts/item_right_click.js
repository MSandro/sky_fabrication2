onEvent('item.right_click', event => {
    if (event.item) {
        // Water potions can place water puddles on the ground if the player is sneaking.
        if (event.item.id == 'minecraft:water_bucket' || event.item.id == 'kibe:water_wooden_bucket' || event.item.id == 'skyutils:water_crucible' || event.item.id == 'things:bater_wucket') {
            // Ray trace to get the block we're looking at.
            let ray = event.player.rayTrace();

            // If the block we're looking at is water, and the block above that is air, and we're looking at the top of the block
            if (ray && ray.block && ray.block.id == 'minecraft:glowstone' && ray.facing == 'up' && ray.block.up.id == 'minecraft:air') {
                event.cancel();
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
