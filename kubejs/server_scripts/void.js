////////////////////////
/// Made by MSandro  ///
////////////////////////

onEvent('player.tick', event => {
	if (event.player.y < -64) {
		event.server.schedule(50, event.server, function (callback) {
			callback.server.runCommandSilent(`execute as ${event.player.name} in ${event.player.world.dimension} run tp ${event.player.name} ${event.player.x} 260 ${event.player.z}`);
			if (global.isExpertMode) {
				callback.server.runCommandSilent(`effect give ${event.player.name} minecraft:wither 4`);
			} else {
				callback.server.runCommandSilent(`effect give ${event.player.name} minecraft:hunger 10`);
			}
		})
	}
})
