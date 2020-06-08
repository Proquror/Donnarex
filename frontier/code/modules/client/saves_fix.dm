GLOBAL_LIST_EMPTY(prefs_fixed)

/client/verb/fix_preferences() //честно спижжено с фиников
	set name = "Fix characters load"
	set category = "OOC"

	if(ckey in GLOB.prefs_fixed)
		to_chat(usr, SPAN_NOTICE("Ваши персонажи уже должны были загрузиться. Если этого не произошло - пожалуйста, сообщите разработчикам."))
		return

	GLOB.prefs_fixed += ckey

	prefs.load_path(ckey)
	prefs.load_preferences()
	prefs.load_and_update_character()
	prefs.sanitize_preferences()

	return 0