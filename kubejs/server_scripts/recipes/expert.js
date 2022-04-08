//priority: 10
onEvent('recipes', event => {
  if (global.isExpertMode) {
    // FUNNELS
    event.remove({output: 'bcf:cobblestone_funnel', type: 'minecraft:crafting_shaped'});
  	event.shaped('bcf:cobblestone_funnel', [
  	  "XPX",
  	  "XSX",
  	  "XGX"
  	], {
  	  S: "simple_pipes:pipe_stone_item",
  	  G: "truerooms:one_way_glass",
  	  P: "terrarianslimes:sticky_bomb",
  	  X: "compress:compressed_cobblestone_2"
  	});
  	event.remove({output: 'bcf:iron_funnel', type: 'minecraft:crafting_shaped'});
  	event.shaped('bcf:iron_funnel', [
        "XXX",
        "NCN",
        "NGN"
  	], {
  	  N: "minecraft:iron_block",
  	  C: "bcf:cobblestone_funnel",
  	  G: "dml-refabricated:soot_plate",
  	  X: "compress:compressed_iron_block_1"
  	});
  	event.remove({output: 'bcf:gold_funnel', type: 'minecraft:crafting_shaped'});
  	event.shaped('bcf:gold_funnel', [
        "GPG",
        "CSC",
        "FEF"
  	], {
  	  S: "bcf:iron_funnel",
  	  C: "compress:compressed_gold_block_1",
  	  E: "modern_industrialization:electrum_block",
  	  P: "compress:compressed_gold_block_2",
      F: "compress:compressed_copper_block_2",
      G: "botania:forest_eye"
  	});
  	event.remove({output: 'bcf:diamond_funnel', type: 'minecraft:crafting_shaped'});
  	event.shaped('bcf:diamond_funnel', [
        "CXC",
        "CSC",
        "YGY"
  	], {
  	  S: "bcf:gold_funnel",
  	  C: "minecraft:diamond_block",
  	  X: "modern_industrialization:steel_gear",
  	  G: "modern_industrialization:invar_rotary_blade",
  	  Y: "compress:compressed_diamond_block_1"
  	});
    event.remove({output: 'bcf:netherite_funnel', type: 'minecraft:crafting_shaped'});
  	event.shaped('bcf:netherite_funnel', [
        "CXC",
        "CSC",
        "CGC"
  	], {
  	  S: "bcf:diamond_funnel",
  	  C: "minecraft:netherite_block",
  	  X: "kubejs:crystal_matrix",
  	  G: "modern_industrialization:large_heat_exchanger"
  	});

    //FURNACES
    event.remove({output: 'fabric-furnaces:iron_furnace', type: 'minecraft:crafting_shaped'});
  	event.shaped('fabric-furnaces:iron_furnace', [
        "BIB",
        "BFB",
        "BIB"
  	], {
  	  F: 'fabric-furnaces:fabric_furnace',
  	  B: 'minecraft:iron_block',
  	  I: 'minecraft:iron_ingot'
  	});
    event.remove({output: 'fabric-furnaces:gold_furnace', type: 'minecraft:crafting_shaped'});
  	event.shaped('fabric-furnaces:gold_furnace', [
        "BCB",
        "BFB",
        "CCC"
  	], {
  	  F: 'fabric-furnaces:iron_furnace',
  	  B: 'minecraft:gold_block',
  	  C: 'compress:compressed_gold_block_1'
  	});
    event.remove({output: 'fabric-furnaces:diamond_furnace', type: 'minecraft:crafting_shaped'});
  	event.shaped('fabric-furnaces:diamond_furnace', [
        "BCB",
        "BFB",
        "BCB"
  	], {
  	  F: 'fabric-furnaces:gold_furnace',
  	  B: 'minecraft:diamond_block',
  	  C: 'compress:compressed_diamond_block_1'
  	});
    event.remove({output: 'fabric-furnaces:obsidian_furnace', type: 'minecraft:crafting_shaped'});
  	event.shaped('fabric-furnaces:obsidian_furnace', [
        "BCB",
        "CFC",
        "BCB"
  	], {
  	  F: 'fabric-furnaces:diamond_furnace',
  	  B: 'minecraft:crying_obsidian',
  	  C: 'kibe:wither_proof_block'
  	});
    event.remove({output: 'fabric-furnaces:nether_furnace', type: 'minecraft:crafting_shaped'});
  	event.shaped('fabric-furnaces:nether_furnace', [
        "NSN",
        "BFB",
        "XCX"
  	], {
  	  F: 'fabric-furnaces:obsidian_furnace',
      X: 'minecraft:nether_brick',
  	  N: 'minecraft:nether_star',
  	  C: 'minecraft:magma_block',
      S: 'minecraft:soul_sand',
      B: 'blockus:blaze_lantern'
  	});
    event.remove({output: 'fabric-furnaces:emerald_furnace', type: 'minecraft:crafting_shaped'});
    event.shaped('fabric-furnaces:emerald_furnace', [
        "BCB",
        "BFB",
        "BCB"
    ], {
      F: 'fabric-furnaces:nether_furnace',
      B: 'minecraft:emerald_block',
      C: 'compress:compressed_emerald_block_1'
    });
    event.remove({output: 'fabric-furnaces:end_furnace', type: 'minecraft:crafting_shaped'});
    event.shaped('fabric-furnaces:end_furnace', [
        "PEP",
        "QFQ",
        "RCR"
    ], {
      F: 'fabric-furnaces:emerald_furnace',
      P: 'kubejs:endest_pearl',
      E: 'minecraft:dragon_egg',
      Q: 'truerooms:camolock_eye',
      C: 'things:hardening_catalyst',
      R: 'compress:compressed_end_stone_1',
    });
    event.remove({output: 'fabric-furnaces:ethereal_furnace', type: 'minecraft:crafting_shaped'});
    event.shaped('fabric-furnaces:ethereal_furnace', [
        "EHE",
        "QFQ",
        "RCR"
    ], {
      F: 'fabric-furnaces:end_furnace',
      H: 'minecraft:dragon_head',
      E: 'betterend:eternal_crystal',
      Q: 'modern_industrialization:iridium_machine_casing_pipe',
      C: 'blockus:nether_stars_block',
      R: 'charm:tube_sea_lantern'
    });

    // KIBE
    event.remove({output: 'kibe:entangled_tank', type: 'minecraft:crafting_shaped'});
    event.shaped('kibe:entangled_tank', [
        "EHE",
        "QFQ",
        "ECE"
    ], {
      F: 'modern_industrialization:aluminum_tank',
      H: 'appliedenergistics2:quantum_entangled_singularity',
      E: 'minecraft:blaze_rod',
      Q: 'botania:third_eye',
      C: 'modern_industrialization:kanthal_block'
    });
    event.remove({output: 'kibe:entangled_chest', type: 'minecraft:crafting_shaped'});
    event.shaped('kibe:entangled_chest', [
        "EHE",
        "QFQ",
        "ECE"
    ], {
      F: 'minecraft:ender_chest',
      H: 'appliedenergistics2:quantum_entangled_singularity',
      E: 'minecraft:blaze_rod',
      Q: 'botania:third_eye',
      C: 'modern_industrialization:kanthal_block'
    });

    //blockus
    event.remove({output: 'blockus:legacy_nether_reactor_core', type: 'minecraft:crafting_shaped'});
    event.shaped('blockus:legacy_nether_reactor_core', [
        "DID",
        "DBD",
        "DID"
    ], {
      D: "minecraft:diamond",
      I: "modern_industrialization:steel_block",
      B: "botania:blaze_block"
    });

    //KIBE

    event.replaceInput({output: 'kibe:golden_lasso'}, 'minecraft:gold_ingot', 'minecraft:gold_block')
    event.replaceInput({output: 'kibe:golden_lasso'}, 'minecraft:gold_nugget', 'minecraft:gold_block')
    event.replaceInput({output: 'kibe:cursed_lasso'}, 'kibe:cursed_droplets', 'minecraft:wither_skeleton_skull')
    event.replaceInput({output: 'kibe:diamond_lasso'}, 'minecraft:diamond', 'minecraft:diamond_block')

    //ExpandedStorage
    event.replaceInput({output: 'expandedstorage:old_iron_chest'}, 'minecraft:iron_ingot', 'minecraft:iron_block')
    event.replaceInput({output: 'expandedstorage:iron_chest'}, 'minecraft:iron_ingot', 'minecraft:iron_block')
    event.replaceInput({output: 'expandedstorage:iron_barrel'}, 'minecraft:iron_ingot', 'minecraft:iron_block')
    event.replaceInput({output: 'expandedstorage:wood_to_iron_conversion_kit'}, 'minecraft:iron_ingot', 'minecraft:iron_block')
    event.replaceInput({output: 'expandedstorage:old_gold_chest'}, 'minecraft:gold_ingot', 'minecraft:gold_block')
    event.replaceInput({output: 'expandedstorage:gold_chest'}, 'minecraft:gold_ingot', 'minecraft:gold_block')
    event.replaceInput({output: 'expandedstorage:gold_barrel'}, 'minecraft:gold_ingot', 'minecraft:gold_block')
    event.replaceInput({output: 'expandedstorage:wood_to_gold_conversion_kit'}, 'minecraft:gold_ingot', 'minecraft:gold_block')
    event.replaceInput({output: 'expandedstorage:iron_to_gold_conversion_kit'}, 'minecraft:gold_ingot', 'minecraft:gold_block')
    event.replaceInput({output: 'expandedstorage:old_diamond_chest'}, 'minecraft:diamond', 'minecraft:diamond_block')
    event.replaceInput({output: 'expandedstorage:diamond_chest'}, 'minecraft:diamond', 'minecraft:diamond_block')
    event.replaceInput({output: 'expandedstorage:diamond_barrel'}, 'minecraft:diamond', 'minecraft:diamond_block')
    event.replaceInput({output: 'expandedstorage:wood_to_diamond_conversion_kit'}, 'minecraft:diamond', 'minecraft:diamond_block')
    event.replaceInput({output: 'expandedstorage:gold_to_diamond_conversion_kit'}, 'minecraft:diamond', 'minecraft:diamond_block')
    event.replaceInput({output: 'expandedstorage:netherite_chest'}, 'minecraft:netherite_ingot', 'minecraft:netherite_block')
    event.replaceInput({output: 'expandedstorage:old_netherite_chest'}, 'minecraft:netherite_ingot', 'minecraft:netherite_block')
    event.replaceInput({output: 'expandedstorage:netherite_barrel'}, 'minecraft:netherite_ingot', 'minecraft:netherite_block')
    event.replaceInput({output: 'expandedstorage:wood_to_netherite_conversion_kit'}, 'minecraft:netherite_ingot', 'minecraft:netherite_block')
    event.replaceInput({output: 'expandedstorage:obsidian_to_netherite_conversion_kit'}, 'minecraft:netherite_ingot', 'minecraft:netherite_block')
    event.replaceInput({output: 'expandedstorage:diamond_to_netherite_conversion_kit'}, 'minecraft:netherite_ingot', 'minecraft:netherite_block')
    event.replaceInput({output: 'expandedstorage:gold_to_netherite_conversion_kit'}, 'minecraft:netherite_ingot', 'minecraft:netherite_block')
    event.replaceInput({output: 'expandedstorage:iron_to_netherite_conversion_kit'}, 'minecraft:netherite_ingot', 'minecraft:netherite_block')
  }
});
