onEvent('block.break', event => {
	if(event.entity.isPlayer() && !event.player.isCreativeMode()){
		if(event.block.id == "dark-enchanting:dark_enchanter" && event.entity.getMainHandItem().toString().includes("pickaxe")){
			event.server.runCommandSilent(`summon item ${event.block.x} ${event.block.y+0.7} ${event.block.z} {Item:{id:"dark-enchanting:dark_enchanter",Count:1b}}`);
    }
  }
});
