import crafttweaker.item.IItemStack;

var STAGE = STAGES.one;

//mods.ItemStages.addItemStage(String stage, Item/Block/OreDict);

/*
var modIDs = [
] as string[];
for id in modIDs {
    for item in loadedMods[id].items {
        mods.ItemStages.addItemStage(STAGE, item);
    }
}
*/

var stage1Items = [
	<abyssalcraft:abybutton>,
	<abyssalcraft:cstonebutton>,
	<abyssalcraft:dltbutton>,
	<abyssalcraft:dsbutton>,
	//<acintegration:moltencoralium>,
	<minecraft:chest>,
	<minecraft:concrete:*>,
	<minecraft:concrete_powder:*>,
	<minecraft:crafting_table>,
	<minecraft:furnace>,
	<minecraft:stone_button>,
	<minecraft:wooden_button>,
	<prospectors:prospector_lowest>,
	<minecraft:ladder>,
	<rustic:book>,
	<teslacorelib:gear_stone>,
	<minecraft:cake>,

	//Ore
	<abyssalcraft:abycopore>,
	<abyssalcraft:abytinore>,
	<actuallyadditions:block_misc:3>,
	<immersiveengineering:ore>,
	<minecraft:coal_ore>,

	//Bricks
	<betterwithaddons:bricks_stained:*>,
	<betterwithaddons:material:*>,
	<minecraft:brick_block>,
	<minecraft:stone_slab:4>,
	<minecraft:stone_slab:5>,
	<minecraft:stonebrick:*>,
	<quark:polished_netherrack:1>,
	<quark:polished_netherrack_bricks_slab>,
	<quark:polished_netherrack_bricks_stairs>,
	<quark:polished_netherrack_bricks_wall>,
	<quark:stone_andesite_bricks_slab>,
	<quark:stone_andesite_bricks_stairs>,
	<quark:stone_andesite_bricks_wall>,
	<quark:stone_diorite_bricks_slab>,
	<quark:stone_diorite_bricks_stairs>,
	<quark:stone_diorite_bricks_wall>,
	<quark:stone_granite_bricks_slab>,
	<quark:stone_granite_bricks_stairs>,
	<quark:stone_granite_bricks_wall>,
	<quark:world_stone_bricks:*>,
	<tconstruct:brownstone:3>,
	<tconstruct:brownstone_slab2:1>,
	<tconstruct:brownstone_slab2:2>,
	<tconstruct:brownstone_slab:3>,
	<tconstruct:brownstone_slab:4>,
	<tconstruct:brownstone_slab:5>,
	<tconstruct:brownstone_slab:6>,
	<tconstruct:brownstone_stairs_brick>,
	<tconstruct:brownstone_stairs_brick_cracked>,
	<tconstruct:brownstone_stairs_brick_fancy>,
	<tconstruct:brownstone_stairs_brick_small>,
	<tconstruct:brownstone_stairs_brick_square>,
	<tconstruct:brownstone_stairs_brick_triangle>,
	<tconstruct:deco_ground>,
	<tconstruct:deco_ground_slab>,
	<tconstruct:dried_brick_stairs>,
	<tconstruct:dried_clay:1>,
	<tconstruct:dried_clay_slab:1>,
	<tconstruct:mudbrick_stairs>,
	<traverse:blue_rock_bricks>,
	<traverse:blue_rock_bricks_chiseled>,
	<traverse:blue_rock_bricks_slab>,
	<traverse:blue_rock_bricks_stairs>,
	<traverse:red_rock_bricks>,
	<traverse:red_rock_bricks_chiseled>,
	<traverse:red_rock_bricks_slab>,
	<traverse:red_rock_bricks_stairs>,

	//Stairs
	<minecraft:acacia_stairs>,
	<minecraft:birch_stairs>,
	<minecraft:brick_stairs>,
	<minecraft:dark_oak_stairs>,
	<minecraft:jungle_stairs>,
	<minecraft:nether_brick_stairs>,
	<minecraft:oak_stairs>,
	<minecraft:purpur_stairs>,
	<minecraft:quartz_stairs>,
	<minecraft:red_sandstone_stairs>,
	<minecraft:sandstone_stairs>,
	<minecraft:spruce_stairs>,
	<minecraft:stone_brick_stairs>,
	<minecraft:stone_stairs>,
	<quark:hardened_clay_tiles_stairs>,
	<quark:prismarine_bricks_stairs>,
	<quark:prismarine_dark_stairs>,
	<quark:stained_clay_tiles_black_stairs>,
	<quark:stained_clay_tiles_blue_stairs>,
	<quark:stained_clay_tiles_brown_stairs>,
	<quark:stained_clay_tiles_cyan_stairs>,
	<quark:stained_clay_tiles_gray_stairs>,
	<quark:stained_clay_tiles_green_stairs>,
	<quark:stained_clay_tiles_light_blue_stairs>,
	<quark:stained_clay_tiles_lime_stairs>,
	<quark:stained_clay_tiles_magenta_stairs>,
	<quark:stained_clay_tiles_orange_stairs>,
	<quark:stained_clay_tiles_pink_stairs>,
	<quark:stained_clay_tiles_purple_stairs>,
	<quark:stained_clay_tiles_red_stairs>,
	<quark:stained_clay_tiles_silver_stairs>,
	<quark:stained_clay_tiles_white_stairs>,
	<quark:stained_clay_tiles_yellow_stairs>,
	<quark:stone_andesite_stairs>,
	<quark:stone_diorite_stairs>,
	<quark:stone_granite_stairs>,
	<quark:stone_stairs>,

	//Fences and Doors
	<abyssalcraft:abydreadbrickfence>,
	<abyssalcraft:abyfence>,
	<abyssalcraft:cstonebrickfence>,
	<abyssalcraft:darkethaxiumbrickfence>,
	<abyssalcraft:dltfence>,
	<abyssalcraft:dreadbrickfence>,
	<abyssalcraft:drtfence>,
	<abyssalcraft:dsbfence>,
	<abyssalcraft:ethaxiumfence>,
	<minecraft:acacia_door>,
	<minecraft:acacia_fence>,
	<minecraft:acacia_fence_gate>,
	<minecraft:birch_door>,
	<minecraft:birch_fence>,
	<minecraft:birch_fence_gate>,
	<minecraft:dark_oak_door>,
	<minecraft:dark_oak_fence>,
	<minecraft:dark_oak_fence_gate>,
	<minecraft:fence>,
	<minecraft:fence_gate>,
	<minecraft:jungle_door>,
	<minecraft:jungle_fence>,
	<minecraft:jungle_fence_gate>,
	<minecraft:nether_brick_fence>,
	<minecraft:spruce_door>,
	<minecraft:spruce_fence>,
	<minecraft:spruce_fence_gate>,
	<minecraft:trapdoor>,
	<minecraft:wooden_door>,
	<natura:amaranth_fence>,
	<natura:amaranth_fence_gate>,
	<natura:bloodwood_fence>,
	<natura:bloodwood_fence_gate>,
	<natura:darkwood_fence>,
	<natura:darkwood_fence_gate>,
	<natura:eucalyptus_fence>,
	<natura:eucalyptus_fence_gate>,
	<natura:fusewood_fence>,
	<natura:fusewood_fence_gate>,
	<natura:ghostwood_fence>,
	<natura:ghostwood_fence_gate>,
	<natura:hopseed_fence>,
	<natura:hopseed_fence_gate>,
	<natura:maple_fence>,
	<natura:maple_fence_gate>,
	<natura:redwood_fence>,
	<natura:redwood_fence_gate>,
	<natura:sakura_fence>,
	<natura:sakura_fence_gate>,
	<natura:silverbell_fence>,
	<natura:silverbell_fence_gate>,
	<natura:tiger_fence>,
	<natura:tiger_fence_gate>,
	<natura:willow_fence>,
	<natura:willow_fence_gate>,
	<primal:fence_corypha>,
	<primal:fence_ironwood>,
	<primal:fence_lacquer>,
	<quark:nether_brick_fence_gate>,
	<rustic:fence_gate_ironwood>,
	<rustic:fence_gate_olive>,
	<rustic:fence_ironwood>,
	<rustic:fence_olive>,
	<rustic:ironwood_door>,
	<rustic:olive_door>,
	<traverse:fir_door>,
	<traverse:fir_fence>,
	<traverse:fir_fence_gate>,

	//Tools
	<abyssalcraft:dhoe>,
	<cyclicmagic:sandstone_hoe>,
	<minecraft:stone_hoe>,
	<minecraft:wooden_hoe>,
	<primal:flint_hoe>,

	//Chisel
	<chisel:andesite1:*>,
	<chisel:andesite2:*>,
	<chisel:andesite:*>,
	<chisel:basalt1:*>,
	<chisel:basalt2:1>,
	<chisel:basalt2:2>,
	<chisel:basalt2:3>,
	<chisel:basalt2:4>,
	<chisel:basalt2:5>,
	<chisel:basalt2:6>,
	<chisel:basalt2>,
	<chisel:basalt:*>,
	<chisel:block_charcoal1:*>,
	<chisel:block_charcoal2:*>,
	<chisel:block_charcoal:*>,
	<chisel:block_coal1:*>,
	<chisel:block_coal2:*>,
	<chisel:block_coal:*>,
	<chisel:blockbronze:*>,
	<chisel:blockcopper:*>,
	<chisel:blocktin:*>,
	<chisel:bricks1:*>,
	<chisel:bricks2:*>,
	<chisel:bricks:*>,
	<chisel:brownstone:*>,
	<chisel:chisel_iron>,
	<chisel:cobblestone1:*>,
	<chisel:cobblestone2:*>,
	<chisel:cobblestone:*>,
	<chisel:cobblestonemossy1:*>,
	<chisel:cobblestonemossy2:*>,
	<chisel:cobblestonemossy:*>,
	<chisel:concrete_black1:*>,
	<chisel:concrete_black2:*>,
	<chisel:concrete_black:*>,
	<chisel:concrete_blue1:*>,
	<chisel:concrete_blue2:*>,
	<chisel:concrete_blue:*>,
	<chisel:concrete_brown1:*>,
	<chisel:concrete_brown2:*>,
	<chisel:concrete_brown:*>,
	<chisel:concrete_cyan1:*>,
	<chisel:concrete_cyan2:*>,
	<chisel:concrete_cyan:*>,
	<chisel:concrete_gray1:*>,
	<chisel:concrete_gray2:*>,
	<chisel:concrete_gray:*>,
	<chisel:concrete_green1:*>,
	<chisel:concrete_green2:*>,
	<chisel:concrete_green:*>,
	<chisel:concrete_lightblue1:*>,
	<chisel:concrete_lightblue2:*>,
	<chisel:concrete_lightblue:*>,
	<chisel:concrete_lightgray1:*>,
	<chisel:concrete_lightgray2:*>,
	<chisel:concrete_lightgray:*>,
	<chisel:concrete_lime1:*>,
	<chisel:concrete_lime2:*>,
	<chisel:concrete_lime:*>,
	<chisel:concrete_magenta1:*>,
	<chisel:concrete_magenta2:*>,
	<chisel:concrete_magenta:*>,
	<chisel:concrete_orange1:*>,
	<chisel:concrete_orange2:*>,
	<chisel:concrete_orange:*>,
	<chisel:concrete_pink1:*>,
	<chisel:concrete_pink2:*>,
	<chisel:concrete_pink:*>,
	<chisel:concrete_purple1:*>,
	<chisel:concrete_purple2:*>,
	<chisel:concrete_purple:*>,
	<chisel:concrete_red1:*>,
	<chisel:concrete_red2:*>,
	<chisel:concrete_red:*>,
	<chisel:concrete_white1:*>,
	<chisel:concrete_white2:*>,
	<chisel:concrete_white:*>,
	<chisel:concrete_yellow1:*>,
	<chisel:concrete_yellow2:*>,
	<chisel:concrete_yellow:*>,
	<chisel:diorite1:*>,
	<chisel:diorite2:*>,
	<chisel:diorite:*>,
	<chisel:dirt:*>,
	<chisel:granite1:*>,
	<chisel:granite2:*>,
	<chisel:granite:*>,
	<chisel:hardenedclay1:*>,
	<chisel:hardenedclay2:*>,
	<chisel:hardenedclay:*>,
	<chisel:ice1:*>,
	<chisel:ice2:*>,
	<chisel:ice:*>,
	<chisel:icepillar:*>,
	<chisel:limestone1:*>,
	<chisel:limestone2:1>,
	<chisel:limestone2:2>,
	<chisel:limestone2:3>,
	<chisel:limestone2:4>,
	<chisel:limestone2:5>,
	<chisel:limestone2:6>,
	<chisel:limestone2>,
	<chisel:limestone:*>,
	<chisel:marble1:*>,
	<chisel:marble2:0>,
	<chisel:marble2:1>,
	<chisel:marble2:2>,
	<chisel:marble2:3>,
	<chisel:marble2:4>,
	<chisel:marble2:5>,
	<chisel:marble2:6>,
	<chisel:marble:*>,
	<chisel:marblepillar:*>,
	<chisel:planks-acacia:*>,
	<chisel:planks-birch:*>,
	<chisel:planks-dark-oak:*>,
	<chisel:planks-jungle:*>,
	<chisel:planks-oak:*>,
	<chisel:planks-spruce:*>,
	<chisel:prismarine1:*>,
	<chisel:prismarine2:*>,
	<chisel:prismarine:*>,
	<chisel:sandstone-scribbles:*>,
	<chisel:sandstonered1:*>,
	<chisel:sandstonered2:*>,
	<chisel:sandstonered:*>,
	<chisel:sandstoneyellow1:*>,
	<chisel:sandstoneyellow2:*>,
	<chisel:sandstoneyellow:*>,
	<chisel:stonebrick1:*>,
	<chisel:stonebrick2:*>,
	<chisel:stonebrick:*>,
	<chisel:temple:*>,
	<chisel:templemossy:*>,

	//Rustic
	<rustic:andesite_pillar>,
	<rustic:barrel>,
	<rustic:cabinet>,
	<rustic:chair_acacia>,
	<rustic:chair_big_oak>,
	<rustic:chair_birch>,
	<rustic:chair_ironwood>,
	<rustic:chair_jungle>,
	<rustic:chair_oak>,
	<rustic:chair_olive>,
	<rustic:chair_spruce>,
	<rustic:crop_stake>,
	<rustic:crushing_tub>,
	<rustic:diorite_pillar>,
	<rustic:evaporating_basin>,
	<rustic:granite_pillar>,
	<rustic:rope>,
	<rustic:slate_pillar>,
	<rustic:stairs_ironwood>,
	<rustic:stairs_olive>,
	<rustic:stone_pillar>,
	<rustic:table_acacia>,
	<rustic:table_big_oak>,
	<rustic:table_birch>,
	<rustic:table_ironwood>,
	<rustic:table_jungle>,
	<rustic:table_oak>,
	<rustic:table_olive>,
	<rustic:table_spruce>,
	<rustic:vase>,

	//Torches
	<cyclicmagic:ender_torch>,
	<minecraft:torch>,
	<tconstruct:stone_torch>,

	//Actually Additions
	<actuallyadditions:block_fishing_net>,
	<actuallyadditions:block_misc:1>,
	<actuallyadditions:block_misc:2>,
	<actuallyadditions:block_misc>,
	<actuallyadditions:block_tiny_torch>,
	<actuallyadditions:item_axe_quartz>,
	<actuallyadditions:item_boots_quartz>,
	<actuallyadditions:item_chest_quartz>,
	<actuallyadditions:item_crafter_on_a_stick>,
	<actuallyadditions:item_helm_quartz>,
	<actuallyadditions:item_hoe_quartz>,
	<actuallyadditions:item_misc:5>,
	<actuallyadditions:item_pants_quartz>,
	<actuallyadditions:item_pickaxe_quartz>,
	<actuallyadditions:item_shovel_quartz>,
	<actuallyadditions:item_sword_quartz>,
	<actuallyadditions:quartz_paxel>,

	//Bibliocraft
	<bibliocraft:plumbline>,
	<bibliocraft:shelf:1>,
	<bibliocraft:shelf:2>,
	<bibliocraft:shelf:3>,
	<bibliocraft:shelf:4>,
	<bibliocraft:shelf:5>,
	<bibliocraft:shelf:6>,
	<bibliocraft:shelf>,
	<bibliocraft:toolrack:*>,

	//Dark Utils
	<darkutils:charm_gluttony>,
	<darkutils:charm_sleep>,
	<darkutils:slime_dyed:*>,

	//Astral Sorcery in Stage 1
	<astralsorcery:blockaltar>,
	<astralsorcery:blockmarble:1>,
	<astralsorcery:blockmarble:2>,
	<astralsorcery:blockmarble:3>,
	<astralsorcery:blockmarble:4>,
	<astralsorcery:blockmarble:5>,
	<astralsorcery:blockmarble:6>,
	<astralsorcery:blockmarble>,
	<astralsorcery:blockmarbleslab>,
	<astralsorcery:blockmarblestairs>,
	<astralsorcery:itemcraftingcomponent:5>,
	<astralsorcery:itemcraftingcomponent>,
	<astralsorcery:itemjournal>,

	//Ceramics
	<ceramics:channel>,
	//<ceramics:clay_barrel:1>,
	<ceramics:clay_barrel>,
	<ceramics:clay_barrel_stained:*>,
	<ceramics:clay_barrel_stained_extension:*>,
	//<ceramics:clay_barrel_unfired:1>,
	<ceramics:clay_barrel_unfired:2>,
	<ceramics:clay_barrel_unfired:3>,
	<ceramics:clay_barrel_unfired>,
	<ceramics:clay_boots>,
	<ceramics:clay_bucket>,
	<ceramics:clay_bucket_block>,
	<ceramics:clay_chestplate>,
	<ceramics:clay_hard:1>,
	<ceramics:clay_hard:2>,
	<ceramics:clay_hard:4>,
	<ceramics:clay_hard:5>,
	<ceramics:clay_hard:6>,
	<ceramics:clay_hard>,
	<ceramics:clay_helmet>,
	<ceramics:clay_leggings>,
	<ceramics:clay_shears>,
	<ceramics:clay_slab:1>,
	<ceramics:clay_slab:2>,
	<ceramics:clay_slab:4>,
	<ceramics:clay_slab:5>,
	<ceramics:clay_slab:6>,
	<ceramics:clay_slab>,
	<ceramics:clay_wall:1>,
	<ceramics:clay_wall:2>,
	<ceramics:clay_wall:3>,
	<ceramics:clay_wall:5>,
	<ceramics:clay_wall:6>,
	<ceramics:clay_wall:7>,
	<ceramics:clay_wall>,
	<ceramics:dark_bricks_stairs>,
	<ceramics:dragon_bricks_stairs>,
	<ceramics:faucet>,
	<ceramics:lava_bricks_stairs>,
	<ceramics:marine_bricks_stairs>,
	<ceramics:porcelain:10>,
	<ceramics:porcelain:11>,
	<ceramics:porcelain:12>,
	<ceramics:porcelain:13>,
	<ceramics:porcelain:14>,
	<ceramics:porcelain:15>,
	<ceramics:porcelain:1>,
	<ceramics:porcelain:2>,
	<ceramics:porcelain:3>,
	<ceramics:porcelain:4>,
	<ceramics:porcelain:5>,
	<ceramics:porcelain:6>,
	<ceramics:porcelain:7>,
	<ceramics:porcelain:8>,
	<ceramics:porcelain:9>,
	<ceramics:porcelain>,
	<ceramics:porcelain_barrel:*>,
	<ceramics:porcelain_barrel_extension:*>,
	<ceramics:porcelain_bricks_stairs>,
	<ceramics:rainbow_bricks_stairs>,
	<ceramics:rainbow_clay:1>,
	<ceramics:rainbow_clay:2>,
	<ceramics:rainbow_clay:3>,
	<ceramics:rainbow_clay:4>,
	<ceramics:rainbow_clay:5>,
	<ceramics:rainbow_clay:6>,
	<ceramics:rainbow_clay:7>,
	<ceramics:rainbow_clay>,
	<ceramics:unfired_clay:1>,
	<ceramics:unfired_clay:8>,
	<ceramics:unfired_clay:9>,
	<minecraft:flower_pot>,

	//Tinkers'
	<tconstruct:faucet>,
	<tcomplement:porcelain_casting:1>,
	<tconstruct:slime_boots:1>,
	<tconstruct:slime_boots:2>,
	<tconstruct:slime_boots:3>,
	<tconstruct:slime_boots:4>,
	<tconstruct:slime_boots>,

	//Embers
	<embers:archaic_circuit>,
	<embers:archaic_edge>,
	<embers:archaic_light>,
	<embers:axe_bronze>,
	<embers:axe_copper>,
	<embers:axe_tin>,
	<embers:blend_caminite>,
	<embers:block_caminite_brick>,
	<embers:block_caminite_brick_slab>,
	<embers:block_caminite_brick_slab_double>,
	<embers:block_lantern>,
	<embers:brick_caminite>,
	<embers:copper_cell>,
	<embers:crystal_ember>,
	<embers:ember_activator>,
	<embers:ember_bore>,
	<embers:ember_detector>,
	<embers:ember_emitter>,
	<embers:ember_gauge>,
	<embers:ember_receiver>,
	<embers:fluid_gauge>,
	<embers:hoe_bronze>,
	<embers:hoe_copper>,
	<embers:hoe_tin>,
	<embers:mech_accessor>,
	<embers:mech_core>,
	<embers:mixer>,
	<embers:ore_tin>,
	<embers:pickaxe_bronze>,
	<embers:pickaxe_copper>,
	<embers:pickaxe_tin>,
	<embers:plate_caminite>,
	<embers:plate_caminite_raw>,
	<embers:shard_ember>,
	<embers:shovel_bronze>,
	<embers:shovel_copper>,
	<embers:shovel_tin>,
	<embers:stairs_caminite_brick>,
	<embers:stamp_bar>,
	<embers:stamp_bar_raw>,
	<embers:stamp_flat>,
	<embers:stamp_flat_raw>,
	<embers:stamp_plate>,
	<embers:stamp_plate_raw>,
	<embers:stamper>,
	<embers:stamper_base>,
	<embers:stone_edge>,
	<embers:sword_bronze>,
	<embers:sword_copper>,
	<embers:sword_tin>,
	<embers:tinker_hammer>,
	<embers:wall_caminite_brick>,

	//Content Tweaker
	<materialpart:aquamarine:ore_minecraft_stone>,
	<materialpart:bronze:beam>,
	<materialpart:bronze:bolt>,
	<materialpart:copper:beam>,
	<materialpart:copper:bolt>,
	<materialpart:tin:beam>,
	<materialpart:tin:bolt>,

	//Better With Mods
	<betterwithaddons:aqueduct:*>,
	<betterwithaddons:bag:*>,
	<betterwithaddons:chute>,
	<betterwithaddons:crate:*>,
	<betterwithaddons:inverted_gearbox>,
	<betterwithaddons:loom>,
	<betterwithaddons:scaffold>,
	<betterwithaddons:spindle>,
	<betterwithaddons:weight_stone>,
	<betterwithaddons:weight_wood>,
	<betterwithmods:axle_generator:1>,
	<betterwithmods:axle_generator:2>,
	<betterwithmods:axle_generator>,
	<betterwithmods:bamboo_chime:*>,
	<betterwithmods:cooking_pot:1>,
	<betterwithmods:cooking_pot>,
	<betterwithmods:grate:*>,
	<betterwithmods:material:10>,
	<betterwithmods:material:11>,
	<betterwithmods:material:24>,
	<betterwithmods:platform>,
	<betterwithmods:saw>,
	<betterwithmods:screw_pump>,
	<betterwithmods:single_machine:3>,
	<betterwithmods:slats:*>,
	<betterwithmods:vase:*>,
	<betterwithmods:wooden_axle>,
	<betterwithmods:wooden_gearbox>,

	//Cyclic
	<cyclicmagic:plate_launch_large>,
	<cyclicmagic:plate_launch_small>,
	<cyclicmagic:sandstone_axe>,
	<cyclicmagic:sandstone_pickaxe>,
	<cyclicmagic:sandstone_spade>,
	<cyclicmagic:tool_harvest_leaves>,

	//Compressed
	<overloaded:compressed_cobblestone:*>,
	<overloaded:compressed_dirt:*>,
	<overloaded:compressed_gravel:*>,
	<overloaded:compressed_sand:*>,
	<overloaded:compressed_stone:*>,

	//Quark
	<quark:candle:*>,
	<quark:hardened_clay_tiles>,
	<quark:hardened_clay_tiles_slab>,
	<quark:polished_stone>,
	<quark:sandy_bricks>,
	<quark:stained_clay_tiles:*>,
	<quark:stained_clay_tiles_black_slab>,
	<quark:stained_clay_tiles_blue_slab>,
	<quark:stained_clay_tiles_brown_slab>,
	<quark:stained_clay_tiles_cyan_slab>,
	<quark:stained_clay_tiles_gray_slab>,
	<quark:stained_clay_tiles_green_slab>,
	<quark:stained_clay_tiles_light_blue_slab>,
	<quark:stained_clay_tiles_lime_slab>,
	<quark:stained_clay_tiles_magenta_slab>,
	<quark:stained_clay_tiles_orange_slab>,
	<quark:stained_clay_tiles_pink_slab>,
	<quark:stained_clay_tiles_purple_slab>,
	<quark:stained_clay_tiles_red_slab>,
	<quark:stained_clay_tiles_silver_slab>,
	<quark:stained_clay_tiles_white_slab>,
	<quark:stained_clay_tiles_yellow_slab>,
	<quark:sturdy_stone>,

	//Spartan Shields
	<spartanshields:shield_basic_bronze>,
	<spartanshields:shield_basic_copper>,
	<spartanshields:shield_basic_tin>
] as IItemStack[];

for item in stage1Items {
	mods.ItemStages.addItemStage(STAGE, item);
}