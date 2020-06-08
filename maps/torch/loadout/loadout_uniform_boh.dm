/datum/gear/uniform/misc_military
	display_name = "military fatigue selection"
	description = "A selection of military uniforms."
	path = /obj/item/clothing/under
	cost = 0

/datum/gear/uniform/misc_military/New()
	..()
	var/milmisc = list()
	milmisc += /obj/item/clothing/under/solgov/utility/army
	milmisc += /obj/item/clothing/under/solgov/utility/army/urban
	milmisc += /obj/item/clothing/under/solgov/utility/army/tan
	gear_tweaks += new/datum/gear_tweak/path/specified_types_list(milmisc)

// Alas, fleet is gone.
/datum/gear/uniform/fleet
	display_name = "fleet fatigue"
	path = /obj/item/clothing/under/solgov/utility/fleet
	cost = 0
