
onEvent('recipes', event => {
  if (global.isExpertMode) {
    event.remove({output: 'scf:cobblestone_funnel'});
	event.shaped('scf:cobblestone_funnel', [
	  "XPX",
	  "XSX",
	  "XGX"
	], {
	  S: "simple_pipes:pipe_stone_item",
	  G: "minecraft:glass",
	  P: "minecraft:gunpowder",
	  X: "compress:compressed_cobblestone_2"
	});
	event.remove({output: 'scf:iron_funnel'});
	event.shaped('scf:iron_funnel', [
      "NXN",
      "NCN",
      "NGN"
	], {
	  N: "minecraft:iron_block",
	  C: "scf:cobblestone_funnel",
	  G: "minecraft:coal_block",
	  X: "compress:compressed_iron_block_1"
	});
	event.remove({output: 'scf:gold_funnel'});
	event.shaped('scf:gold_funnel', [
      "CPC",
      "CSC",
      "EEE"
	], {
	  S: "scf:iron_funnel",
	  C: "compress:compressed_gold_block_1",
	  E: "modern_industrialization:electrum_block",
	  P: "compress:compressed_gold_block_2"
	});
	event.remove({output: 'scf:diamond_funnel'});
	event.shaped('scf:diamond_funnel', [
      "CXC",
      "CSC",
      "YGY"
	], {
	  S: "scf:gold_funnel",
	  C: "minecraft:diamond_block",
	  X: "modern_industrialization:steel_gear",
	  G: "modern_industrialization:invar_rotary_blade",
	  Y: "compress:compressed_diamond_block_1"
	});
  }
});
