// priority: 0

console.info('Hello, World! (You will see this line every time client resources reload)')

onEvent('rei.information', event => {
  event.add('skyutils:raw_crucible', 'Crucible', ['put a Raw Crucible in the Kiln', 'and fire it with a Charcoal Block']);
  event.add('skyutils:crucible', 'Crucible', ['put a Raw Crucible in the Kiln', 'and fire it with a Charcoal Block']);
  event.add('skyutils:lava_crucible', 'Lava Crucible', ['put a Crucible with 16 Cobblestones in the Kiln', 'and fire it with a Charcoal Block']);
  event.add('skyutils:water_crucible', 'Water Crucible', ['right-click with a Crucible on a filled Condenser to get Water']);
  event.add('skyutils:wooden_hammer', 'Hammering', ['Dirt or Grass Blocks -> Pebbles (+ small chance to get other items)', 'Cobblestone or Stone -> Gravel (+ small chance to get iron nuggets) ->', 'Sand -> Clay (+ small chance to get other items)', 'Wood Logs -> Saw Dust', 'Coal / Charcoal Block -> small chance to get Diamond Nuggets']);
  event.add('skyutils:stone_hammer', 'Hammering', ['Dirt or Grass Blocks -> Pebbles', 'Cobblestone or Stone -> Gravel ->', 'Sand -> Clay', 'Wood Logs -> Saw Dust', 'Coal / Charcoal Block -> small chance to get Diamond Nuggets']);
  event.add('skyutils:iron_hammer', 'Hammering', ['Dirt or Grass Blocks -> Pebbles', 'Cobblestone or Stone -> Gravel ->', 'Sand -> Clay', 'Wood Logs -> Saw Dust', 'Coal / Charcoal Block -> small chance to get Diamond Nuggets']);
  event.add('skyutils:diamond_hammer', 'Hammering', ['Dirt or Grass Blocks -> Pebbles', 'Cobblestone or Stone -> Gravel ->', 'Sand -> Clay', 'Wood Logs -> Saw Dust', 'Coal / Charcoal Block -> small chance to get Diamond Nuggets']);
  event.add('skyutils:netherite_hammer', 'Hammering', ['Dirt or Grass Blocks -> Pebbles', 'Cobblestone or Stone -> Gravel ->', 'Sand -> Clay', 'Wood Logs -> Saw Dust', 'Coal / Charcoal Block -> small chance to get Diamond Nuggets']);
})

onEvent('jei.hide.items', event => {
	// Hide items in JEI here
	event.hide('scf:tin_funnel')
	event.hide('scf:copper_funnel')
	event.hide('scf:silver_funnel')
	event.hide('scf:bronze_funnel')
	event.hide('valley:rg_axe')
	event.hide('valley:rg_boots')
	event.hide('valley:rg_chestplate')
	event.hide('valley:rg_helmet')
	event.hide('valley:rg_hoe')
	event.hide('valley:rg_leggings')
	event.hide('valley:rg_pickaxe')
	event.hide('valley:rg_shovel')
	event.hide('valley:rg_sword')
})

