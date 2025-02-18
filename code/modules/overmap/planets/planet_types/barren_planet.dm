/datum/planet_template/barren_planet
	name = "Barren Planet"
	area_type = /area/planet/barren
	generator_type = /datum/map_generator/planet_gen/barren

	default_traits_input = list(ZTRAIT_MINING = TRUE, ZTRAIT_BASETURF = /turf/open/misc/planetary/barren)
	overmap_type = /datum/overmap_object/shuttle/planet/barren
	atmosphere_type = /datum/atmosphere/barren
	weather_controller_type = /datum/weather_controller/desert

	rock_color = list(COLOR_BEIGE_GRAYISH, COLOR_BEIGE, COLOR_GRAY, COLOR_BROWN)

/datum/overmap_object/shuttle/planet/barren
	name = "Barren Planet"
	planet_color = COLOR_BEIGE_GRAYISH

/area/planet/barren
	name = "Barren Planet Surface"
	ambientsounds = list('sound/effects/wind/wind1.ogg','sound/effects/wind/wind2.ogg','sound/effects/wind/wind3.ogg','sound/effects/wind/wind4.ogg','sound/effects/wind/wind5.ogg','sound/effects/wind/wind6.ogg')
	min_ambience_cooldown = 12 SECONDS
	max_ambience_cooldown = 30 SECONDS

/datum/map_generator/planet_gen/barren
	possible_biomes = list(
	BIOME_LOW_HEAT = list(
		BIOME_LOW_HUMIDITY = /datum/biome/barren,
		BIOME_LOWMEDIUM_HUMIDITY = /datum/biome/barren,
		BIOME_HIGHMEDIUM_HUMIDITY = /datum/biome/barren,
		BIOME_HIGH_HUMIDITY = /datum/biome/barren
		),
	BIOME_LOWMEDIUM_HEAT = list(
		BIOME_LOW_HUMIDITY = /datum/biome/barren,
		BIOME_LOWMEDIUM_HUMIDITY = /datum/biome/barren,
		BIOME_HIGHMEDIUM_HUMIDITY = /datum/biome/barren,
		BIOME_HIGH_HUMIDITY = /datum/biome/barren
		),
	BIOME_HIGHMEDIUM_HEAT = list(
		BIOME_LOW_HUMIDITY = /datum/biome/barren,
		BIOME_LOWMEDIUM_HUMIDITY = /datum/biome/barren,
		BIOME_HIGHMEDIUM_HUMIDITY = /datum/biome/barren,
		BIOME_HIGH_HUMIDITY = /datum/biome/barren
		),
	BIOME_HIGH_HEAT = list(
		BIOME_LOW_HUMIDITY = /datum/biome/barren,
		BIOME_LOWMEDIUM_HUMIDITY = /datum/biome/barren,
		BIOME_HIGHMEDIUM_HUMIDITY = /datum/biome/mountain,
		BIOME_HIGH_HUMIDITY = /datum/biome/mountain
		)
	)
	high_height_biome = /datum/biome/mountain
	perlin_zoom = 65

/datum/biome/barren
	turf_type = /turf/open/misc/planetary/barren

/turf/open/misc/planetary/barren
	gender = PLURAL
	name = "barren rock"
	baseturfs = /turf/open/misc/planetary/barren
	icon = 'icons/planet/barren/barren_floor.dmi'
	icon_state = "barren"
	base_icon_state = "barren"
	footstep = FOOTSTEP_SAND
	barefootstep = FOOTSTEP_SAND
	clawfootstep = FOOTSTEP_SAND
	heavyfootstep = FOOTSTEP_GENERIC_HEAVY

/datum/atmosphere/barren
	base_gases = list(/datum/gas/nitrogen=5)
	normal_gases = list(
		/datum/gas/oxygen=5,
		/datum/gas/nitrogen=5
	)
	restricted_gases = list(
		/datum/gas/plasma=0.1,
		/datum/gas/bz=1.2
	)
	restricted_chance = 30

	minimum_pressure = HAZARD_LOW_PRESSURE - 10
	maximum_pressure = HAZARD_LOW_PRESSURE + 5

	minimum_temp = 180
	maximum_temp = 180
