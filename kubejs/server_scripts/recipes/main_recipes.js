//priority: 1
////////////////////////
/// Made by MSandro  ///
////////////////////////

onEvent('recipes', event => {
  // IMPROVED stations
  event.remove({output: 'improved-stations:blast_furnace_slab'});
  event.remove({output: 'improved-stations:furnace_slab'});
  event.remove({output: 'improved-stations:crafting_table_slab'});

  // CONFLICTS
  event.remove({output: 'betteranimalsplus:fried_egg', input: 'minecraft:egg'});
  event.remove({output: 'additionaladditions:fried_egg'});
  event.remove({output: 'blockus:legacy_stonecutter'});
  event.shapeless('blockus:legacy_stonecutter', ['minecraft:stonecutter']);

  // AETHER
  event.remove({output: 'the_aether:wisteria_sign'});
  event.remove({output: 'the_aether:skyroot_sign'});

  // BEWITCHMENT
  event.remove({output: 'bewitchment:juniper_broom'});
  event.remove({output: 'bewitchment:cypress_broom'});
  event.remove({output: 'bewitchment:elder_broom'});
  event.remove({output: 'bewitchment:dragons_blood_broom'});

  // COMPRESS
  const DelCompressem = [
    "compress:bundle_of_sticks",
    "resourceful_tools:dirt_single",
    "resourceful_tools:dirt_double",
    "resourceful_tools:dirt_triple",
    "resourceful_tools:gravel_single",
    "resourceful_tools:gravel_double",
    "resourceful_tools:gravel_triple",
    "resourceful_tools:sand_single",
    "resourceful_tools:sand_double",
    "resourceful_tools:sand_triple",
    "resourceful_tools:cobblestone_single",
    "resourceful_tools:cobblestone_double",
    "resourceful_tools:cobblestone_triple",
    "resourceful_tools:andesite_single",
    "resourceful_tools:andesite_double",
    "resourceful_tools:andesite_triple",
    "resourceful_tools:diorite_single",
    "resourceful_tools:diorite_double",
    "resourceful_tools:diorite_triple",
    "resourceful_tools:granite_single",
    "resourceful_tools:granite_double",
    "resourceful_tools:granite_triple",
    "resourceful_tools:netherrack_single",
    "resourceful_tools:netherrack_double",
    "resourceful_tools:netherrack_triple",
    "compress:bag_with_blaze_rods",
    "compress:bag_with_ender_pearls",
    "compress:yarn_ball"
  ]
  DelCompressem.forEach(id => event.remove({output: id}));

  // AE2
  event.remove({output: 'appliedenergistics2:crafting_monitor', type: 'minecraft:crafting_shaped'});

  // RSWIRES
  event.remove({output: 'rswires:red_alloy_compound'});

  // SPATIAL
  event.remove({output: 'spatialharvesters:chunk_loader'});
  event.remove({output: 'spatialharvesters:ore_harvester_1'});
  event.remove({output: 'spatialharvesters:ore_harvester_2'});
  event.remove({output: 'spatialharvesters:ore_harvester_3'});
  event.remove({output: 'spatialharvesters:ore_harvester_4'});
  event.remove({output: 'spatialharvesters:ore_harvester_5'});
  event.remove({output: 'spatialharvesters:ore_harvester_6'});
  event.remove({output: 'spatialharvesters:ore_harvester_7'});
  event.remove({output: 'spatialharvesters:ore_harvester_8'});

  // BLOCKUS
  event.remove({output: 'blockus:oak_small_logs'});
  event.remove({output: 'blockus:charcoal_block'});

  // VALLEY
  event.remove({output: 'valley:charcoal_block'});
  event.remove({output: 'valley:rg_axe'});
  event.remove({output: 'valley:rg_boots'});
  event.remove({output: 'valley:rg_chestplate'});
  event.remove({output: 'valley:rg_helmet'});
  event.remove({output: 'valley:rg_hoe'});
  event.remove({output: 'valley:rg_leggings'});
  event.remove({output: 'valley:rg_pickaxe'});
  event.remove({output: 'valley:rg_shovel'});
  event.remove({output: 'valley:rg_sword'});
  event.remove({output: 'valley:spike_wall_block'});

  // RedBits
  event.remove({output: 'redbits:timer'});

  // RESOURCEFUL_TOOLS
  event.remove({output: 'resourceful_tools:bamboo_sheet'});
  event.remove({output: 'resourceful_tools:ream_of_paper'});
  event.remove({output: 'resourceful_tools:powder_steel', type: 'minecraft:crafting_shaped'});

  // MI macerator
  event.remove({output: 'modern_industrialization:aluminum_tiny_dust', type: 'modern_industrialization:macerator'});
  event.remove({output: 'modern_industrialization:bronze_tiny_dust', type: 'modern_industrialization:macerator'});
  event.remove({output: 'modern_industrialization:copper_tiny_dust', type: 'modern_industrialization:macerator'});
  event.remove({output: 'modern_industrialization:gold_tiny_dust', type: 'modern_industrialization:macerator'});
  event.remove({output: 'modern_industrialization:stainless_steel_tiny_dust', type: 'modern_industrialization:macerator'});
  event.remove({output: 'modern_industrialization:steel_tiny_dust', type: 'modern_industrialization:macerator'});
  event.remove({output: 'modern_industrialization:titanium_tiny_dust', type: 'modern_industrialization:macerator'});

  // MI Drills
  event.remove({output: 'modern_industrialization:gold_drill', type: 'minecraft:crafting_shaped'})
  event.remove({output: 'modern_industrialization:gold_drill_head', type: 'minecraft:crafting_shaped'})
  event.remove({output: 'modern_industrialization:aluminum_drill', type: 'minecraft:crafting_shaped'})
  event.remove({output: 'modern_industrialization:aluminum_drill_head', type: 'minecraft:crafting_shaped'})
  event.remove({output: 'modern_industrialization:bronze_drill', type: 'minecraft:crafting_shaped'})
  event.remove({output: 'modern_industrialization:bronze_drill_head', type: 'minecraft:crafting_shaped'})
  event.remove({output: 'modern_industrialization:copper_drill', type: 'minecraft:crafting_shaped'})
  event.remove({output: 'modern_industrialization:copper_drill_head', type: 'minecraft:crafting_shaped'})
  event.remove({output: 'modern_industrialization:stainless_steel_drill', type: 'minecraft:crafting_shaped'})
  event.remove({output: 'modern_industrialization:stainless_steel_drill_head', type: 'minecraft:crafting_shaped'})
  event.remove({output: 'modern_industrialization:steel_drill', type: 'minecraft:crafting_shaped'})
  event.remove({output: 'modern_industrialization:steel_drill_head', type: 'minecraft:crafting_shaped'})
  event.remove({output: 'modern_industrialization:titanium_drill', type: 'minecraft:crafting_shaped'})
  event.remove({output: 'modern_industrialization:titanium_drill_head', type: 'minecraft:crafting_shaped'})
  event.remove({output: 'appliedenergistics2:quartz_ore', type: 'modern_industrialization:quarry'})
  event.remove({output: 'indrev:nikolite_ore', type: 'modern_industrialization:quarry'})

  // MI Dusts
  event.remove({output: 'modern_industrialization:steel_dust', type: 'minecraft:crafting_shaped'});
  event.remove({output: 'modern_industrialization:uncooked_steel_dust', type: 'minecraft:crafting_shapeless'})
  event.remove({output: 'modern_industrialization:bronze_dust', type: 'minecraft:crafting_shapeless'})
  event.remove({output: 'modern_industrialization:bronze_tiny_dust', type: 'minecraft:crafting_shapeless'})

  // TechReborn
  event.remove({output: 'techreborn:chunk_loader'});
  event.remove({output: 'techreborn:chunk_loader'});
  event.remove({output: 'techreborn:refined_iron_ingot', type: 'minecraft:smelting'});
  event.remove({output: 'techreborn:refined_iron_storage_block', type: 'minecraft:smelting'});
  event.remove({output: 'techreborn:refined_iron_ingot', type: 'minecraft:blasting'});
  event.remove({output: 'techreborn:refined_iron_storage_block', type: 'minecraft:blasting'});
  event.remove({output: 'techreborn:basic_machine_frame', type: 'minecraft:crafting_shaped'});
  event.remove({output: 'techreborn:data_storage_core', type: 'minecraft:crafting_shaped'});
  event.remove({output: 'techreborn:data_storage_chip', type: 'techreborn:assembling_machine'});
  event.remove({output: 'techreborn:advanced_circuit', type: 'minecraft:crafting_shaped'});

  // MC
  event.remove({output: 'minecraft:wheat_seeds', input: '#resourceful_tools:crack_hammers', type: 'minecraft:crafting_shapeless'});
  event.remove({output: 'minecraft:blaze_rod', input: 'minecraft:blaze_powder', type: 'minecraft:crafting_shapeless'});
  event.shapeless('minecraft:blaze_rod', ['minecraft:blaze_powder', 'minecraft:blaze_powder', 'minecraft:blaze_powder', 'minecraft:blaze_powder']);
  event.remove({output: 'minecraft:netherite_ingot'});
  event.shapeless('minecraft:netherite_ingot', ['modern_industrialization:gold_large_plate',
                                                'minecraft:netherite_scrap', 'minecraft:netherite_scrap', 'minecraft:netherite_scrap', 'minecraft:netherite_scrap',
                                                'minecraft:netherite_scrap', 'minecraft:netherite_scrap', 'minecraft:netherite_scrap', 'minecraft:netherite_scrap']);
  event.shapeless('9x minecraft:netherite_ingot', ['minecraft:netherite_block']);

  event.remove({output: 'minecraft:end_crystal'});
  event.shaped('1x minecraft:end_crystal', [
    'GGG',
    'GCG',
    'GIG'
  ], {
    I: 'minecraft:nether_star',
    G: 'minecraft:glass',
    C: 'endrem:end_crystal_ingot'
  });

  event.shapeless('9x minecraft:charcoal', ['skyutils:charcoal_block'])
  event.remove({output: 'modern_industrialization:salt_tiny_dust'})
  event.shapeless('bewitchment:salt', ['modern_industrialization:salt_dust'])

  event.remove({output: 'expandedstorage:old_wood_chest'});
  event.shapeless('expandedstorage:old_wood_chest', [['minecraft:chest'], ['blockus:legacy_planks']]);
})
