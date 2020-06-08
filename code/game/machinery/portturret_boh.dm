// Various objects for 'exterior' defense.

/////////
// Turret
/////////
/obj/machinery/porta_turret/exterior
	health = 150
	maxhealth = 150
	auto_repair = 0 // Too much for this sentry with 250 hp and self-repair.
	locked = 1
	controllock = 1
	icon_state = "gun_turret" // for mapping. No difference in game.

	installation = /obj/item/weapon/gun/energy/exteriorturret

	check_arrest = 1
	check_records = 1
	check_weapons = 0
	check_access = 0
	check_anomalies = 1
	check_synth = 0
	ailock = 1
	lethal = 1

/////////
// Firearms
/////////
// - -

/obj/item/weapon/gun/energy/exteriorturret
	name = "energy gun"
	desc = "A weapon that uses advanced pulse-based beam generation technology to emit powerful laser blasts."
	force = 2
	projectile_type = /obj/item/projectile/beam/turret
	max_shots = 1
	w_class = ITEM_SIZE_LARGE

/////////
// Projectiles
/////////

/obj/item/projectile/beam/turret
	name = "anti-boarding salvo"
	damage = 25
	armor_penetration = 30
	damage_type = BURN

/////////
// Area
/////////

/area/defturrets
	name = "\improper Anti-Boarding Control"
	icon_state = "security_sub"
	base_turf = /turf/simulated/floor/reinforced/airless
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

