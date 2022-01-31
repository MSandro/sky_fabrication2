 ////////////////////////
/// Made by MSandro  ///
////////////////////////

onEvent('recipes', event => {
  // AETHER
  event.remove({output: 'the_aether:wisteria_sign'});

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

  // SIMPLETECH
  event.remove({output: 'simpletech:sieve'});
  event.remove({output: 'simpletech:sieve_auto'});

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

  // GOML
  event.remove({output: 'goml:ender_binding'});
  event.remove({output: 'goml:angelic_aura'});
  event.remove({output: 'goml:chaos_zone'});
  event.remove({output: 'goml:heaven_wings'});
  event.remove({output: 'goml:withering_seal'});
  event.remove({output: 'goml:village_core'});
  event.remove({output: 'goml:lake_spirit_grace'});

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
  event.remove({output: 'techreborn:refined_iron_ingot', type: 'minecraft:blasting'});
  event.remove({output: 'techreborn:basic_machine_frame', type: 'minecraft:crafting_shaped'});
  event.remove({output: 'techreborn:data_storage_core', type: 'minecraft:crafting_shaped'});
  event.remove({output: 'techreborn:data_storage_chip', type: 'techreborn:assembling_machine'});
  event.remove({output: 'techreborn:advanced_circuit', type: 'techreborn:assembling_machine'});

  // MC
  event.remove({output: 'minecraft:end_portal_frame'});
  event.remove({output: 'minecraft:elytra'});
  event.remove({output: 'minecraft:seed', type: 'minecraft:crafting_shapeless'})


  event.remove({output: 'minecraft:end_crystal'});
  event.shaped('1x minecraft:end_crystal', [
    'GGG',
    'GCG',
    'GIG'
  ], {
    I: 'minecraft:ghast_tear',
    G: 'minecraft:glass',
    C: 'wirelessnetworks:entangled_capacitor'
  });


  event.remove({output: 'expandedstorage:old_wood_chest'});
  event.shapeless('expandedstorage:old_wood_chest', [['minecraft:chest'], ['blockus:legacy_planks']]);
})