const DELETED_ITEMS = [
	"ringsofascension:ring_luck",
	"ringsofascension:ring_regeneration",
	"ringsofascension:ring_hungerless",
	"ringsofascension:ring_health",
	"ringsofascension:ring_flight",
	"ringsofascension:ring_undying",
	"techreborn:aluminum_storage_block",
	"techreborn:aluminum_dust",
	"techreborn:aluminum_ingot",
	"techreborn:aluminum_nugget",
	"techreborn:aluminum_plate",
	"techreborn:bauxite_dust",
	"techreborn:bronze_storage_block",
	"indrev:bronze_block",
	"techreborn:bronze_dust",
	"indrev:bronze_dust",
	"techreborn:bronze_ingot",
	"indrev:bronze_ingot",
	"indrev:bronze_nugget",
	"techreborn:bronze_nugget",
	"indrev:bronze_plate",
	"techreborn:bronze_plate",
	"techreborn:chrome_storage_block",
	"techreborn:chrome_dust",
	"techreborn:chrome_ingot",
	"techreborn:chrome_nugget",
	"techreborn:chrome_plate",
	"indrev:coal_dust",
	"techreborn:coal_dust",
	"indrev:copper_dust",
	"techreborn:copper_nugget",
	"indrev:copper_nugget",
	"charm:copper_nugget",
	"techreborn:copper_plate",
	"indrev:copper_plate",
	"indrev:diamond_dust",
	"techreborn:diamond_dust",
	"techreborn:diamond_plate",
	"indrev:electrum_block",
	"techreborn:electrum_storage_block",
	"indrev:electrum_dust",
	"techreborn:electrum_dust",
	"indrev:electrum_ingot",
	"techreborn:electrum_ingot",
	"techreborn:electrum_nugget",
	"indrev:electrum_nugget",
	"indrev:electrum_plate",
	"techreborn:electrum_plate",
	"techreborn:emerald_dust",
	"techreborn:emerald_plate",
	"indrev:gold_dust",
	"techreborn:gold_plate",
	"indrev:gold_plate",
	"techreborn:invar_storage_block",
	"techreborn:invar_dust",
	"techreborn:invar_ingot",
	"techreborn:invar_nugget",
	"techreborn:invar_plate",
	"techreborn:iridium_storage_block",
	"techreborn:iridium_ingot",
	"techreborn:iridium_nugget",
	"indrev:iron_dust",
	"techreborn:iron_plate",
	"indrev:iron_plate",
	"techreborn:lapis_plate",
	"techreborn:lead_storage_block",
	"indrev:lead_dust",
	"techreborn:lead_ingot",
	"indrev:lead_ingot",
	"techreborn:lead_nugget",
	"indrev:lead_nugget",
	"techreborn:lead_plate",
	"indrev:lead_plate",
	"indrev:raw_lead",
	"techreborn:manganese_dust",
	"techreborn:nickel_storage_block",
	"techreborn:nickel_dust",
	"techreborn:nickel_ingot",
	"techreborn:nickel_nugget",
	"techreborn:nickel_plate",
	"techreborn:platinum_storage_block",
	"techreborn:platinum_dust",
	"techreborn:platinum_ingot",
	"techreborn:platinum_nugget",
	"techreborn:platinum_plate",
	"techreborn:quartz_dust",
	"techreborn:ruby_dust",
	"techreborn:silicon_plate",
	"techreborn:silver_storage_block",
	"indrev:silver_block",
	"indrev:silver_dust",
	"techreborn:silver_ingot",
	"indrev:silver_ingot",
	"techreborn:silver_nugget",
	"indrev:silver_nugget",
	"techreborn:silver_plate",
	"indrev:silver_plate",
	"indrev:raw_silver",
	"indrev:steel_block",
	"techreborn:steel_storage_block",
	"techreborn:steel_dust",
	"indrev:steel_dust",
	"indrev:steel_ingot",
	"techreborn:steel_ingot",
	"techreborn:steel_nugget",
	"indrev:steel_nugget",
	"indrev:steel_plate",
	"techreborn:steel_plate",
	"techreborn:sulfur_dust",
	"indrev:sulfur_dust",
	"indrev:tin_block",
	"techreborn:tin_storage_block",
	"indrev:tin_dust",
	"techreborn:tin_ingot",
	"indrev:tin_ingot",
	"indrev:tin_nugget",
	"techreborn:tin_nugget",
	"indrev:tin_plate",
	"techreborn:tin_plate",
	"indrev:raw_tin",
	"techreborn:titanium_storage_block",
	"techreborn:titanium_dust",
	"techreborn:titanium_ingot",
	"techreborn:titanium_nugget",
	"techreborn:titanium_plate",
	"techreborn:tungsten_storage_block",
	"indrev:tungsten_block",
	"indrev:tungsten_dust",
	"techreborn:tungsten_ingot",
	"indrev:tungsten_ingot",
	"indrev:tungsten_nugget",
	"techreborn:tungsten_nugget",
	"techreborn:tungsten_plate",
	"indrev:tungsten_plate",
	"indrev:raw_tungsten",
	"techreborn:bauxite_ore",
	"techreborn:iridium_ore",
	"indrev:lead_ore",
	"indrev:deepslate_lead_ore",
	"techreborn:lead_ore",
	"techreborn:silver_ore",
	"indrev:deepslate_tin_ore",
	"techreborn:tin_ore",
	"indrev:tin_ore",
	"indrev:tungsten_ore",
	"indrev:deepslate_tungsten_ore",
	"techreborn:tungsten_ore",
	"scf:tin_funnel",
	"scf:copper_funnel",
	"scf:silver_funnel",
	"scf:bronze_funnel",
	"simple_pipes:facade"
 ];
events.listen("kjsextras_rei", event => {
    DELETED_ITEMS.forEach(id => event.remove(id));
});