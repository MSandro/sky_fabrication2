////////////////////////
/// Made by MSandro  ///
////////////////////////

onEvent('recipes', event => {
  event.remove({output: 'minecraft:end_portal_frame'});
  event.remove({output: 'rswires:red_alloy_compound'});
  event.remove({output: 'valley:crate_bamboo'});
  event.remove({output: 'blockus:oak_small_logs'});
  event.remove({output: 'blockus:charcoal_block'});
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
  event.remove({output: 'minecraft:elytra'});
  event.remove({output: 'spatialharvesters:chunk_loader'});
  event.remove({output: 'techreborn:chunk_loader'});
  event.remove({output: 'goml:ender_binding'});
  event.remove({output: 'goml:angelic_aura'});
  event.remove({output: 'goml:chaos_zone'});
  event.remove({output: 'goml:heaven_wings'});
  event.remove({output: 'goml:withering_seal'});
  event.remove({output: 'goml:village_core'});
  event.remove({output: 'goml:lake_spirit_grace'});
  event.remove({output: 'techreborn:refined_iron_ingot', type: 'minecraft:smelting'})
  event.remove({output: 'techreborn:refined_iron_ingot', type: 'minecraft:blasting'})
  event.remove({output: 'techreborn:basic_machine_frame', type: 'minecraft:crafting_shaped'})
  event.remove({output: 'modern_industrialization:bronze_dust', type: 'minecraft:crafting_shapeless'})
  event.remove({output: 'modern_industrialization:bronze_tiny_dust', type: 'minecraft:crafting_shapeless'})
  event.remove({output: 'minecraft:seed', type: 'minecraft:crafting_shapeless'})
  event.remove({output: 'resourceful_tools:powder_steel', type: 'minecraft:crafting_shaped'})
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
	
	
  event.remove({output: 'simpletech:sieve_gold'});
  event.shaped('1x simpletech:sieve_gold', [
    'NNN',
    'NCN',
    'NGN'
  ], {
    N: 'minecraft:gold_block',
    C: 'simpletech:sieve',
    G: 'modern_industrialization:gold_gear',
  });
  
  event.remove({output: 'simpletech:sieve_auto_gold'});
  event.shaped('1x simpletech:sieve_auto_gold', [
    'NNN',
    'NCN',
    'XGX'
  ], {
    N: 'minecraft:gold_block',
    C: 'simpletech:sieve_gold',
    G: 'modern_industrialization:gold_gear',
    X: 'minecraft:redstone_block'
  });
  
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
  
  event.shaped('1x kubejs:melon_infusion_crystal', [
    'GOG',
    'OCO',
    'GOG'
  ], {
    O: 'minecraft:melon_seeds',
    C: 'lightestlamp:radon_rod',
    G: 'minecraft:glistering_melon_slice'
  });
  
  event.remove({output: 'expandedstorage:old_wood_chest'});
  event.shapeless('expandedstorage:old_wood_chest', [['minecraft:chest'], ['blockus:legacy_planks']]);
})