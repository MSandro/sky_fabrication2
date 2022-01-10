onEvent('block.break', event => {
	if(event.entity.isPlayer() && !event.player.isCreativeMode()){
		if(event.block.id == "minecraft:cobblestone" || event.block.id == "minecraft:stone"){
            if (event.entity.getMainHandItem().toString().includes("_hammer") && event.entity.getMainHandItem().toString().includes("skyutils:")){
				event.cancel();
				event.player.damageHeldItem()
				event.world.getBlock(event.block.x,event.block.y,event.block.z).set('minecraft:air');
				event.server.runCommandSilent(`summon item ${event.block.x} ${event.block.y+0.7} ${event.block.z} {Item:{id:"minecraft:gravel",Count:1b}}`);			
			}		
        }
    }
});