/obj/item/wallframe/holomap
	name = "holomap frame"
	desc = "Used for building holomaps."
	icon = 'icons/obj/machines/holomap/stationmap.dmi'
	icon_state = "station_map_opened"
	result_path = /obj/machinery/holomap/open
	pixel_shift = 32
	custom_materials = list(
		/datum/material/iron = 4000,
		/datum/material/titanium = 2000,
		/datum/material/plasma = 6000,
	)

/obj/item/wallframe/holomap/engineering
	name = "engineering holomap frame"
	desc = "Used for building engineering holomaps."
	result_path = /obj/machinery/holomap/engineering/open
	custom_materials = list(
		/datum/material/iron = 4000,
		/datum/material/titanium = 2000,
		/datum/material/plasma = 6000,
		/datum/material/gold = 2000,
		/datum/material/diamond = 1000,
	)
