onEvent('block.right_click', event => {
	if (event.world.dimension == 'starry_sky:starry_sky' && event.block.id == 'minecraft:end_portal_frame') {
		event.player.tell("Sorry, end portals don't work in this dimension.");
		event.cancel();
	}
});
