return function ()
	define_rule({
		name = "egs_level_skittergate_rasknitt_appears",
		response = "egs_level_skittergate_rasknitt_appears",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"egs_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			},
			{
				"user_memory",
				"skittergate_rasknitt_appears",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"skittergate_rasknitt_appears",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "egs_level_skittergate_rasknitt_calls_mount",
		name = "egs_level_skittergate_rasknitt_calls_mount",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"egs_call_mount"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			}
		}
	})
	define_rule({
		name = "egs_gameplay_shielded",
		response = "egs_gameplay_shielded",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"egs_shielded"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			},
			{
				"user_memory",
				"skittergate_rasknitt_intro_done",
				OP.EQ,
				1
			},
			{
				"user_memory",
				"time_since_shielded",
				OP.TIMEDIFF,
				OP.GT,
				15
			}
		},
		on_done = {
			{
				"user_memory",
				"time_since_shielded",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "egs_gameplay_witchhunter_knock_down",
		name = "egs_gameplay_witchhunter_knock_down",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"pdr_gameplay_knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			},
			{
				"user_memory",
				"skittergate_rasknitt_intro_done",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		response = "egs_gameplay_brightwizard_knock_down",
		name = "egs_gameplay_brightwizard_knock_down",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"pbw_gameplay_knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			},
			{
				"user_memory",
				"skittergate_rasknitt_intro_done",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		response = "egs_gameplay_dwarfranger_knock_down",
		name = "egs_gameplay_dwarfranger_knock_down",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"pdr_gameplay_knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			},
			{
				"user_memory",
				"skittergate_rasknitt_intro_done",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		response = "egs_gameplay_woodelf_knock_down",
		name = "egs_gameplay_woodelf_knock_down",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"pwe_gameplay_knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			},
			{
				"user_memory",
				"skittergate_rasknitt_intro_done",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		response = "egs_gameplay_empiresoldier_knock_down",
		name = "egs_gameplay_empiresoldier_knock_down",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name",
				OP.EQ,
				"pes_gameplay_knocked_down"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			},
			{
				"user_memory",
				"skittergate_rasknitt_intro_done",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		response = "egs_gameplay_witchhunter_killed",
		name = "egs_gameplay_witchhunter_killed",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			},
			{
				"user_memory",
				"skittergate_rasknitt_intro_done",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		response = "egs_gameplay_brightwizard_killed",
		name = "egs_gameplay_brightwizard_killed",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			},
			{
				"user_memory",
				"skittergate_rasknitt_intro_done",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		response = "egs_gameplay_dwarfranger_killed",
		name = "egs_gameplay_dwarfranger_killed",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			},
			{
				"user_memory",
				"skittergate_rasknitt_intro_done",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		response = "egs_gameplay_woodelf_killed",
		name = "egs_gameplay_woodelf_killed",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			},
			{
				"user_memory",
				"skittergate_rasknitt_intro_done",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		response = "egs_gameplay_empiresoldier_killed",
		name = "egs_gameplay_empiresoldier_killed",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"player_death"
			},
			{
				"query_context",
				"target_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			},
			{
				"user_memory",
				"skittergate_rasknitt_intro_done",
				OP.EQ,
				1
			}
		}
	})
	define_rule({
		response = "egs_level_skittergate_rasknitt_mounting_stormfiend",
		name = "egs_level_skittergate_rasknitt_mounting_stormfiend",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"egs_mounting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			}
		}
	})
	define_rule({
		response = "egs_level_skittergate_rasknitt_on_stormfiend",
		name = "egs_level_skittergate_rasknitt_on_stormfiend",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"egs_shooting"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			}
		}
	})
	define_rule({
		response = "egs_level_skittergate_rasknitt_dismounted",
		name = "egs_level_skittergate_rasknitt_dismounted",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"egs_rasknitt_dismounted"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			}
		}
	})
	define_rule({
		response = "egs_level_skittergate_rasknitt_calls_mount_battle",
		name = "egs_level_skittergate_rasknitt_calls_mount_battle",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"egs_calls_mount_battle"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			}
		}
	})
	define_rule({
		response = "egs_level_skittergate_stormfiend_dead",
		name = "egs_level_skittergate_stormfiend_dead",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"egs_stormfiend_dead"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			}
		}
	})
	define_rule({
		response = "egs_level_skittergate_summon_skaven",
		name = "egs_level_skittergate_summon_skaven",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"egs_summon"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			}
		}
	})
	define_rule({
		response = "egs_level_skittergate_cast_lightning",
		name = "egs_level_skittergate_cast_lightning",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"egs_cast_lightning"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			}
		}
	})
	define_rule({
		response = "egs_level_skittergate_cast_vermintide",
		name = "egs_level_skittergate_cast_vermintide",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"egs_cast_vermintide"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			}
		}
	})
	define_rule({
		response = "egs_level_skitter_gate_teleport_death",
		name = "egs_level_skitter_gate_teleport_death",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"egs_teleport_to_death"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			}
		}
	})
	define_rule({
		response = "egs_level_skittergate_teleport_away",
		name = "egs_level_skittergate_teleport_away",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"egs_teleport_away"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			}
		}
	})
	define_rule({
		response = "egs_death_scene_01",
		name = "egs_death_scene_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"egs_death_scene"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			}
		}
	})
	define_rule({
		name = "egs_level_skittergate_rasknitt_calls_mount_intro",
		response = "egs_level_skittergate_rasknitt_calls_mount_intro",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"egs_call_mount_intro"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"skaven_grey_seer"
			},
			{
				"user_memory",
				"skittergate_rasknitt_intro_done",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"skittergate_rasknitt_intro_done",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		egs_gameplay_empiresoldier_killed = {
			face_animations_n = 5,
			database = "grey_seer_skittergate",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 5,
			sound_events = {
				"egs_gameplay_empiresoldier_killed_01",
				"egs_gameplay_empiresoldier_killed_02",
				"egs_gameplay_empiresoldier_killed_03",
				"egs_gameplay_empiresoldier_killed_04",
				"egs_gameplay_empiresoldier_killed_05"
			},
			randomize_indexes = {},
			sound_events_duration = {
				2.348375082016,
				2.8689167499542,
				3.6721041202545,
				5.212854385376,
				3.8310415744781
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_gameplay_empiresoldier_killed_01",
				"egs_gameplay_empiresoldier_killed_02",
				"egs_gameplay_empiresoldier_killed_03",
				"egs_gameplay_empiresoldier_killed_04",
				"egs_gameplay_empiresoldier_killed_05"
			}
		},
		egs_level_skittergate_rasknitt_mounting_stormfiend = {
			face_animations_n = 4,
			database = "grey_seer_skittergate",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"egs_level_skittergate_rasknitt_mounting_stormfiend_01",
				"egs_level_skittergate_rasknitt_mounting_stormfiend_02",
				"egs_level_skittergate_rasknitt_mounting_stormfiend_03",
				"egs_level_skittergate_rasknitt_mounting_stormfiend_04"
			},
			randomize_indexes = {},
			sound_events_duration = {
				2.2733957767487,
				3.1315207481384,
				2.3182709217072,
				2.831312417984
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_level_skittergate_rasknitt_mounting_stormfiend_01",
				"egs_level_skittergate_rasknitt_mounting_stormfiend_02",
				"egs_level_skittergate_rasknitt_mounting_stormfiend_03",
				"egs_level_skittergate_rasknitt_mounting_stormfiend_04"
			}
		},
		egs_gameplay_dwarfranger_killed = {
			face_animations_n = 5,
			database = "grey_seer_skittergate",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 5,
			sound_events = {
				"egs_gameplay_dwarfranger_killed_01",
				"egs_gameplay_dwarfranger_killed_02",
				"egs_gameplay_dwarfranger_killed_03",
				"egs_gameplay_dwarfranger_killed_04",
				"egs_gameplay_dwarfranger_killed_05"
			},
			randomize_indexes = {},
			sound_events_duration = {
				5.7123126983643,
				2.8371458053589,
				3.6803958415985,
				3.6829583644867,
				3.7534792423248
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_gameplay_dwarfranger_killed_01",
				"egs_gameplay_dwarfranger_killed_02",
				"egs_gameplay_dwarfranger_killed_03",
				"egs_gameplay_dwarfranger_killed_04",
				"egs_gameplay_dwarfranger_killed_05"
			}
		},
		egs_gameplay_dwarfranger_knock_down = {
			face_animations_n = 5,
			database = "grey_seer_skittergate",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 5,
			sound_events = {
				"egs_gameplay_dwarfranger_knock_down_01",
				"egs_gameplay_dwarfranger_knock_down_02",
				"egs_gameplay_dwarfranger_knock_down_03",
				"egs_gameplay_dwarfranger_knock_down_04",
				"egs_gameplay_dwarfranger_knock_down_05"
			},
			randomize_indexes = {},
			sound_events_duration = {
				5.0598335266113,
				4.3848543167114,
				2.2407083511352,
				3.3646874427795,
				3.5825207233429
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_gameplay_dwarfranger_knock_down_01",
				"egs_gameplay_dwarfranger_knock_down_02",
				"egs_gameplay_dwarfranger_knock_down_03",
				"egs_gameplay_dwarfranger_knock_down_04",
				"egs_gameplay_dwarfranger_knock_down_05"
			}
		},
		egs_gameplay_brightwizard_killed = {
			face_animations_n = 5,
			database = "grey_seer_skittergate",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 5,
			sound_events = {
				"egs_gameplay_brightwizard_killed_01",
				"egs_gameplay_brightwizard_killed_02",
				"egs_gameplay_brightwizard_killed_03",
				"egs_gameplay_brightwizard_killed_04",
				"egs_gameplay_brightwizard_killed_05"
			},
			randomize_indexes = {},
			sound_events_duration = {
				2.8324167728424,
				4.9923543930054,
				5.7607498168945,
				4.2674374580383,
				3.3795416355133
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_gameplay_brightwizard_killed_01",
				"egs_gameplay_brightwizard_killed_02",
				"egs_gameplay_brightwizard_killed_03",
				"egs_gameplay_brightwizard_killed_04",
				"egs_gameplay_brightwizard_killed_05"
			}
		},
		egs_gameplay_witchhunter_knock_down = {
			face_animations_n = 5,
			database = "grey_seer_skittergate",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 5,
			sound_events = {
				"egs_gameplay_witchhunter_knock_down_01",
				"egs_gameplay_witchhunter_knock_down_02",
				"egs_gameplay_witchhunter_knock_down_03",
				"egs_gameplay_witchhunter_knock_down_04",
				"egs_gameplay_witchhunter_knock_down_05"
			},
			randomize_indexes = {},
			sound_events_duration = {
				2.459041595459,
				3.111624956131,
				4.5592293739319,
				4.4184999465942,
				5.3092083930969
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_gameplay_witchhunter_knock_down_01",
				"egs_gameplay_witchhunter_knock_down_02",
				"egs_gameplay_witchhunter_knock_down_03",
				"egs_gameplay_witchhunter_knock_down_04",
				"egs_gameplay_witchhunter_knock_down_05"
			}
		},
		egs_gameplay_witchhunter_killed = {
			face_animations_n = 5,
			database = "grey_seer_skittergate",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 5,
			sound_events = {
				"egs_gameplay_witchhunter_killed_01",
				"egs_gameplay_witchhunter_killed_02",
				"egs_gameplay_witchhunter_killed_03",
				"egs_gameplay_witchhunter_killed_04",
				"egs_gameplay_witchhunter_killed_05"
			},
			randomize_indexes = {},
			sound_events_duration = {
				2.0876250267029,
				3.5207500457764,
				1.8849583864212,
				2.7360417842865,
				4.8278126716614
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_gameplay_witchhunter_killed_01",
				"egs_gameplay_witchhunter_killed_02",
				"egs_gameplay_witchhunter_killed_03",
				"egs_gameplay_witchhunter_killed_04",
				"egs_gameplay_witchhunter_killed_05"
			}
		},
		egs_level_skittergate_teleport_away = {
			face_animations_n = 4,
			database = "grey_seer_skittergate",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			sound_distance = 50,
			category = "boss_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"egs_level_skittergate_teleport_away_01",
				"egs_level_skittergate_teleport_away_02",
				"egs_level_skittergate_teleport_away_03",
				"egs_level_skittergate_teleport_away_04"
			},
			randomize_indexes = {},
			sound_events_duration = {
				3.9849998950958,
				1.3261041641235,
				2.096958398819,
				1.0520000457764
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_level_skittergate_teleport_away_01",
				"egs_level_skittergate_teleport_away_02",
				"egs_level_skittergate_teleport_away_03",
				"egs_level_skittergate_teleport_away_04"
			}
		},
		egs_level_skittergate_summon_skaven = {
			face_animations_n = 4,
			database = "grey_seer_skittergate",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"egs_level_skittergate_summon_skaven_01",
				"egs_level_skittergate_summon_skaven_02",
				"egs_level_skittergate_summon_skaven_03",
				"egs_level_skittergate_summon_skaven_04"
			},
			randomize_indexes = {},
			sound_events_duration = {
				4.5648956298828,
				2.9549584388733,
				2.0918958187103,
				3.4022500514984
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_level_skittergate_summon_skaven_01",
				"egs_level_skittergate_summon_skaven_02",
				"egs_level_skittergate_summon_skaven_03",
				"egs_level_skittergate_summon_skaven_04"
			}
		},
		egs_death_scene_01 = {
			face_animations_n = 1,
			database = "grey_seer_skittergate",
			sound_events_n = 1,
			sound_distance = 50,
			category = "boss_talk_interrupt",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "egs_death_scene_01"
			},
			localization_strings = {
				[1.0] = "egs_death_scene_01"
			},
			sound_events_duration = {
				[1.0] = 9.8494787216187
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_angry"
			}
		},
		egs_level_skittergate_stormfiend_dead = {
			face_animations_n = 4,
			database = "grey_seer_skittergate",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"egs_level_skittergate_stormfiend_dead_01",
				"egs_level_skittergate_stormfiend_dead_02",
				"egs_level_skittergate_stormfiend_dead_03",
				"egs_level_skittergate_stormfiend_dead_04"
			},
			randomize_indexes = {},
			sound_events_duration = {
				8.353458404541,
				6.3325209617615,
				5.6696457862854,
				5.3113331794739
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_level_skittergate_stormfiend_dead_01",
				"egs_level_skittergate_stormfiend_dead_02",
				"egs_level_skittergate_stormfiend_dead_03",
				"egs_level_skittergate_stormfiend_dead_04"
			}
		},
		egs_level_skitter_gate_teleport_death = {
			face_animations_n = 1,
			database = "grey_seer_skittergate",
			sound_events_n = 1,
			category = "boss_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "egs_level_skitter_gate_teleport_death"
			},
			localization_strings = {
				[1.0] = "egs_level_skitter_gate_teleport_death"
			},
			sound_events_duration = {
				[1.0] = 2.7438125610352
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_angry"
			}
		},
		egs_level_skittergate_rasknitt_dismounted = {
			face_animations_n = 4,
			database = "grey_seer_skittergate",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			sound_distance = 50,
			category = "boss_talk_interrupt",
			dialogue_animations_n = 4,
			sound_events = {
				"egs_level_skittergate_rasknitt_dismounted_01",
				"egs_level_skittergate_rasknitt_dismounted_02",
				"egs_level_skittergate_rasknitt_dismounted_03",
				"egs_level_skittergate_rasknitt_dismounted_04"
			},
			randomize_indexes = {},
			sound_events_duration = {
				5.2956042289734,
				6.0653748512268,
				8.5055627822876,
				7.9471664428711
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_level_skittergate_rasknitt_dismounted_01",
				"egs_level_skittergate_rasknitt_dismounted_02",
				"egs_level_skittergate_rasknitt_dismounted_03",
				"egs_level_skittergate_rasknitt_dismounted_04"
			}
		},
		egs_level_skittergate_cast_lightning = {
			face_animations_n = 4,
			database = "grey_seer_skittergate",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"egs_level_skittergate_cast_lightning_01",
				"egs_level_skittergate_cast_lightning_02",
				"egs_level_skittergate_cast_lightning_03",
				"egs_level_skittergate_cast_lightning_04"
			},
			randomize_indexes = {},
			sound_events_duration = {
				3.6330626010895,
				3.2186458110809,
				3.5378541946411,
				5.6930418014526
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_level_skittergate_cast_lightning_01",
				"egs_level_skittergate_cast_lightning_02",
				"egs_level_skittergate_cast_lightning_03",
				"egs_level_skittergate_cast_lightning_04"
			}
		},
		egs_level_skittergate_rasknitt_calls_mount_intro = {
			face_animations_n = 1,
			database = "grey_seer_skittergate",
			sound_events_n = 1,
			category = "boss_talk_interrupt",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "egs_level_skittergate_rasknitt_calls_mount_01"
			},
			localization_strings = {
				[1.0] = "egs_level_skittergate_rasknitt_calls_mount_01"
			},
			sound_events_duration = {
				[1.0] = 4.2395000457764
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_angry"
			}
		},
		egs_level_skittergate_rasknitt_calls_mount_battle = {
			face_animations_n = 4,
			database = "grey_seer_skittergate",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "boss_talk_interrupt",
			dialogue_animations_n = 4,
			sound_events = {
				"egs_level_skittergate_rasknitt_calls_mount_battle_01",
				"egs_level_skittergate_rasknitt_calls_mount_battle_02",
				"egs_level_skittergate_rasknitt_calls_mount_battle_03",
				"egs_level_skittergate_rasknitt_calls_mount_battle_04"
			},
			randomize_indexes = {},
			sound_events_duration = {
				2.9730417728424,
				3.3587501049042,
				4.4149789810181,
				5.5999999046326
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_level_skittergate_rasknitt_calls_mount_battle_01",
				"egs_level_skittergate_rasknitt_calls_mount_battle_02",
				"egs_level_skittergate_rasknitt_calls_mount_battle_03",
				"egs_level_skittergate_rasknitt_calls_mount_battle_04"
			}
		},
		egs_level_skittergate_cast_vermintide = {
			face_animations_n = 4,
			database = "grey_seer_skittergate",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"egs_level_skittergate_cast_vermintide_01",
				"egs_level_skittergate_cast_vermintide_02",
				"egs_level_skittergate_cast_vermintide_03",
				"egs_level_skittergate_cast_vermintide_04"
			},
			randomize_indexes = {},
			sound_events_duration = {
				5.6090207099915,
				5.2943124771118,
				5.5586457252502,
				6.0246667861939
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_level_skittergate_cast_vermintide_01",
				"egs_level_skittergate_cast_vermintide_02",
				"egs_level_skittergate_cast_vermintide_03",
				"egs_level_skittergate_cast_vermintide_04"
			}
		},
		egs_gameplay_woodelf_killed = {
			face_animations_n = 5,
			database = "grey_seer_skittergate",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 5,
			sound_events = {
				"egs_gameplay_woodelf_killed_01",
				"egs_gameplay_woodelf_killed_02",
				"egs_gameplay_woodelf_killed_03",
				"egs_gameplay_woodelf_killed_04",
				"egs_gameplay_woodelf_killed_05"
			},
			randomize_indexes = {},
			sound_events_duration = {
				2.2073125839233,
				2.185604095459,
				4.2037706375122,
				3.3900001049042,
				3.1946876049042
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_gameplay_woodelf_killed_01",
				"egs_gameplay_woodelf_killed_02",
				"egs_gameplay_woodelf_killed_03",
				"egs_gameplay_woodelf_killed_04",
				"egs_gameplay_woodelf_killed_05"
			}
		},
		egs_gameplay_shielded = {
			face_animations_n = 4,
			database = "grey_seer_skittergate",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "boss_reaction_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"egs_gameplay_shielded_01",
				"egs_gameplay_shielded_02",
				"egs_gameplay_shielded_03",
				"egs_gameplay_shielded_04"
			},
			randomize_indexes = {},
			sound_events_duration = {
				3.3547291755676,
				3.6244375705719,
				3.8440001010895,
				4.2779998779297
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_gameplay_shielded_01",
				"egs_gameplay_shielded_02",
				"egs_gameplay_shielded_03",
				"egs_gameplay_shielded_04"
			}
		},
		egs_level_skittergate_rasknitt_calls_mount = {
			face_animations_n = 4,
			database = "grey_seer_skittergate",
			sound_events_n = 4,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"egs_level_skittergate_rasknitt_calls_mount_01",
				"egs_level_skittergate_rasknitt_calls_mount_02",
				"egs_level_skittergate_rasknitt_calls_mount_03",
				"egs_level_skittergate_rasknitt_calls_mount_04"
			},
			randomize_indexes = {},
			sound_events_duration = {
				4.2395000457764,
				3.6957082748413,
				9.4578542709351,
				6.8737707138061
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_level_skittergate_rasknitt_calls_mount_01",
				"egs_level_skittergate_rasknitt_calls_mount_02",
				"egs_level_skittergate_rasknitt_calls_mount_03",
				"egs_level_skittergate_rasknitt_calls_mount_04"
			}
		},
		egs_level_skittergate_rasknitt_on_stormfiend = {
			face_animations_n = 8,
			database = "grey_seer_skittergate",
			sound_events_n = 8,
			randomize_indexes_n = 0,
			sound_distance = 50,
			category = "boss_reaction_talk",
			dialogue_animations_n = 8,
			sound_events = {
				"egs_level_skittergate_rasknitt_on_stormfiend_01",
				"egs_level_skittergate_rasknitt_on_stormfiend_02",
				"egs_level_skittergate_rasknitt_on_stormfiend_03",
				"egs_level_skittergate_rasknitt_on_stormfiend_04",
				"egs_shooting_01",
				"egs_shooting_02",
				"egs_shooting_03",
				"egs_shooting_04"
			},
			randomize_indexes = {},
			sound_events_duration = {
				9.2887287139893,
				9.562520980835,
				11.105854034424,
				12.653458595276,
				5.8298959732056,
				5.8138957023621,
				4.6890001296997,
				3.1368749141693
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_level_skittergate_rasknitt_on_stormfiend_01",
				"egs_level_skittergate_rasknitt_on_stormfiend_02",
				"egs_level_skittergate_rasknitt_on_stormfiend_03",
				"egs_level_skittergate_rasknitt_on_stormfiend_04",
				"egs_shooting_01",
				"egs_shooting_02",
				"egs_shooting_03",
				"egs_shooting_04"
			}
		},
		egs_gameplay_woodelf_knock_down = {
			face_animations_n = 5,
			database = "grey_seer_skittergate",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 5,
			sound_events = {
				"egs_gameplay_woodelf_knock_down_01",
				"egs_gameplay_woodelf_knock_down_02",
				"egs_gameplay_woodelf_knock_down_03",
				"egs_gameplay_woodelf_knock_down_04",
				"egs_gameplay_woodelf_knock_down_05"
			},
			randomize_indexes = {},
			sound_events_duration = {
				3.8822500705719,
				3.8573541641235,
				3.1686458587647,
				3.4876458644867,
				4.517541885376
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_gameplay_woodelf_knock_down_01",
				"egs_gameplay_woodelf_knock_down_02",
				"egs_gameplay_woodelf_knock_down_03",
				"egs_gameplay_woodelf_knock_down_04",
				"egs_gameplay_woodelf_knock_down_05"
			}
		},
		egs_gameplay_empiresoldier_knock_down = {
			face_animations_n = 5,
			database = "grey_seer_skittergate",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 5,
			sound_events = {
				"egs_gameplay_empiresoldier_knock_down_01",
				"egs_gameplay_empiresoldier_knock_down_02",
				"egs_gameplay_empiresoldier_knock_down_03",
				"egs_gameplay_empiresoldier_knock_down_04",
				"egs_gameplay_empiresoldier_knock_down_05"
			},
			randomize_indexes = {},
			sound_events_duration = {
				3.4636249542236,
				4.5422291755676,
				3.5655207633972,
				3.280291557312,
				6.0378541946411
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_gameplay_empiresoldier_knock_down_01",
				"egs_gameplay_empiresoldier_knock_down_02",
				"egs_gameplay_empiresoldier_knock_down_03",
				"egs_gameplay_empiresoldier_knock_down_04",
				"egs_gameplay_empiresoldier_knock_down_05"
			}
		},
		egs_level_skittergate_rasknitt_appears = {
			face_animations_n = 1,
			database = "grey_seer_skittergate",
			sound_events_n = 1,
			sound_distance = 50,
			category = "boss_talk",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "egs_level_skittergate_rasknitt_appears_03"
			},
			localization_strings = {
				[1.0] = "egs_level_skittergate_rasknitt_appears_03"
			},
			sound_events_duration = {
				[1.0] = 14.989021301269
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout"
			},
			face_animations = {
				[1.0] = "face_angry"
			}
		},
		egs_gameplay_brightwizard_knock_down = {
			face_animations_n = 5,
			database = "grey_seer_skittergate",
			sound_events_n = 5,
			randomize_indexes_n = 0,
			category = "boss_talk",
			dialogue_animations_n = 5,
			sound_events = {
				"egs_gameplay_brightwizard_knock_down_01",
				"egs_gameplay_brightwizard_knock_down_02",
				"egs_gameplay_brightwizard_knock_down_03",
				"egs_gameplay_brightwizard_knock_down_04",
				"egs_gameplay_brightwizard_knock_down_05"
			},
			randomize_indexes = {},
			sound_events_duration = {
				3.1838541030884,
				3.3657290935516,
				4.4089374542236,
				2.8899791240692,
				3.5748958587647
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			localization_strings = {
				"egs_gameplay_brightwizard_knock_down_01",
				"egs_gameplay_brightwizard_knock_down_02",
				"egs_gameplay_brightwizard_knock_down_03",
				"egs_gameplay_brightwizard_knock_down_04",
				"egs_gameplay_brightwizard_knock_down_05"
			}
		}
	})
end
