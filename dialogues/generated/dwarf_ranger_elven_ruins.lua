return function ()
	define_rule({
		response = "pdr_level_elven_ruins_untouched",
		name = "pdr_level_elven_ruins_untouched",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_untouched"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_ravine_approach",
		response = "pdr_level_elven_ruins_ravine_approach",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_ravine_approach"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_elven_ruins_ravine_approach",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_ravine_approach",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pdr_level_elven_ruins_great_glade",
		name = "pdr_level_elven_ruins_great_glade",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_great_glade"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_skaven_banners",
		response = "pdr_level_elven_ruins_skaven_banners",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_skaven_banners"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_elven_ruins_skaven_banners",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_skaven_banners",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_maze_approach",
		response = "pdr_level_elven_ruins_maze_approach",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_maze_approach"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_elven_ruins_maze_approach",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_maze_approach",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pdr_level_elven_ruins_maze_interior",
		name = "pdr_level_elven_ruins_maze_interior",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_maze_approach"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_broken_waystone",
		response = "pdr_level_elven_ruins_broken_waystone",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_broken_waystone"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_elven_ruins_broken_waystone",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_broken_waystone",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		response = "pdr_level_elven_ruins_cliff_edge",
		name = "pdr_level_elven_ruins_cliff_edge",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_cliff_edge"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_entering_ruins",
		response = "pdr_level_elven_ruins_entering_ruins",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_entering_ruins"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_entering_ruins",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_entering_ruins",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_clearing",
		response = "pdr_level_elven_ruins_clearing",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_clearing"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_clearing",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_clearing",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_big_tree",
		response = "pdr_level_elven_ruins_big_tree",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_big_tree"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_elven_ruins_big_tree",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_big_tree",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_shattered_temple",
		response = "pdr_level_elven_ruins_shattered_temple",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_shattered_temple"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_shattered_temple",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_shattered_temple",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_seeing_puzzle",
		response = "pdr_level_elven_ruins_seeing_puzzle",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_seeing_puzzle"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_seeing_puzzle",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_seeing_puzzle",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_seeing_puzzle_crystals",
		response = "pdr_level_elven_ruins_seeing_puzzle_crystals",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_seeing_puzzle_crystals"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_seeing_puzzle_crystals",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_seeing_puzzle_crystals",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_noisy_puzzle",
		response = "pdr_level_elven_ruins_noisy_puzzle",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_noisy_puzzle"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_noisy_puzzle",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_noisy_puzzle",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_first_aligned_pleasant_feeling",
		response = "pdr_level_elven_ruins_first_aligned_pleasant_feeling",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_first_aligned_pleasant_feeling"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_first_aligned_pleasant_feeling",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_first_aligned_pleasant_feeling",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_second_aligned",
		response = "pdr_level_elven_ruins_second_aligned",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_second_aligned"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"time_since_elven_ruins_second_aligned",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_second_aligned",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_task_complete",
		response = "pdr_level_elven_ruins_task_complete",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_task_complete"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"time_since_elven_ruins_task_complete",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_elven_ruins_task_complete",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_ruins_proper",
		response = "pdr_level_elven_ruins_ruins_proper",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_ruins_proper"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"elven_ruins_ruins_proper",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"elven_ruins_ruins_proper",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_level_elven_ruins_exit",
		response = "pdr_level_elven_ruins_exit",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_exit"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"elven_ruins_exit",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"elven_ruins_exit",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_elven_ruins_intro_a",
		response = "pdr_elven_ruins_intro_a",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"seen_item"
			},
			{
				"query_context",
				"item_tag",
				OP.EQ,
				"elven_ruins_intro_a"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"elven_ruins_intro_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"elven_ruins_intro_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pdr_elven_ruins_intro_b",
		response = "pdr_elven_ruins_intro_b",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"elven_ruins_intro_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"elven_ruins_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"elven_ruins_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_elven_ruins_intro_c",
		response = "pdr_elven_ruins_intro_c",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"dialogue_name_nopre",
				OP.EQ,
				"elven_ruins_intro_b"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			},
			{
				"faction_memory",
				"elven_ruins_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"elven_ruins_intro_c",
				OP.TIMESET
			}
		}
	})
	add_dialogues({
		pdr_level_elven_ruins_big_tree = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_big_tree_01",
				"pdr_level_elven_ruins_big_tree_02",
				"pdr_level_elven_ruins_big_tree_03",
				"pdr_level_elven_ruins_big_tree_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				5.2362499237061,
				5.9910416603088,
				4.779333114624,
				2.577187538147
			},
			localization_strings = {
				"pdr_level_elven_ruins_big_tree_01",
				"pdr_level_elven_ruins_big_tree_02",
				"pdr_level_elven_ruins_big_tree_03",
				"pdr_level_elven_ruins_big_tree_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_broken_waystone = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_broken_waystone_01",
				"pdr_level_elven_ruins_broken_waystone_02",
				"pdr_level_elven_ruins_broken_waystone_03",
				"pdr_level_elven_ruins_broken_waystone_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			sound_events_duration = {
				3.0358333587647,
				2.1461665630341,
				4.6615834236145,
				3.3464374542236
			},
			localization_strings = {
				"pdr_level_elven_ruins_broken_waystone_01",
				"pdr_level_elven_ruins_broken_waystone_02",
				"pdr_level_elven_ruins_broken_waystone_03",
				"pdr_level_elven_ruins_broken_waystone_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_untouched = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_untouched_01",
				"pdr_level_elven_ruins_untouched_02",
				"pdr_level_elven_ruins_untouched_03",
				"pdr_level_elven_ruins_untouched_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			sound_events_duration = {
				4.937958240509,
				3.7387917041779,
				4.5034999847412,
				4.3157706260681
			},
			localization_strings = {
				"pdr_level_elven_ruins_untouched_01",
				"pdr_level_elven_ruins_untouched_02",
				"pdr_level_elven_ruins_untouched_03",
				"pdr_level_elven_ruins_untouched_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_seeing_puzzle = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_seeing_puzzle_01",
				"pdr_level_elven_ruins_seeing_puzzle_02",
				"pdr_level_elven_ruins_seeing_puzzle_03",
				"pdr_level_elven_ruins_seeing_puzzle_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				3.1130623817444,
				4.1078333854675,
				4.7532081604004,
				3.2827291488648
			},
			localization_strings = {
				"pdr_level_elven_ruins_seeing_puzzle_01",
				"pdr_level_elven_ruins_seeing_puzzle_02",
				"pdr_level_elven_ruins_seeing_puzzle_03",
				"pdr_level_elven_ruins_seeing_puzzle_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_skaven_banners = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_skaven_banners_01",
				"pdr_level_elven_ruins_skaven_banners_02",
				"pdr_level_elven_ruins_skaven_banners_03",
				"pdr_level_elven_ruins_skaven_banners_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			sound_events_duration = {
				3.0817708969116,
				5.6847290992737,
				4.2667498588562,
				3.6718125343323
			},
			localization_strings = {
				"pdr_level_elven_ruins_skaven_banners_01",
				"pdr_level_elven_ruins_skaven_banners_02",
				"pdr_level_elven_ruins_skaven_banners_03",
				"pdr_level_elven_ruins_skaven_banners_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_exit = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_exit_01",
				"pdr_level_elven_ruins_exit_02",
				"pdr_level_elven_ruins_exit_03",
				"pdr_level_elven_ruins_exit_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				2.2951250076294,
				1.9819791316986,
				2.5076251029968,
				5.0947918891907
			},
			localization_strings = {
				"pdr_level_elven_ruins_exit_01",
				"pdr_level_elven_ruins_exit_02",
				"pdr_level_elven_ruins_exit_03",
				"pdr_level_elven_ruins_exit_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_maze_interior = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_maze_interior_01",
				"pdr_level_elven_ruins_maze_interior_02",
				"pdr_level_elven_ruins_maze_interior_03",
				"pdr_level_elven_ruins_maze_interior_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			sound_events_duration = {
				2.7607500553131,
				2.7569375038147,
				1.8043750524521,
				2.4662709236145
			},
			localization_strings = {
				"pdr_level_elven_ruins_maze_interior_01",
				"pdr_level_elven_ruins_maze_interior_02",
				"pdr_level_elven_ruins_maze_interior_03",
				"pdr_level_elven_ruins_maze_interior_04"
			},
			randomize_indexes = {}
		},
		pdr_elven_ruins_intro_a = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pdr_elven_ruins_intro_a_01",
				[2.0] = "pdr_elven_ruins_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 2.5250415802002,
				[2.0] = 5.5298748016357
			},
			localization_strings = {
				[1.0] = "pdr_elven_ruins_intro_a_01",
				[2.0] = "pdr_elven_ruins_intro_a_02"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_maze_approach = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_maze_approach_01",
				"pdr_level_elven_ruins_maze_approach_02",
				"pdr_level_elven_ruins_maze_approach_03",
				"pdr_level_elven_ruins_maze_approach_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			},
			sound_events_duration = {
				4.9911665916443,
				2.2395417690277,
				2.4702916145325,
				3.5373125076294
			},
			localization_strings = {
				"pdr_level_elven_ruins_maze_approach_01",
				"pdr_level_elven_ruins_maze_approach_02",
				"pdr_level_elven_ruins_maze_approach_03",
				"pdr_level_elven_ruins_maze_approach_04"
			},
			randomize_indexes = {}
		},
		pdr_elven_ruins_intro_c = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pdr_elven_ruins_intro_c_01",
				[2.0] = "pdr_elven_ruins_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 4.0367498397827,
				[2.0] = 4.2196664810181
			},
			localization_strings = {
				[1.0] = "pdr_elven_ruins_intro_c_01",
				[2.0] = "pdr_elven_ruins_intro_c_02"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_great_glade = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_great_glade_01",
				"pdr_level_elven_ruins_great_glade_02",
				"pdr_level_elven_ruins_great_glade_03",
				"pdr_level_elven_ruins_great_glade_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			sound_events_duration = {
				3.5047917366028,
				3.9068334102631,
				6.3036251068115,
				4.5358958244324
			},
			localization_strings = {
				"pdr_level_elven_ruins_great_glade_01",
				"pdr_level_elven_ruins_great_glade_02",
				"pdr_level_elven_ruins_great_glade_03",
				"pdr_level_elven_ruins_great_glade_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_cliff_edge = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_cliff_edge_01",
				"pdr_level_elven_ruins_cliff_edge_02",
				"pdr_level_elven_ruins_cliff_edge_03",
				"pdr_level_elven_ruins_cliff_edge_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_contempt",
				"face_contempt",
				"face_neutral"
			},
			sound_events_duration = {
				4.1454377174377,
				5.4332084655762,
				2.5839583873749,
				3.6990208625794
			},
			localization_strings = {
				"pdr_level_elven_ruins_cliff_edge_01",
				"pdr_level_elven_ruins_cliff_edge_02",
				"pdr_level_elven_ruins_cliff_edge_03",
				"pdr_level_elven_ruins_cliff_edge_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_clearing = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_clearing_01",
				"pdr_level_elven_ruins_clearing_02",
				"pdr_level_elven_ruins_clearing_03",
				"pdr_level_elven_ruins_clearing_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				2.7152500152588,
				4.293562412262,
				2.2267084121704,
				2.5601251125336
			},
			localization_strings = {
				"pdr_level_elven_ruins_clearing_01",
				"pdr_level_elven_ruins_clearing_02",
				"pdr_level_elven_ruins_clearing_03",
				"pdr_level_elven_ruins_clearing_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_ruins_proper = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_ruins_proper_01",
				"pdr_level_elven_ruins_ruins_proper_02",
				"pdr_level_elven_ruins_ruins_proper_03",
				"pdr_level_elven_ruins_ruins_proper_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				3.0197501182556,
				3.8184583187103,
				5.6049585342407,
				3.9832916259766
			},
			localization_strings = {
				"pdr_level_elven_ruins_ruins_proper_01",
				"pdr_level_elven_ruins_ruins_proper_02",
				"pdr_level_elven_ruins_ruins_proper_03",
				"pdr_level_elven_ruins_ruins_proper_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_ravine_approach = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_ravine_approach_01",
				"pdr_level_elven_ruins_ravine_approach_02",
				"pdr_level_elven_ruins_ravine_approach_03",
				"pdr_level_elven_ruins_ravine_approach_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_concerned",
				"face_concerned",
				"face_concerned",
				"face_concerned"
			},
			sound_events_duration = {
				2.7636876106262,
				3.9232082366943,
				3.1291041374206,
				2.6083333492279
			},
			localization_strings = {
				"pdr_level_elven_ruins_ravine_approach_01",
				"pdr_level_elven_ruins_ravine_approach_02",
				"pdr_level_elven_ruins_ravine_approach_03",
				"pdr_level_elven_ruins_ravine_approach_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_noisy_puzzle = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_noisy_puzzle_01",
				"pdr_level_elven_ruins_noisy_puzzle_02",
				"pdr_level_elven_ruins_noisy_puzzle_03",
				"pdr_level_elven_ruins_noisy_puzzle_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				3.2946875095367,
				3.2751457691193,
				2.8890209197998,
				2.7111041545868
			},
			localization_strings = {
				"pdr_level_elven_ruins_noisy_puzzle_01",
				"pdr_level_elven_ruins_noisy_puzzle_02",
				"pdr_level_elven_ruins_noisy_puzzle_03",
				"pdr_level_elven_ruins_noisy_puzzle_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_task_complete = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_task_complete_01",
				"pdr_level_elven_ruins_task_complete_02",
				"pdr_level_elven_ruins_task_complete_03",
				"pdr_level_elven_ruins_task_complete_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				4.3119168281555,
				2.2736248970032,
				2.9122083187103,
				4.2409582138061
			},
			localization_strings = {
				"pdr_level_elven_ruins_task_complete_01",
				"pdr_level_elven_ruins_task_complete_02",
				"pdr_level_elven_ruins_task_complete_03",
				"pdr_level_elven_ruins_task_complete_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_shattered_temple = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_shattered_temple_01",
				"pdr_level_elven_ruins_shattered_temple_02",
				"pdr_level_elven_ruins_shattered_temple_03",
				"pdr_level_elven_ruins_shattered_temple_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				2.3475625514984,
				3.5595417022705,
				6.6733331680298,
				2.422833442688
			},
			localization_strings = {
				"pdr_level_elven_ruins_shattered_temple_01",
				"pdr_level_elven_ruins_shattered_temple_02",
				"pdr_level_elven_ruins_shattered_temple_03",
				"pdr_level_elven_ruins_shattered_temple_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_first_aligned_pleasant_feeling = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_first_aligned_pleasant_feeling_01",
				"pdr_level_elven_ruins_first_aligned_pleasant_feeling_02",
				"pdr_level_elven_ruins_first_aligned_pleasant_feeling_03",
				"pdr_level_elven_ruins_first_aligned_pleasant_feeling_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				5.8772706985474,
				2.7631874084473,
				4.226083278656,
				4.8451251983643
			},
			localization_strings = {
				"pdr_level_elven_ruins_first_aligned_pleasant_feeling_01",
				"pdr_level_elven_ruins_first_aligned_pleasant_feeling_02",
				"pdr_level_elven_ruins_first_aligned_pleasant_feeling_03",
				"pdr_level_elven_ruins_first_aligned_pleasant_feeling_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_second_aligned = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_second_aligned_01",
				"pdr_level_elven_ruins_second_aligned_02",
				"pdr_level_elven_ruins_second_aligned_03",
				"pdr_level_elven_ruins_second_aligned_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				3.5240416526794,
				3.1876459121704,
				4.1219582557678,
				2.3737499713898
			},
			localization_strings = {
				"pdr_level_elven_ruins_second_aligned_01",
				"pdr_level_elven_ruins_second_aligned_02",
				"pdr_level_elven_ruins_second_aligned_03",
				"pdr_level_elven_ruins_second_aligned_04"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_entering_ruins = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_entering_ruins_01",
				"pdr_level_elven_ruins_entering_ruins_02",
				"pdr_level_elven_ruins_entering_ruins_03",
				"pdr_level_elven_ruins_entering_ruins_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				2.2717916965485,
				5.3592915534973,
				5.7495832443237,
				5.3093123435974
			},
			localization_strings = {
				"pdr_level_elven_ruins_entering_ruins_01",
				"pdr_level_elven_ruins_entering_ruins_02",
				"pdr_level_elven_ruins_entering_ruins_03",
				"pdr_level_elven_ruins_entering_ruins_04"
			},
			randomize_indexes = {}
		},
		pdr_elven_ruins_intro_b = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events = {
				[1.0] = "pdr_elven_ruins_intro_b_01",
				[2.0] = "pdr_elven_ruins_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 4.5506043434143,
				[2.0] = 4.0988960266113
			},
			localization_strings = {
				[1.0] = "pdr_elven_ruins_intro_b_01",
				[2.0] = "pdr_elven_ruins_intro_b_02"
			},
			randomize_indexes = {}
		},
		pdr_level_elven_ruins_seeing_puzzle_crystals = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "dwarf_ranger_elven_ruins",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events = {
				"pdr_level_elven_ruins_seeing_puzzle_crystals_01",
				"pdr_level_elven_ruins_seeing_puzzle_crystals_02",
				"pdr_level_elven_ruins_seeing_puzzle_crystals_03",
				"pdr_level_elven_ruins_seeing_puzzle_crystals_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			},
			sound_events_duration = {
				2.0789165496826,
				3.9013333320618,
				4.6708960533142,
				2.6737084388733
			},
			localization_strings = {
				"pdr_level_elven_ruins_seeing_puzzle_crystals_01",
				"pdr_level_elven_ruins_seeing_puzzle_crystals_02",
				"pdr_level_elven_ruins_seeing_puzzle_crystals_03",
				"pdr_level_elven_ruins_seeing_puzzle_crystals_04"
			},
			randomize_indexes = {}
		}
	})
end
