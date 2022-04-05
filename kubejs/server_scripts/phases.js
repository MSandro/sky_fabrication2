console.log("Loading up our custom Game Phases script!");

onEvent('gamephases.initialize', event => {
    event.phase('nether')
        .dimension('minecraft:the_nether');
    event.phase('aether')
        .dimension('the_aether:the_aether');
    event.phase('starry')
        .dimension('starry_sky:starry_sky');
    event.phase('skyutils')
        .dimension('skyutils:skyutils');
    event.phase('end')
        .block('minecraft:end_portal', 'kubejs:end_portal_locked')
        .dimension('minecraft:the_end');
    event.phase('block_default_aether_portal')
        .block('the_aether:blue_portal', 'kubejs:unknown');
});
onEvent('server.custom_command', event => {
		if (event.id == 'GetPhases') {
      var array = [];
      if (event.player.hasPhase('nether'))
        array.push('nether');
      if (event.player.hasPhase('aether'))
        array.push('aether');
      if (event.player.hasPhase('starry'))
        array.push('starry');
      if (event.player.hasPhase('skyutils'))
        array.push('skyutils');
      if (event.player.hasPhase('end'))
        array.push('end');
      if (array.length > 0)
        event.player.tell(array.join(", "));
      else
        event.player.tell("you have no phases!");
    } else if (event.id == 'FixPhases') {
      fixPhases(event);
    } else if (event.id == 'GetTags') {
      event.player.tell(event.player.getTags());
    }
});

onEvent('player.advancement', event => {
    var id = event.getAdvancement();
    if(id == 'gamephases:phases/nether') {
      event.player.getTags().add('phases/nether');
      event.server.runCommandSilent(`phase grant ${event.player.name} nether`);
    }
    if(id == 'gamephases:phases/aether') {
      event.player.getTags().add('phases/aether');
      event.server.runCommandSilent(`phase grant ${event.player.name} aether`);
    }
    if(id == 'gamephases:phases/starry') {
      event.player.getTags().add('phases/starry');
      event.server.runCommandSilent(`phase grant ${event.player.name} starry`);
    }
    if(id == 'gamephases:phases/skyutils') {
      event.player.getTags().add('phases/skyutils');
      event.server.runCommandSilent(`phase grant ${event.player.name} skyutils`);
    }
    if(id == 'gamephases:phases/end') {
      event.player.getTags().add('phases/end');
      event.server.runCommandSilent(`phase grant ${event.player.name} end`);
    }
})

onEvent('player.inventory.changed', event => {
  fixPhases(event);
})

function fixPhases(event) {
  if (event.player.getTags().contains('phases/nether')) {
    event.server.runCommandSilent(`phase grant ${event.player.name} nether`);
  }
  if (event.player.getTags().contains('phases/aether')) {
    event.server.runCommandSilent(`phase grant ${event.player.name} aether`);
  }
  if (event.player.getTags().contains('phases/starry')) {
    event.server.runCommandSilent(`phase grant ${event.player.name} starry`);
  }
  if (event.player.getTags().contains('phases/skyutils')) {
    event.server.runCommandSilent(`phase grant ${event.player.name} skyutils`);
  }
  if (event.player.getTags().contains('phases/end')) {
    event.server.runCommandSilent(`phase grant ${event.player.name} end`);
  }
}
