return function ()
	define_rule({
		name = "pwh_wp_bless_conversation_six_01",
		response = "pwh_wp_bless_conversation_six_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"wh_priest"
			},
			{
				"global_context",
				"we_thornsister",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"pwh_wp_bless_conversation_six_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwh_wp_bless_conversation_six_01",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_st_bless_conversation_six_01",
		response = "pwe_st_bless_conversation_six_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_six_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_six_02",
		response = "pwh_wp_bless_conversation_six_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_st_bless_conversation_six_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_st_bless_conversation_six_02",
		response = "pwe_st_bless_conversation_six_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_six_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_st_bless_conversation_seven_01",
		response = "pwe_st_bless_conversation_seven_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"we_thornsister"
			},
			{
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"pwe_st_bless_conversation_seven_01",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"pwe_st_bless_conversation_seven_01",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_seven_01",
		response = "pwh_wp_bless_conversation_seven_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_st_bless_conversation_seven_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_st_bless_conversation_seven_02",
		response = "pwe_st_bless_conversation_seven_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_seven_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_seven_02",
		response = "pwh_wp_bless_conversation_seven_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_st_bless_conversation_seven_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_st_bless_conversation_seven_03",
		response = "pwe_st_bless_conversation_seven_03",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_seven_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_one_01",
		response = "pwh_wp_bless_conversation_one_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"wh_priest"
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_one",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_one",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_bless_conversation_one_01",
		response = "pwe_bless_conversation_one_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_one_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_one_02",
		response = "pwh_wp_bless_conversation_one_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_bless_conversation_one_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_bless_conversation_one_02",
		response = "pwe_bless_conversation_one_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_one_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_bless_conversation_two_01",
		response = "pwe_bless_conversation_two_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_two",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_two",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_two_01",
		response = "pwh_wp_bless_conversation_two_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_bless_conversation_two_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_bless_conversation_two_02",
		response = "pwe_bless_conversation_two_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_two_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_bless_conversation_three_01",
		response = "pwe_bless_conversation_three_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"wood_elf"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_three",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_three",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_three_01",
		response = "pwh_wp_bless_conversation_three_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_bless_conversation_three_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_bless_conversation_three_02",
		response = "pwe_bless_conversation_three_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_three_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_three_02",
		response = "pwh_wp_bless_conversation_three_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_bless_conversation_three_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_four_01",
		response = "pwh_wp_bless_conversation_four_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"wh_priest"
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_four",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_four",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_bless_conversation_four_01",
		response = "pwe_bless_conversation_four_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_four_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_four_02",
		response = "pwh_wp_bless_conversation_four_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_bless_conversation_four_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_bless_conversation_four_02",
		response = "pwe_bless_conversation_four_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_four_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_five_01",
		response = "pbw_bless_conversation_five_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				2
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"global_context",
				"dwarf_ranger",
				OP.EQ,
				1
			},
			{
				"global_context",
				"empire_soldier",
				OP.EQ,
				1
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_five",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_five",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_bless_conversation_five_01",
		response = "pdr_bless_conversation_five_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_bless_conversation_five_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_five_01",
		response = "pes_bless_conversation_five_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_bless_conversation_five_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_bless_conversation_five_01",
		response = "pwe_bless_conversation_five_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_bless_conversation_five_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_bless_conversation_six_01",
		response = "pdr_bless_conversation_six_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				2
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
				"global_context",
				"bright_wizard",
				OP.EQ,
				1
			},
			{
				"global_context",
				"empire_soldier",
				OP.EQ,
				1
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_six",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_six",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_bless_conversation_six_01",
		response = "pwe_bless_conversation_six_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_bless_conversation_six_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_six_01",
		response = "pbw_bless_conversation_six_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_bless_conversation_six_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_six_01",
		response = "pes_bless_conversation_six_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_bless_conversation_six_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_six_02",
		response = "pbw_bless_conversation_six_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_bless_conversation_six_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_seven_01",
		response = "pbw_bless_conversation_seven_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				2
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"global_context",
				"dwarf_ranger",
				OP.EQ,
				1
			},
			{
				"global_context",
				"empire_soldier",
				OP.EQ,
				1
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_seven",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_seven",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_seven_01",
		response = "pes_bless_conversation_seven_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_bless_conversation_seven_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_bless_conversation_seven_01",
		response = "pwe_bless_conversation_seven_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_bless_conversation_seven_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_bless_conversation_seven_01",
		response = "pdr_bless_conversation_seven_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_bless_conversation_seven_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_eight_01",
		response = "pes_bless_conversation_eight_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				2
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"global_context",
				"dwarf_ranger",
				OP.EQ,
				1
			},
			{
				"global_context",
				"bright_wizard",
				OP.EQ,
				1
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_eight",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_eight",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_bless_conversation_eight_01",
		response = "pwe_bless_conversation_eight_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_bless_conversation_eight_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_eight_01",
		response = "pbw_bless_conversation_eight_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwe_bless_conversation_eight_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_bless_conversation_eight_01",
		response = "pdr_bless_conversation_eight_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_bless_conversation_eight_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_bless_conversation_nine_01",
		response = "pdr_bless_conversation_nine_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				2
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
				"global_context",
				"empire_soldier",
				OP.EQ,
				1
			},
			{
				"global_context",
				"bright_wizard",
				OP.EQ,
				1
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_nine",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_nine",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_nine_01",
		response = "pbw_bless_conversation_nine_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_bless_conversation_nine_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_nine_01",
		response = "pes_bless_conversation_nine_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_bless_conversation_nine_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_bless_conversation_nine_01",
		response = "pwe_bless_conversation_nine_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_bless_conversation_nine_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_bless_conversation_ten_01",
		response = "pdr_bless_conversation_ten_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
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
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_ten",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_ten",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_ten_01",
		response = "pwh_wp_bless_conversation_ten_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_bless_conversation_ten_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_bless_conversation_ten_02",
		response = "pdr_bless_conversation_ten_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_ten_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_ten_02",
		response = "pwh_wp_bless_conversation_ten_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_bless_conversation_ten_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_bless_conversation_ten_03",
		response = "pdr_bless_conversation_ten_03",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_ten_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_wp_bless_conversation_eleven_01",
		response = "pdr_wp_bless_conversation_eleven_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
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
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_eleven",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_eleven",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_bless_conversation_eleven_01",
		response = "pwh_bless_conversation_eleven_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_wp_bless_conversation_eleven_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_wp_bless_conversation_eleven_02",
		response = "pdr_wp_bless_conversation_eleven_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_bless_conversation_eleven_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_bless_conversation_eleven_02",
		response = "pwh_bless_conversation_eleven_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_wp_bless_conversation_eleven_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_wp_bless_conversation_eleven_03",
		response = "pdr_wp_bless_conversation_eleven_03",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_bless_conversation_eleven_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_bless_conversation_twelve_01",
		response = "pdr_bless_conversation_twelve_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
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
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_twelve",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_twelve",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twelve_01",
		response = "pwh_wp_bless_conversation_twelve_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_bless_conversation_twelve_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_bless_conversation_twelve_02",
		response = "pdr_bless_conversation_twelve_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twelve_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twelve_02",
		response = "pwh_wp_bless_conversation_twelve_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_bless_conversation_twelve_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_bless_conversation_twelve_03",
		response = "pdr_bless_conversation_twelve_03",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twelve_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_thirteen_01",
		response = "pwh_wp_bless_conversation_thirteen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"wh_priest"
			},
			{
				"global_context",
				"dwarf_ranger",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_thirteen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_thirteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_bless_conversation_thirteen_01",
		response = "pdr_bless_conversation_thirteen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_thirteen_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_thirteen_02",
		response = "pwh_wp_bless_conversation_thirteen_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_bless_conversation_thirteen_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_wp_bless_conversation_thirteen_02",
		response = "pdr_wp_bless_conversation_thirteen_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_thirteen_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_bless_conversation_thirteen_03",
		response = "pwh_bless_conversation_thirteen_03",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_wp_bless_conversation_thirteen_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_fourteen_01",
		response = "pwh_wp_bless_conversation_fourteen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"wh_priest"
			},
			{
				"global_context",
				"dwarf_ranger",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_fourteen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_fourteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_bless_conversation_fourteen_01",
		response = "pdr_bless_conversation_fourteen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_fourteen_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_bless_conversation_fourteen_02",
		response = "pwh_bless_conversation_fourteen_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_bless_conversation_fourteen_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_fifteen_01",
		response = "pwh_wp_bless_conversation_fifteen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"wh_priest"
			},
			{
				"global_context",
				"dwarf_ranger",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_fifteen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_fifteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_bless_conversation_fifteen_02",
		response = "pdr_bless_conversation_fifteen_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_fifteen_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_fifteen_02",
		response = "pwh_wp_bless_conversation_fifteen_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_bless_conversation_fifteen_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_sixteen_01",
		response = "pes_bless_conversation_sixteen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_sixteen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_sixteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_sixteen_01",
		response = "pwh_wp_bless_conversation_sixteen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_bless_conversation_sixteen_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_sixteen_02",
		response = "pes_bless_conversation_sixteen_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_sixteen_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_sixteen_02",
		response = "pwh_wp_bless_conversation_sixteen_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_bless_conversation_sixteen_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_seventeen_01",
		response = "pes_bless_conversation_seventeen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_seventeen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_seventeen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_seventeen_01",
		response = "pwh_wp_bless_conversation_seventeen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_bless_conversation_seventeen_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_seventeen_02",
		response = "pes_bless_conversation_seventeen_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_seventeen_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_seventeen_02",
		response = "pwh_wp_bless_conversation_seventeen_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_bless_conversation_seventeen_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_seventeen_03",
		response = "pes_bless_conversation_seventeen_03",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_seventeen_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_eighteen_01",
		response = "pwh_wp_bless_conversation_eighteen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"wh_priest"
			},
			{
				"global_context",
				"empire_soldier",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_eighteen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_eighteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_eighteen_01",
		response = "pes_bless_conversation_eighteen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_eighteen_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_eighteen_02",
		response = "pwh_wp_bless_conversation_eighteen_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_bless_conversation_eighteen_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_eighteen_02",
		response = "pes_bless_conversation_eighteen_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_eighteen_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_nineteen_01",
		response = "pwh_wp_bless_conversation_nineteen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"wh_priest"
			},
			{
				"global_context",
				"empire_soldier",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_nineteen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_nineteen",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_nineteen_01",
		response = "pes_bless_conversation_nineteen_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_nineteen_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_nineteen_02",
		response = "pwh_wp_bless_conversation_nineteen_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_bless_conversation_nineteen_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_nineteen_02",
		response = "pes_bless_conversation_nineteen_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_nineteen_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_twenty_01",
		response = "pes_bless_conversation_twenty_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_twenty",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_twenty",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twenty_01",
		response = "pwh_wp_bless_conversation_twenty_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_bless_conversation_twenty_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_bless_conversation_twenty_02",
		response = "pes_bless_conversation_twenty_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twenty_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twenty_02",
		response = "pwh_wp_bless_conversation_twenty_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_bless_conversation_twenty_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_twentyone_01",
		response = "pbw_bless_conversation_twentyone_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_twentyone",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_twentyone",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentyone_01",
		response = "pwh_wp_bless_conversation_twentyone_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_bless_conversation_twentyone_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_twentyone_02",
		response = "pbw_bless_conversation_twentyone_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twentyone_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentyone_02",
		response = "pwh_wp_bless_conversation_twentyone_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_bless_conversation_twentyone_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_twentytwo_01",
		response = "pbw_bless_conversation_twentytwo_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_twentytwo",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_twentytwo",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentytwo_01",
		response = "pwh_wp_bless_conversation_twentytwo_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_bless_conversation_twentytwo_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_twentytwo_02",
		response = "pbw_bless_conversation_twentytwo_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twentytwo_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_twentythree_01",
		response = "pbw_bless_conversation_twentythree_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_twentythree",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_twentythree",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentythree_01",
		response = "pwh_wp_bless_conversation_twentythree_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_bless_conversation_twentythree_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_twentythree_02",
		response = "pbw_bless_conversation_twentythree_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twentythree_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentythree_02",
		response = "pwh_wp_bless_conversation_twentythree_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_bless_conversation_twentythree_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_twentythree_03",
		response = "pbw_bless_conversation_twentythree_03",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twentythree_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentythree_03",
		response = "pwh_wp_bless_conversation_twentythree_03",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_bless_conversation_twentythree_03"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_twentyfour_01",
		response = "pbw_bless_conversation_twentyfour_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"bright_wizard"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			},
			{
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_twentyfour",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_twentyfour",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentyfour_01",
		response = "pwh_wp_bless_conversation_twentyfour_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_bless_conversation_twentyfour_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_twentyfour_02",
		response = "pbw_bless_conversation_twentyfour_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twentyfour_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentyfour_02",
		response = "pwh_wp_bless_conversation_twentyfour_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_bless_conversation_twentyfour_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_twentyfour_03",
		response = "pbw_bless_conversation_twentyfour_03",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twentyfour_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentyfive_01",
		response = "pwh_wp_bless_conversation_twentyfive_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"wh_priest"
			},
			{
				"global_context",
				"bright_wizard",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_twentyfive",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_twentyfive",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pbw_bless_conversation_twentyfive_01",
		response = "pbw_bless_conversation_twentyfive_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twentyfive_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"bright_wizard"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentyfive_02",
		response = "pwh_wp_bless_conversation_twentyfive_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pbw_bless_conversation_twentyfive_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentysix_01",
		response = "pwh_wp_bless_conversation_twentysix_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"wh_priest"
			},
			{
				"global_context",
				"es_questingknight",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_twentysix",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_twentysix",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_gk_bless_conversation_twentysix_01",
		response = "pes_gk_bless_conversation_twentysix_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twentysix_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentysix_02",
		response = "pwh_wp_bless_conversation_twentysix_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_gk_bless_conversation_twentysix_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_gk_bless_conversation_twentysix_02",
		response = "pes_gk_bless_conversation_twentysix_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twentysix_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentysix_03",
		response = "pwh_wp_bless_conversation_twentysix_03",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_gk_bless_conversation_twentysix_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_de_bless_conversation_twentyseven_01",
		response = "pdr_de_bless_conversation_twentyseven_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
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
				"player_career",
				OP.EQ,
				"dr_engineer"
			},
			{
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_twentyseven",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_twentyseven",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentyseven_01",
		response = "pwh_wp_bless_conversation_twentyseven_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_de_bless_conversation_twentyseven_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_de_bless_conversation_twentyseven_02",
		response = "pdr_de_bless_conversation_twentyseven_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twentyseven_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentyseven_02",
		response = "pwh_wp_bless_conversation_twentyseven_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_de_bless_conversation_twentyseven_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_gk_bless_conversation_twentyeight_01",
		response = "pes_gk_bless_conversation_twentyeight_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"es_questingknight"
			},
			{
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_twentyeight",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_twentyeight",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentyeight_01",
		response = "pwh_wp_bless_conversation_twentyeight_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_gk_bless_conversation_twentyeight_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_gk_bless_conversation_twentyeight_02",
		response = "pes_gk_bless_conversation_twentyeight_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twentyeight_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentyeight_02",
		response = "pwh_wp_bless_conversation_twentyeight_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_gk_bless_conversation_twentyeight_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_gk_bless_conversation_twentyeight_03",
		response = "pes_gk_bless_conversation_twentyeight_03",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twentyeight_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_de_bless_conversation_twentynine_01",
		response = "pdr_de_bless_conversation_twentynine_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"user_context",
				"friends_close",
				OP.GT,
				0
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
				"player_career",
				OP.EQ,
				"dr_engineer"
			},
			{
				"global_context",
				"wh_priest",
				OP.EQ,
				1
			},
			{
				"global_context",
				"es_questingknight",
				OP.EQ,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"faction_memory",
				"bless_conversation_twentynine",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"bless_conversation_twentynine",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_gk_bless_conversation_twentynine_01",
		response = "pes_gk_bless_conversation_twentynine_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pdr_de_bless_conversation_twentynine_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_wp_bless_conversation_twentynine_01",
		response = "pwh_wp_bless_conversation_twentynine_01",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_gk_bless_conversation_twentynine_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pes_gk_bless_conversation_twentynine_02",
		response = "pes_gk_bless_conversation_twentynine_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pwh_wp_bless_conversation_twentynine_01"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"empire_soldier"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pdr_de_bless_conversation_twentynine_02",
		response = "pdr_de_bless_conversation_twentynine_02",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"heard_speak"
			},
			{
				"query_context",
				"sound_event",
				OP.EQ,
				"pes_gk_bless_conversation_twentynine_02"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"dwarf_ranger"
			}
		},
		on_done = {
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_hub_prayer",
		response = "pwh_hub_prayer",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"story_trigger"
			},
			{
				"query_context",
				"source_name",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
			},
			{
				"user_context",
				"player_career",
				OP.EQ,
				"wh_priest"
			},
			{
				"global_context",
				"level_time",
				OP.GT,
				600
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMEDIFF,
				OP.GT,
				60
			},
			{
				"user_memory",
				"pwh_hub_prayer",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"pwh_hub_prayer",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_conversation",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwh_hub_prayer_distant",
		response = "pwh_hub_prayer_distant",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"distant_voices"
			},
			{
				"global_context",
				"witch_hunter",
				OP.EQ,
				0
			},
			{
				"global_context",
				"level_time",
				OP.GT,
				700
			},
			{
				"user_memory",
				"pwh_hub_prayer_distant",
				OP.LT,
				2
			}
		},
		on_done = {
			{
				"user_memory",
				"pwh_hub_prayer_distant",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pes_gk_bless_conversation_twentyeight_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_gk_bless_conversation_twentyeight_03"
			},
			sound_events_duration = {
				[1.0] = 0.85881251096725
			},
			sound_events = {
				[1.0] = "pes_gk_bless_conversation_twentyeight_03"
			}
		},
		pwh_bless_conversation_eleven_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_bless_conversation_eleven_02"
			},
			sound_events_duration = {
				[1.0] = 4.2190418243408
			},
			sound_events = {
				[1.0] = "pwh_bless_conversation_eleven_02"
			}
		},
		pwh_wp_bless_conversation_seven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_seven_01"
			},
			sound_events_duration = {
				[1.0] = 7.8448543548584
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_seven_01"
			}
		},
		pdr_wp_bless_conversation_eleven_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_wp_bless_conversation_eleven_02"
			},
			sound_events_duration = {
				[1.0] = 9.4878330230713
			},
			sound_events = {
				[1.0] = "pdr_wp_bless_conversation_eleven_02"
			}
		},
		pbw_bless_conversation_twentyfive_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_twentyfive_01"
			},
			sound_events_duration = {
				[1.0] = 6.8841667175293
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_twentyfive_01"
			}
		},
		pwh_wp_bless_conversation_sixteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_sixteen_01"
			},
			sound_events_duration = {
				[1.0] = 6.9152293205261
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_sixteen_01"
			}
		},
		pbw_bless_conversation_five_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_five_01"
			},
			sound_events_duration = {
				[1.0] = 3.5222499370575
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_five_01"
			}
		},
		pbw_bless_conversation_twentythree_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_twentythree_01"
			},
			sound_events_duration = {
				[1.0] = 5.4442706108093
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_twentythree_01"
			}
		},
		pdr_wp_bless_conversation_thirteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_wp_bless_conversation_thirteen_02"
			},
			sound_events_duration = {
				[1.0] = 11.013437271118
			},
			sound_events = {
				[1.0] = "pdr_wp_bless_conversation_thirteen_02"
			}
		},
		pwh_wp_bless_conversation_ten_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_ten_02"
			},
			sound_events_duration = {
				[1.0] = 6.5293126106262
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_ten_02"
			}
		},
		pwh_wp_bless_conversation_twentyone_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentyone_01"
			},
			sound_events_duration = {
				[1.0] = 5.4827709197998
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentyone_01"
			}
		},
		pwh_wp_bless_conversation_twentyfour_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentyfour_01"
			},
			sound_events_duration = {
				[1.0] = 9.0658750534058
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentyfour_01"
			}
		},
		pbw_bless_conversation_twentyfour_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_twentyfour_01"
			},
			sound_events_duration = {
				[1.0] = 6.4147500991821
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_twentyfour_01"
			}
		},
		pwh_wp_bless_conversation_twentyfour_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentyfour_02"
			},
			sound_events_duration = {
				[1.0] = 9.0273962020874
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentyfour_02"
			}
		},
		pwh_wp_bless_conversation_one_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_one_01"
			},
			sound_events_duration = {
				[1.0] = 10.096229553223
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_one_01"
			}
		},
		pdr_bless_conversation_five_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_bless_conversation_five_01"
			},
			sound_events_duration = {
				[1.0] = 5.1114168167114
			},
			sound_events = {
				[1.0] = "pdr_bless_conversation_five_01"
			}
		},
		pdr_bless_conversation_six_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pdr_bless_conversation_six_01"
			},
			sound_events_duration = {
				[1.0] = 4.886125087738
			},
			sound_events = {
				[1.0] = "pdr_bless_conversation_six_01"
			}
		},
		pwh_wp_bless_conversation_twentyeight_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentyeight_01"
			},
			sound_events_duration = {
				[1.0] = 6.2855625152588
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentyeight_01"
			}
		},
		pwh_wp_bless_conversation_three_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_three_02"
			},
			sound_events_duration = {
				[1.0] = 4.5842084884644
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_three_02"
			}
		},
		pwe_bless_conversation_seven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_bless_conversation_seven_01"
			},
			sound_events_duration = {
				[1.0] = 5.4965415000916
			},
			sound_events = {
				[1.0] = "pwe_bless_conversation_seven_01"
			}
		},
		pwh_wp_bless_conversation_eighteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_eighteen_02"
			},
			sound_events_duration = {
				[1.0] = 4.1750416755676
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_eighteen_02"
			}
		},
		pwe_bless_conversation_two_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwe_bless_conversation_two_01"
			},
			sound_events_duration = {
				[1.0] = 7.0442914962769
			},
			sound_events = {
				[1.0] = "pwe_bless_conversation_two_01"
			}
		},
		pwe_bless_conversation_six_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_bless_conversation_six_01"
			},
			sound_events_duration = {
				[1.0] = 3.7479584217072
			},
			sound_events = {
				[1.0] = "pwe_bless_conversation_six_01"
			}
		},
		pwh_wp_bless_conversation_thirteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_thirteen_01"
			},
			sound_events_duration = {
				[1.0] = 6.8168749809265
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_thirteen_01"
			}
		},
		pwh_wp_bless_conversation_twelve_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twelve_01"
			},
			sound_events_duration = {
				[1.0] = 2.0598125457764
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twelve_01"
			}
		},
		pes_bless_conversation_twenty_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_twenty_01"
			},
			sound_events_duration = {
				[1.0] = 5.7594790458679
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_twenty_01"
			}
		},
		pbw_bless_conversation_twentyone_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_twentyone_02"
			},
			sound_events_duration = {
				[1.0] = 3.4049582481384
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_twentyone_02"
			}
		},
		pwh_wp_bless_conversation_nineteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_nineteen_02"
			},
			sound_events_duration = {
				[1.0] = 6.0085625648499
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_nineteen_02"
			}
		},
		pes_bless_conversation_eighteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_eighteen_02"
			},
			sound_events_duration = {
				[1.0] = 2.8732707500458
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_eighteen_02"
			}
		},
		pbw_bless_conversation_twentytwo_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_twentytwo_01"
			},
			sound_events_duration = {
				[1.0] = 5.8938331604004
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_twentytwo_01"
			}
		},
		pwh_wp_bless_conversation_twentytwo_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_happy"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentytwo_01"
			},
			sound_events_duration = {
				[1.0] = 4.5289998054504
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentytwo_01"
			}
		},
		pwh_wp_bless_conversation_six_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_six_02"
			},
			sound_events_duration = {
				[1.0] = 3.9637291431427
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_six_02"
			}
		},
		pwe_bless_conversation_two_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_bless_conversation_two_02"
			},
			sound_events_duration = {
				[1.0] = 1.5509999990463
			},
			sound_events = {
				[1.0] = "pwe_bless_conversation_two_02"
			}
		},
		pbw_bless_conversation_twentyfour_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_twentyfour_03"
			},
			sound_events_duration = {
				[1.0] = 6.7432084083557
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_twentyfour_03"
			}
		},
		pbw_bless_conversation_eight_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_eight_01"
			},
			sound_events_duration = {
				[1.0] = 4.8336458206177
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_eight_01"
			}
		},
		pwh_wp_bless_conversation_seven_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_seven_02"
			},
			sound_events_duration = {
				[1.0] = 4.6295208930969
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_seven_02"
			}
		},
		pes_bless_conversation_seventeen_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_seventeen_03"
			},
			sound_events_duration = {
				[1.0] = 2.9697499275208
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_seventeen_03"
			}
		},
		pes_bless_conversation_six_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_six_01"
			},
			sound_events_duration = {
				[1.0] = 3.9244375228882
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_six_01"
			}
		},
		pdr_de_bless_conversation_twentyseven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pdr_de_bless_conversation_twentyseven_01"
			},
			sound_events_duration = {
				[1.0] = 8.0459794998169
			},
			sound_events = {
				[1.0] = "pdr_de_bless_conversation_twentyseven_01"
			}
		},
		pbw_bless_conversation_six_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_six_02"
			},
			sound_events_duration = {
				[1.0] = 2.6594998836517
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_six_02"
			}
		},
		pes_gk_bless_conversation_twentyeight_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_gk_bless_conversation_twentyeight_02"
			},
			sound_events_duration = {
				[1.0] = 6.2792916297913
			},
			sound_events = {
				[1.0] = "pes_gk_bless_conversation_twentyeight_02"
			}
		},
		pwe_st_bless_conversation_seven_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_st_bless_conversation_seven_02"
			},
			sound_events_duration = {
				[1.0] = 6.495041847229
			},
			sound_events = {
				[1.0] = "pwe_st_bless_conversation_seven_02"
			}
		},
		pdr_wp_bless_conversation_eleven_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_wp_bless_conversation_eleven_03"
			},
			sound_events_duration = {
				[1.0] = 6.0578956604004
			},
			sound_events = {
				[1.0] = "pdr_wp_bless_conversation_eleven_03"
			}
		},
		pwe_bless_conversation_eight_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_bless_conversation_eight_01"
			},
			sound_events_duration = {
				[1.0] = 5.3259582519531
			},
			sound_events = {
				[1.0] = "pwe_bless_conversation_eight_01"
			}
		},
		pwe_bless_conversation_nine_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_bless_conversation_nine_01"
			},
			sound_events_duration = {
				[1.0] = 2.3250832557678
			},
			sound_events = {
				[1.0] = "pwe_bless_conversation_nine_01"
			}
		},
		pwh_wp_bless_conversation_thirteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_thirteen_02"
			},
			sound_events_duration = {
				[1.0] = 3.2025625705719
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_thirteen_02"
			}
		},
		pdr_bless_conversation_ten_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_bless_conversation_ten_02"
			},
			sound_events_duration = {
				[1.0] = 1.8537291288376
			},
			sound_events = {
				[1.0] = "pdr_bless_conversation_ten_02"
			}
		},
		pwh_wp_bless_conversation_twentysix_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentysix_01"
			},
			sound_events_duration = {
				[1.0] = 7.3138542175293
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentysix_01"
			}
		},
		pwh_wp_bless_conversation_nineteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_nineteen_01"
			},
			sound_events_duration = {
				[1.0] = 10.110666275024
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_nineteen_01"
			}
		},
		pwh_wp_bless_conversation_two_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_two_01"
			},
			sound_events_duration = {
				[1.0] = 10.397083282471
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_two_01"
			}
		},
		pdr_bless_conversation_seven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_bless_conversation_seven_01"
			},
			sound_events_duration = {
				[1.0] = 3.6995832920074
			},
			sound_events = {
				[1.0] = "pdr_bless_conversation_seven_01"
			}
		},
		pbw_bless_conversation_seven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_seven_01"
			},
			sound_events_duration = {
				[1.0] = 3.0845625400543
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_seven_01"
			}
		},
		pdr_bless_conversation_twelve_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_bless_conversation_twelve_02"
			},
			sound_events_duration = {
				[1.0] = 8.0080413818359
			},
			sound_events = {
				[1.0] = "pdr_bless_conversation_twelve_02"
			}
		},
		pes_bless_conversation_nine_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_nine_01"
			},
			sound_events_duration = {
				[1.0] = 6.2396874427795
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_nine_01"
			}
		},
		pwh_wp_bless_conversation_twentythree_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentythree_02"
			},
			sound_events_duration = {
				[1.0] = 4.0611667633057
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentythree_02"
			}
		},
		pdr_bless_conversation_fourteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_bless_conversation_fourteen_01"
			},
			sound_events_duration = {
				[1.0] = 8.5922079086304
			},
			sound_events = {
				[1.0] = "pdr_bless_conversation_fourteen_01"
			}
		},
		pwe_st_bless_conversation_seven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwe_st_bless_conversation_seven_01"
			},
			sound_events_duration = {
				[1.0] = 3.9678957462311
			},
			sound_events = {
				[1.0] = "pwe_st_bless_conversation_seven_01"
			}
		},
		pes_bless_conversation_sixteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_sixteen_02"
			},
			sound_events_duration = {
				[1.0] = 5.3445835113525
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_sixteen_02"
			}
		},
		pwh_wp_bless_conversation_seventeen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_seventeen_01"
			},
			sound_events_duration = {
				[1.0] = 8.8640413284302
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_seventeen_01"
			}
		},
		pes_bless_conversation_seven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_seven_01"
			},
			sound_events_duration = {
				[1.0] = 3.0269374847412
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_seven_01"
			}
		},
		pdr_bless_conversation_thirteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_bless_conversation_thirteen_01"
			},
			sound_events_duration = {
				[1.0] = 5.5297708511353
			},
			sound_events = {
				[1.0] = "pdr_bless_conversation_thirteen_01"
			}
		},
		pwh_wp_bless_conversation_four_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_four_01"
			},
			sound_events_duration = {
				[1.0] = 9.6526460647583
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_four_01"
			}
		},
		pbw_bless_conversation_twentythree_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_twentythree_03"
			},
			sound_events_duration = {
				[1.0] = 4.7911043167114
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_twentythree_03"
			}
		},
		pbw_bless_conversation_twentytwo_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_twentytwo_02"
			},
			sound_events_duration = {
				[1.0] = 3.3385000228882
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_twentytwo_02"
			}
		},
		pwh_wp_bless_conversation_twentysix_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentysix_02"
			},
			sound_events_duration = {
				[1.0] = 8.8410205841065
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentysix_02"
			}
		},
		pes_bless_conversation_nineteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_nineteen_01"
			},
			sound_events_duration = {
				[1.0] = 7.5130209922791
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_nineteen_01"
			}
		},
		pes_gk_bless_conversation_twentysix_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_gk_bless_conversation_twentysix_02"
			},
			sound_events_duration = {
				[1.0] = 5.4179792404175
			},
			sound_events = {
				[1.0] = "pes_gk_bless_conversation_twentysix_02"
			}
		},
		pdr_bless_conversation_nine_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pdr_bless_conversation_nine_01"
			},
			sound_events_duration = {
				[1.0] = 5.6163749694824
			},
			sound_events = {
				[1.0] = "pdr_bless_conversation_nine_01"
			}
		},
		pes_bless_conversation_twenty_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_twenty_02"
			},
			sound_events_duration = {
				[1.0] = 2.8732707500458
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_twenty_02"
			}
		},
		pdr_bless_conversation_ten_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_bless_conversation_ten_03"
			},
			sound_events_duration = {
				[1.0] = 1.9112083911896
			},
			sound_events = {
				[1.0] = "pdr_bless_conversation_ten_03"
			}
		},
		pwh_wp_bless_conversation_twenty_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twenty_02"
			},
			sound_events_duration = {
				[1.0] = 3.0340623855591
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twenty_02"
			}
		},
		pes_bless_conversation_nineteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_nineteen_02"
			},
			sound_events_duration = {
				[1.0] = 2.9660832881927
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_nineteen_02"
			}
		},
		pes_bless_conversation_seventeen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_seventeen_02"
			},
			sound_events_duration = {
				[1.0] = 6.9264373779297
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_seventeen_02"
			}
		},
		pes_bless_conversation_seventeen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_seventeen_01"
			},
			sound_events_duration = {
				[1.0] = 7.6690001487732
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_seventeen_01"
			}
		},
		pwh_wp_bless_conversation_twentyeight_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentyeight_02"
			},
			sound_events_duration = {
				[1.0] = 3.8307499885559
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentyeight_02"
			}
		},
		pwe_bless_conversation_four_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_bless_conversation_four_01"
			},
			sound_events_duration = {
				[1.0] = 18.433042526245
			},
			sound_events = {
				[1.0] = "pwe_bless_conversation_four_01"
			}
		},
		pwe_bless_conversation_four_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_bless_conversation_four_02"
			},
			sound_events_duration = {
				[1.0] = 6.9318332672119
			},
			sound_events = {
				[1.0] = "pwe_bless_conversation_four_02"
			}
		},
		pbw_bless_conversation_six_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_six_01"
			},
			sound_events_duration = {
				[1.0] = 6.7702293395996
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_six_01"
			}
		},
		pes_gk_bless_conversation_twentynine_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_gk_bless_conversation_twentynine_01"
			},
			sound_events_duration = {
				[1.0] = 4.4530000686645
			},
			sound_events = {
				[1.0] = "pes_gk_bless_conversation_twentynine_01"
			}
		},
		pwh_wp_bless_conversation_one_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_one_02"
			},
			sound_events_duration = {
				[1.0] = 8.5747919082642
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_one_02"
			}
		},
		pbw_bless_conversation_twentyone_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_twentyone_01"
			},
			sound_events_duration = {
				[1.0] = 4.6919164657593
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_twentyone_01"
			}
		},
		pwe_bless_conversation_one_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_bless_conversation_one_02"
			},
			sound_events_duration = {
				[1.0] = 3.4994583129883
			},
			sound_events = {
				[1.0] = "pwe_bless_conversation_one_02"
			}
		},
		pdr_bless_conversation_eight_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_bless_conversation_eight_01"
			},
			sound_events_duration = {
				[1.0] = 6.9879789352417
			},
			sound_events = {
				[1.0] = "pdr_bless_conversation_eight_01"
			}
		},
		pdr_bless_conversation_ten_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pdr_bless_conversation_ten_01"
			},
			sound_events_duration = {
				[1.0] = 3.1441042423248
			},
			sound_events = {
				[1.0] = "pdr_bless_conversation_ten_01"
			}
		},
		pwe_st_bless_conversation_six_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_st_bless_conversation_six_02"
			},
			sound_events_duration = {
				[1.0] = 2.0289790630341
			},
			sound_events = {
				[1.0] = "pwe_st_bless_conversation_six_02"
			}
		},
		pwh_wp_bless_conversation_eighteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_eighteen_01"
			},
			sound_events_duration = {
				[1.0] = 10.105792045593
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_eighteen_01"
			}
		},
		pdr_wp_bless_conversation_eleven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pdr_wp_bless_conversation_eleven_01"
			},
			sound_events_duration = {
				[1.0] = 7.1407918930054
			},
			sound_events = {
				[1.0] = "pdr_wp_bless_conversation_eleven_01"
			}
		},
		pwh_wp_bless_conversation_six_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_six_01"
			},
			sound_events_duration = {
				[1.0] = 5.0212497711182
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_six_01"
			}
		},
		pwh_hub_prayer_distant = {
			face_animations_n = 10,
			database = "dlc_bless",
			sound_events_n = 10,
			randomize_indexes_n = 0,
			sound_distance = 30,
			category = "story_talk_keep",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			},
			randomize_indexes = {},
			localization_strings = {
				"pwh_hub_prayers_distant_01",
				"pwh_hub_prayers_distant_02",
				"pwh_hub_prayers_distant_03",
				"pwh_hub_prayers_distant_04",
				"pwh_hub_prayers_distant_05",
				"pwh_hub_prayers_distant_06",
				"pwh_hub_prayers_distant_07",
				"pwh_hub_prayers_distant_08",
				"pwh_hub_prayers_distant_09",
				"pwh_hub_prayers_distant_10"
			},
			sound_events_duration = {
				6.3348331451416,
				7.4236040115356,
				7.3626251220703,
				8.5888957977295,
				6.5021042823792,
				10.087082862854,
				11.8718957901,
				12.576728820801,
				12.219708442688,
				18.956042289734
			},
			sound_events = {
				"pwh_hub_prayers_distant_01",
				"pwh_hub_prayers_distant_02",
				"pwh_hub_prayers_distant_03",
				"pwh_hub_prayers_distant_04",
				"pwh_hub_prayers_distant_05",
				"pwh_hub_prayers_distant_06",
				"pwh_hub_prayers_distant_07",
				"pwh_hub_prayers_distant_08",
				"pwh_hub_prayers_distant_09",
				"pwh_hub_prayers_distant_10"
			}
		},
		pwh_hub_prayer = {
			face_animations_n = 10,
			database = "dlc_bless",
			sound_events_n = 10,
			randomize_indexes_n = 0,
			category = "story_talk_keep",
			dialogue_animations_n = 10,
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			face_animations = {
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy",
				"face_happy"
			},
			randomize_indexes = {},
			localization_strings = {
				"pwh_hub_prayer_01",
				"pwh_hub_prayer_02",
				"pwh_hub_prayer_03",
				"pwh_hub_prayer_04",
				"pwh_hub_prayer_05",
				"pwh_hub_prayer_06",
				"pwh_hub_prayer_07",
				"pwh_hub_prayer_08",
				"pwh_hub_prayer_09",
				"pwh_hub_prayer_10"
			},
			sound_events_duration = {
				6.3348331451416,
				7.4236040115356,
				7.3626251220703,
				8.5888957977295,
				6.5021042823792,
				10.087082862854,
				11.8718957901,
				12.576728820801,
				12.219708442688,
				18.956042289734
			},
			sound_events = {
				"pwh_hub_prayer_01",
				"pwh_hub_prayer_02",
				"pwh_hub_prayer_03",
				"pwh_hub_prayer_04",
				"pwh_hub_prayer_05",
				"pwh_hub_prayer_06",
				"pwh_hub_prayer_07",
				"pwh_hub_prayer_08",
				"pwh_hub_prayer_09",
				"pwh_hub_prayer_10"
			}
		},
		pwh_wp_bless_conversation_four_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_four_02"
			},
			sound_events_duration = {
				[1.0] = 5.9312705993652
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_four_02"
			}
		},
		pwh_wp_bless_conversation_twentythree_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentythree_03"
			},
			sound_events_duration = {
				[1.0] = 5.0524997711182
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentythree_03"
			}
		},
		pes_gk_bless_conversation_twentynine_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_gk_bless_conversation_twentynine_02"
			},
			sound_events_duration = {
				[1.0] = 3.7865207195282
			},
			sound_events = {
				[1.0] = "pes_gk_bless_conversation_twentynine_02"
			}
		},
		pbw_bless_conversation_twentythree_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_twentythree_02"
			},
			sound_events_duration = {
				[1.0] = 11.313166618347
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_twentythree_02"
			}
		},
		pdr_de_bless_conversation_twentynine_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pdr_de_bless_conversation_twentynine_01"
			},
			sound_events_duration = {
				[1.0] = 6.0763125419617
			},
			sound_events = {
				[1.0] = "pdr_de_bless_conversation_twentynine_01"
			}
		},
		pwh_wp_bless_conversation_twentyfive_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentyfive_02"
			},
			sound_events_duration = {
				[1.0] = 2.5613334178925
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentyfive_02"
			}
		},
		pdr_bless_conversation_fifteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_bless_conversation_fifteen_02"
			},
			sound_events_duration = {
				[1.0] = 8.767728805542
			},
			sound_events = {
				[1.0] = "pdr_bless_conversation_fifteen_02"
			}
		},
		pes_gk_bless_conversation_twentysix_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_gk_bless_conversation_twentysix_01"
			},
			sound_events_duration = {
				[1.0] = 1.5592708587647
			},
			sound_events = {
				[1.0] = "pes_gk_bless_conversation_twentysix_01"
			}
		},
		pwh_wp_bless_conversation_twentythree_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentythree_01"
			},
			sound_events_duration = {
				[1.0] = 4.7401876449585
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentythree_01"
			}
		},
		pwh_wp_bless_conversation_seventeen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_seventeen_02"
			},
			sound_events_duration = {
				[1.0] = 8.4747295379639
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_seventeen_02"
			}
		},
		pbw_bless_conversation_twentyfour_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_twentyfour_02"
			},
			sound_events_duration = {
				[1.0] = 1.2605625391007
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_twentyfour_02"
			}
		},
		pwh_wp_bless_conversation_twenty_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twenty_01"
			},
			sound_events_duration = {
				[1.0] = 4.1319584846497
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twenty_01"
			}
		},
		pwe_bless_conversation_five_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_bless_conversation_five_01"
			},
			sound_events_duration = {
				[1.0] = 7.8172707557678
			},
			sound_events = {
				[1.0] = "pwe_bless_conversation_five_01"
			}
		},
		pwe_st_bless_conversation_seven_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_st_bless_conversation_seven_03"
			},
			sound_events_duration = {
				[1.0] = 4.6102709770203
			},
			sound_events = {
				[1.0] = "pwe_st_bless_conversation_seven_03"
			}
		},
		pwe_bless_conversation_three_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_bless_conversation_three_02"
			},
			sound_events_duration = {
				[1.0] = 5.3156456947327
			},
			sound_events = {
				[1.0] = "pwe_bless_conversation_three_02"
			}
		},
		pwh_bless_conversation_thirteen_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_bless_conversation_thirteen_03"
			},
			sound_events_duration = {
				[1.0] = 1.1643542051315
			},
			sound_events = {
				[1.0] = "pwh_bless_conversation_thirteen_03"
			}
		},
		pes_gk_bless_conversation_twentyeight_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pes_gk_bless_conversation_twentyeight_01"
			},
			sound_events_duration = {
				[1.0] = 3.7257916927338
			},
			sound_events = {
				[1.0] = "pes_gk_bless_conversation_twentyeight_01"
			}
		},
		pwh_wp_bless_conversation_three_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_three_01"
			},
			sound_events_duration = {
				[1.0] = 4.8678126335144
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_three_01"
			}
		},
		pbw_bless_conversation_nine_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pbw_bless_conversation_nine_01"
			},
			sound_events_duration = {
				[1.0] = 4.2021040916443
			},
			sound_events = {
				[1.0] = "pbw_bless_conversation_nine_01"
			}
		},
		pwh_bless_conversation_eleven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_bless_conversation_eleven_01"
			},
			sound_events_duration = {
				[1.0] = 8.1038541793823
			},
			sound_events = {
				[1.0] = "pwh_bless_conversation_eleven_01"
			}
		},
		pwh_wp_bless_conversation_twentyseven_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentyseven_02"
			},
			sound_events_duration = {
				[1.0] = 8.0646877288818
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentyseven_02"
			}
		},
		pwh_wp_bless_conversation_fourteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_fourteen_01"
			},
			sound_events_duration = {
				[1.0] = 7.4035415649414
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_fourteen_01"
			}
		},
		pdr_de_bless_conversation_twentyseven_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_de_bless_conversation_twentyseven_02"
			},
			sound_events_duration = {
				[1.0] = 5.2259793281555
			},
			sound_events = {
				[1.0] = "pdr_de_bless_conversation_twentyseven_02"
			}
		},
		pwh_wp_bless_conversation_twentyseven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentyseven_01"
			},
			sound_events_duration = {
				[1.0] = 8.995041847229
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentyseven_01"
			}
		},
		pwh_bless_conversation_fourteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_bless_conversation_fourteen_02"
			},
			sound_events_duration = {
				[1.0] = 1.0281146168709
			},
			sound_events = {
				[1.0] = "pwh_bless_conversation_fourteen_02"
			}
		},
		pwh_wp_bless_conversation_twelve_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twelve_02"
			},
			sound_events_duration = {
				[1.0] = 6.1376042366028
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twelve_02"
			}
		},
		pwe_bless_conversation_three_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwe_bless_conversation_three_01"
			},
			sound_events_duration = {
				[1.0] = 5.8523125648499
			},
			sound_events = {
				[1.0] = "pwe_bless_conversation_three_01"
			}
		},
		pwh_wp_bless_conversation_twentyone_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentyone_02"
			},
			sound_events_duration = {
				[1.0] = 8.5490207672119
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentyone_02"
			}
		},
		pes_bless_conversation_sixteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_sixteen_01"
			},
			sound_events_duration = {
				[1.0] = 3.8731875419617
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_sixteen_01"
			}
		},
		pwh_wp_bless_conversation_fifteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_fifteen_01"
			},
			sound_events_duration = {
				[1.0] = 6.322208404541
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_fifteen_01"
			}
		},
		pwh_wp_bless_conversation_twentyfive_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentyfive_01"
			},
			sound_events_duration = {
				[1.0] = 9.138729095459
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentyfive_01"
			}
		},
		pwh_wp_bless_conversation_twentysix_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentysix_03"
			},
			sound_events_duration = {
				[1.0] = 4.8724999427795
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentysix_03"
			}
		},
		pes_bless_conversation_five_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_five_01"
			},
			sound_events_duration = {
				[1.0] = 3.273895740509
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_five_01"
			}
		},
		pwe_st_bless_conversation_six_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_st_bless_conversation_six_01"
			},
			sound_events_duration = {
				[1.0] = 6.9408540725708
			},
			sound_events = {
				[1.0] = "pwe_st_bless_conversation_six_01"
			}
		},
		pwh_wp_bless_conversation_twentynine_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_twentynine_01"
			},
			sound_events_duration = {
				[1.0] = 2.0473749637604
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_twentynine_01"
			}
		},
		pes_bless_conversation_eighteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_eighteen_01"
			},
			sound_events_duration = {
				[1.0] = 4.28360414505
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_eighteen_01"
			}
		},
		pdr_bless_conversation_twelve_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_bless_conversation_twelve_03"
			},
			sound_events_duration = {
				[1.0] = 5.1496248245239
			},
			sound_events = {
				[1.0] = "pdr_bless_conversation_twelve_03"
			}
		},
		pdr_de_bless_conversation_twentynine_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pdr_de_bless_conversation_twentynine_02"
			},
			sound_events_duration = {
				[1.0] = 1.7384999990463
			},
			sound_events = {
				[1.0] = "pdr_de_bless_conversation_twentynine_02"
			}
		},
		pwh_wp_bless_conversation_sixteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_sixteen_02"
			},
			sound_events_duration = {
				[1.0] = 6.5190210342407
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_sixteen_02"
			}
		},
		pwh_wp_bless_conversation_fifteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_fifteen_02"
			},
			sound_events_duration = {
				[1.0] = 2.3871250152588
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_fifteen_02"
			}
		},
		pwe_bless_conversation_one_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwe_bless_conversation_one_01"
			},
			sound_events_duration = {
				[1.0] = 6.2434167861939
			},
			sound_events = {
				[1.0] = "pwe_bless_conversation_one_01"
			}
		},
		pdr_bless_conversation_twelve_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pdr_bless_conversation_twelve_01"
			},
			sound_events_duration = {
				[1.0] = 3.77308344841
			},
			sound_events = {
				[1.0] = "pdr_bless_conversation_twelve_01"
			}
		},
		pes_bless_conversation_eight_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			localization_strings = {
				[1.0] = "pes_bless_conversation_eight_01"
			},
			sound_events_duration = {
				[1.0] = 3.0960834026337
			},
			sound_events = {
				[1.0] = "pes_bless_conversation_eight_01"
			}
		},
		pwh_wp_bless_conversation_ten_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_bless",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			localization_strings = {
				[1.0] = "pwh_wp_bless_conversation_ten_01"
			},
			sound_events_duration = {
				[1.0] = 2.365416765213
			},
			sound_events = {
				[1.0] = "pwh_wp_bless_conversation_ten_01"
			}
		}
	})
end
