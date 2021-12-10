return function ()
	define_rule({
		name = "pes_gk_woods_conversation_one_01",
		response = "pes_gk_woods_conversation_one_01",
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
				"woods_conversation_one",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_one",
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
		name = "pwe_st_woods_conversation_one_01",
		response = "pwe_st_woods_conversation_one_01",
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
				"pes_gk_woods_conversation_one_01"
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
		name = "pes_gk_woods_conversation_one_02",
		response = "pes_gk_woods_conversation_one_02",
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
				"pwe_st_woods_conversation_one_01"
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
		name = "pwe_st_woods_conversation_one_02",
		response = "pwe_st_woods_conversation_one_02",
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
				"pes_gk_woods_conversation_one_02"
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
		name = "pes_gk_woods_conversation_two_01",
		response = "pes_gk_woods_conversation_two_01",
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
				"woods_conversation_two",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_two",
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
		name = "pwe_st_woods_conversation_two_01",
		response = "pwe_st_woods_conversation_two_01",
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
				"pes_gk_woods_conversation_two_01"
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
		name = "pes_gk_woods_conversation_two_02",
		response = "pes_gk_woods_conversation_two_02",
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
				"pwe_st_woods_conversation_two_01"
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
		name = "pwe_st_woods_conversation_two_02",
		response = "pwe_st_woods_conversation_two_02",
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
				"pes_gk_woods_conversation_two_02"
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
		name = "pdr_de_woods_conversation_three_01",
		response = "pdr_de_woods_conversation_three_01",
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
				"woods_conversation_three",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_three",
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
		name = "pwe_st_woods_conversation_three_01",
		response = "pwe_st_woods_conversation_three_01",
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
				"pdr_de_woods_conversation_three_01"
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
		name = "pdr_de_woods_conversation_three_02",
		response = "pdr_de_woods_conversation_three_02",
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
				"pwe_st_woods_conversation_three_01"
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
		name = "pwe_st_woods_conversation_three_02",
		response = "pwe_st_woods_conversation_three_02",
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
				"pdr_de_woods_conversation_three_02"
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
		name = "pdr_de_woods_conversation_four_01",
		response = "pdr_de_woods_conversation_four_01",
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
				"woods_conversation_four",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_four",
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
		name = "pwe_st_woods_conversation_four_01",
		response = "pwe_st_woods_conversation_four_01",
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
				"pdr_de_woods_conversation_four_01"
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
		name = "pdr_de_woods_conversation_four_02",
		response = "pdr_de_woods_conversation_four_02",
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
				"pwe_st_woods_conversation_four_01"
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
		name = "pwe_st_woods_conversation_four_02",
		response = "pwe_st_woods_conversation_four_02",
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
				"pdr_de_woods_conversation_four_02"
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
		name = "pdr_de_woods_conversation_four_03",
		response = "pdr_de_woods_conversation_four_03",
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
				"pwe_st_woods_conversation_four_02"
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
		name = "pes_woods_conversation_five_01",
		response = "pes_woods_conversation_five_01",
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
				"woods_conversation_five",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_five",
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
		name = "pwe_st_woods_conversation_five_01",
		response = "pwe_st_woods_conversation_five_01",
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
				"pes_woods_conversation_five_01"
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
		name = "pes_woods_conversation_five_02",
		response = "pes_woods_conversation_five_02",
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
				"pwe_st_woods_conversation_five_01"
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
		name = "pwe_st_woods_conversation_five_02",
		response = "pwe_st_woods_conversation_five_02",
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
				"pes_woods_conversation_five_02"
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
		name = "pes_woods_conversation_six_01",
		response = "pes_woods_conversation_six_01",
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
				"woods_conversation_six",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_six",
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
		name = "pwe_st_woods_conversation_six_01",
		response = "pwe_st_woods_conversation_six_01",
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
				"pes_woods_conversation_six_01"
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
		name = "pes_woods_conversation_six_02",
		response = "pes_woods_conversation_six_02",
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
				"pwe_st_woods_conversation_six_01"
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
		name = "pwe_st_woods_conversation_six_02",
		response = "pwe_st_woods_conversation_six_02",
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
				"pes_woods_conversation_six_02"
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
		name = "pes_woods_conversation_six_03",
		response = "pes_woods_conversation_six_03",
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
				"pwe_st_woods_conversation_six_02"
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
		name = "pes_woods_conversation_seven_01",
		response = "pes_woods_conversation_seven_01",
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
				"woods_conversation_seven",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_seven",
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
		name = "pwe_st_woods_conversation_seven_01",
		response = "pwe_st_woods_conversation_seven_01",
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
				"pes_woods_conversation_seven_01"
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
		name = "pes_woods_conversation_seven_02",
		response = "pes_woods_conversation_seven_02",
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
				"pwe_st_woods_conversation_seven_01"
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
		name = "pwe_st_woods_conversation_seven_02",
		response = "pwe_st_woods_conversation_seven_02",
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
				"pes_woods_conversation_seven_02"
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
		name = "pes_woods_conversation_eight_01",
		response = "pes_woods_conversation_eight_01",
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
				"woods_conversation_eight",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_eight",
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
		name = "pwe_st_woods_conversation_eight_01",
		response = "pwe_st_woods_conversation_eight_01",
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
				"pes_woods_conversation_eight_01"
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
		name = "pes_woods_conversation_eight_02",
		response = "pes_woods_conversation_eight_02",
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
				"pwe_st_woods_conversation_eight_01"
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
		name = "pwe_st_woods_conversation_eight_02",
		response = "pwe_st_woods_conversation_eight_02",
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
				"pes_woods_conversation_eight_02"
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
		name = "pes_woods_conversation_eight_03",
		response = "pes_woods_conversation_eight_03",
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
				"pwe_st_woods_conversation_eight_02"
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
		name = "pwe_st_woods_conversation_eight_03",
		response = "pwe_st_woods_conversation_eight_03",
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
				"pes_woods_conversation_eight_03"
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
		name = "pdr_woods_conversation_nine_01",
		response = "pdr_woods_conversation_nine_01",
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
				"woods_conversation_nine",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_nine",
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
		name = "pwe_st_woods_conversation_nine_01",
		response = "pwe_st_woods_conversation_nine_01",
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
				"pdr_woods_conversation_nine_01"
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
		name = "pdr_woods_conversation_nine_02",
		response = "pdr_woods_conversation_nine_02",
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
				"pwe_st_woods_conversation_nine_01"
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
		name = "pwe_st_woods_conversation_nine_02",
		response = "pwe_st_woods_conversation_nine_02",
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
				"pdr_woods_conversation_nine_02"
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
		name = "pdr_woods_conversation_ten_01",
		response = "pdr_woods_conversation_ten_01",
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
				"woods_conversation_ten",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_ten",
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
		name = "pwe_st_woods_conversation_ten_01",
		response = "pwe_st_woods_conversation_ten_01",
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
				"pdr_woods_conversation_ten_01"
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
		name = "pdr_woods_conversation_ten_02",
		response = "pdr_woods_conversation_ten_02",
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
				"pwe_st_woods_conversation_ten_01"
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
		name = "pwe_st_woods_conversation_ten_02",
		response = "pwe_st_woods_conversation_ten_02",
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
				"pdr_woods_conversation_ten_02"
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
		name = "pdr_woods_conversation_eleven_01",
		response = "pdr_woods_conversation_eleven_01",
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
				"woods_conversation_eleven",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_eleven",
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
		name = "pwe_st_woods_conversation_eleven_01",
		response = "pwe_st_woods_conversation_eleven_01",
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
				"pdr_woods_conversation_eleven_01"
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
		name = "pdr_woods_conversation_eleven_02",
		response = "pdr_woods_conversation_eleven_02",
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
				"pwe_st_woods_conversation_eleven_01"
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
		name = "pwe_st_woods_conversation_eleven_02",
		response = "pwe_st_woods_conversation_eleven_02",
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
				"pdr_woods_conversation_eleven_02"
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
		name = "pdr_woods_conversation_eleven_03",
		response = "pdr_woods_conversation_eleven_03",
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
				"pwe_st_woods_conversation_eleven_02"
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
		name = "pwe_st_woods_conversation_eleven_03",
		response = "pwe_st_woods_conversation_eleven_03",
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
				"pdr_woods_conversation_eleven_03"
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
		name = "pdr_woods_conversation_twelve_01",
		response = "pdr_woods_conversation_twelve_01",
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
				"woods_conversation_twelve",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_twelve",
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
		name = "pwe_st_woods_conversation_twelve_01",
		response = "pwe_st_woods_conversation_twelve_01",
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
				"pdr_woods_conversation_twelve_01"
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
		name = "pdr_woods_conversation_twelve_02",
		response = "pdr_woods_conversation_twelve_02",
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
				"pwe_st_woods_conversation_twelve_01"
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
		name = "pwe_st_woods_conversation_twelve_02",
		response = "pwe_st_woods_conversation_twelve_02",
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
				"pdr_woods_conversation_twelve_02"
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
		name = "pdr_woods_conversation_twelve_03",
		response = "pdr_woods_conversation_twelve_03",
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
				"pwe_st_woods_conversation_twelve_02"
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
		name = "pwe_st_woods_conversation_thirteen_01",
		response = "pwe_st_woods_conversation_thirteen_01",
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
				"woods_conversation_thirteen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_thirteen",
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
		name = "pdr_woods_conversation_thirteen_01",
		response = "pdr_woods_conversation_thirteen_01",
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
				"pwe_st_woods_conversation_thirteen_01"
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
		name = "pwe_st_woods_conversation_thirteen_02",
		response = "pwe_st_woods_conversation_thirteen_02",
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
				"pdr_woods_conversation_thirteen_01"
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
		name = "pwe_st_woods_conversation_fourteen_01",
		response = "pwe_st_woods_conversation_fourteen_01",
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
				"woods_conversation_fourteen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_fourteen",
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
		name = "pdr_woods_conversation_fourteen_01",
		response = "pdr_woods_conversation_fourteen_01",
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
				"pwe_st_woods_conversation_fourteen_01"
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
		name = "pwe_st_woods_conversation_fourteen_02",
		response = "pwe_st_woods_conversation_fourteen_02",
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
				"pdr_woods_conversation_fourteen_01"
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
		name = "pdr_woods_conversation_fourteen_02",
		response = "pdr_woods_conversation_fourteen_02",
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
				"pwe_st_woods_conversation_fourteen_02"
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
		name = "pdr_woods_conversation_fifteen_01",
		response = "pdr_woods_conversation_fifteen_01",
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
				"woods_conversation_fifteen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_fifteen",
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
		name = "pwe_st_woods_conversation_fifteen_01",
		response = "pwe_st_woods_conversation_fifteen_01",
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
				"pdr_woods_conversation_fifteen_01"
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
		name = "pdr_woods_conversation_fifteen_02",
		response = "pdr_woods_conversation_fifteen_02",
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
				"pwe_st_woods_conversation_fifteen_01"
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
		name = "pwe_st_woods_conversation_fifteen_02",
		response = "pwe_st_woods_conversation_fifteen_02",
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
				"pdr_woods_conversation_fifteen_02"
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
		name = "pwh_woods_conversation_sixteen_01",
		response = "pwh_woods_conversation_sixteen_01",
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
				"woods_conversation_sixteen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_sixteen",
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
		name = "pwe_st_woods_conversation_sixteen_01",
		response = "pwe_st_woods_conversation_sixteen_01",
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
				"pwh_woods_conversation_sixteen_01"
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
		name = "pwh_woods_conversation_sixteen_02",
		response = "pwh_woods_conversation_sixteen_02",
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
				"pwe_st_woods_conversation_sixteen_01"
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
		name = "pwe_st_woods_conversation_sixteen_02",
		response = "pwe_st_woods_conversation_sixteen_02",
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
				"pwh_woods_conversation_sixteen_02"
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
		name = "pwh_woods_conversation_seventeen_01",
		response = "pwh_woods_conversation_seventeen_01",
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
				"woods_conversation_seventeen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_seventeen",
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
		name = "pwe_st_woods_conversation_seventeen_01",
		response = "pwe_st_woods_conversation_seventeen_01",
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
				"pwh_woods_conversation_seventeen_01"
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
		name = "pwh_woods_conversation_seventeen_02",
		response = "pwh_woods_conversation_seventeen_02",
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
				"pwe_st_woods_conversation_seventeen_01"
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
		name = "pwe_st_woods_conversation_seventeen_02",
		response = "pwe_st_woods_conversation_seventeen_02",
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
				"pwh_woods_conversation_seventeen_02"
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
		name = "pwh_woods_conversation_eighteen_01",
		response = "pwh_woods_conversation_eighteen_01",
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
				"woods_conversation_eighteen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_eighteen",
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
		name = "pwe_st_woods_conversation_eighteen_01",
		response = "pwe_st_woods_conversation_eighteen_01",
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
				"pwh_woods_conversation_eighteen_01"
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
		name = "pwh_woods_conversation_eighteen_02",
		response = "pwh_woods_conversation_eighteen_02",
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
				"pwe_st_woods_conversation_eighteen_01"
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
		name = "pwe_st_woods_conversation_eighteen_02",
		response = "pwe_st_woods_conversation_eighteen_02",
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
				"pwh_woods_conversation_eighteen_02"
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
		name = "pwh_woods_conversation_nineteen_01",
		response = "pwh_woods_conversation_nineteen_01",
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
				"woods_conversation_nineeen",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_nineeen",
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
		name = "pwe_st_woods_conversation_nineteen_01",
		response = "pwe_st_woods_conversation_nineteen_01",
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
				"pwh_woods_conversation_nineteen_01"
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
		name = "pwh_woods_conversation_nineteen_02",
		response = "pwh_woods_conversation_nineteen_02",
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
				"pwe_st_woods_conversation_nineteen_01"
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
		name = "pwe_st_woods_conversation_nineteen_02",
		response = "pwe_st_woods_conversation_nineteen_02",
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
				"pwh_woods_conversation_nineteen_02"
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
		name = "pwh_woods_conversation_nineteen_03",
		response = "pwh_woods_conversation_nineteen_03",
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
				"pwe_st_woods_conversation_nineteen_02"
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
		name = "pwh_woods_conversation_twenty_01",
		response = "pwh_woods_conversation_twenty_01",
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
				"woods_conversation_twenty",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_twenty",
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
		name = "pwe_st_woods_conversation_twenty_01",
		response = "pwe_st_woods_conversation_twenty_01",
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
				"pwh_woods_conversation_twenty_01"
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
		name = "pwh_woods_conversation_twenty_02",
		response = "pwh_woods_conversation_twenty_02",
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
				"pwe_st_woods_conversation_twenty_01"
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
		name = "pwe_st_woods_conversation_twenty_02",
		response = "pwe_st_woods_conversation_twenty_02",
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
				"pwh_woods_conversation_twenty_02"
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
		name = "pbw_woods_conversation_twentyone_01",
		response = "pbw_woods_conversation_twentyone_01",
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
				"woods_conversation_twentyone",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_twentyone",
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
		name = "pwe_st_woods_conversation_twentyone_01",
		response = "pwe_st_woods_conversation_twentyone_01",
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
				"pbw_woods_conversation_twentyone_01"
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
		name = "pbw_woods_conversation_twentyone_02",
		response = "pbw_woods_conversation_twentyone_02",
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
				"pwe_st_woods_conversation_twentyone_01"
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
		name = "pwe_st_woods_conversation_twentyone_02",
		response = "pwe_st_woods_conversation_twentyone_02",
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
				"pbw_woods_conversation_twentyone_02"
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
		name = "pbw_woods_conversation_twentytwo_01",
		response = "pbw_woods_conversation_twentytwo_01",
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
				"woods_conversation_twentytwo",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_twentytwo",
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
		name = "pwe_st_woods_conversation_twentytwo_01",
		response = "pwe_st_woods_conversation_twentytwo_01",
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
				"pbw_woods_conversation_twentytwo_01"
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
		name = "pbw_woods_conversation_twentytwo_02",
		response = "pbw_woods_conversation_twentytwo_02",
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
				"pwe_st_woods_conversation_twentytwo_01"
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
		name = "pbw_woods_conversation_twentythree_01",
		response = "pbw_woods_conversation_twentythree_01",
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
				"woods_conversation_twentythree",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_twentythree",
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
		name = "pwe_st_woods_conversation_twentythree_01",
		response = "pwe_st_woods_conversation_twentythree_01",
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
				"pbw_woods_conversation_twentythree_01"
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
		name = "pbw_woods_conversation_twentythree_02",
		response = "pbw_woods_conversation_twentythree_02",
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
				"pwe_st_woods_conversation_twentythree_01"
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
		name = "pwe_st_woods_conversation_twentythree_02",
		response = "pwe_st_woods_conversation_twentythree_02",
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
				"pbw_woods_conversation_twentythree_02"
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
		name = "pbw_woods_conversation_twentythree_03",
		response = "pbw_woods_conversation_twentythree_03",
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
				"pwe_st_woods_conversation_twentythree_02"
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
		name = "pwe_st_woods_conversation_twentythree_03",
		response = "pwe_st_woods_conversation_twentythree_03",
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
				"pbw_woods_conversation_twentythree_03"
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
		name = "pbw_woods_conversation_twentyfour_01",
		response = "pbw_woods_conversation_twentyfour_01",
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
				"woods_conversation_twentyfour",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_twentyfour",
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
		name = "pwe_st_woods_conversation_twentyfour_01",
		response = "pwe_st_woods_conversation_twentyfour_01",
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
				"pbw_woods_conversation_twentyfour_01"
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
		name = "pbw_woods_conversation_twentyfour_02",
		response = "pbw_woods_conversation_twentyfour_02",
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
				"pwe_st_woods_conversation_twentyfour_01"
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
		name = "pwe_st_woods_conversation_twentyfour_02",
		response = "pwe_st_woods_conversation_twentyfour_02",
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
				"pbw_woods_conversation_twentyfour_02"
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
		name = "pbw_woods_conversation_twentyfive_01",
		response = "pbw_woods_conversation_twentyfive_01",
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
				"woods_conversation_twentyfive",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_twentyfive",
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
		name = "pwe_st_woods_conversation_twentyfive_01",
		response = "pwe_st_woods_conversation_twentyfive_01",
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
				"pbw_woods_conversation_twentyfive_01"
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
		name = "pbw_woods_conversation_twentyfive_02",
		response = "pbw_woods_conversation_twentyfive_02",
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
				"pwe_st_woods_conversation_twentyfive_01"
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
		name = "pwe_st_woods_conversation_twentyfive_02",
		response = "pwe_st_woods_conversation_twentyfive_02",
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
				"pbw_woods_conversation_twentyfive_02"
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
		name = "pbw_woods_conversation_twentysix_01",
		response = "pbw_woods_conversation_twentysix_01",
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
				"witch_hunter",
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
				"woods_conversation_no_elf",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_no_elf",
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
		name = "pwh_woods_conversation_twentysix_01",
		response = "pwh_woods_conversation_twentysix_01",
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
				"pbw_woods_conversation_twentysix_01"
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
		name = "pes_woods_conversation_twentysix_01",
		response = "pes_woods_conversation_twentysix_01",
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
				"pwh_woods_conversation_twentysix_01"
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
		name = "pdr_woods_conversation_twentysix_01",
		response = "pdr_woods_conversation_twentysix_01",
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
				"pes_woods_conversation_twentysix_01"
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
		name = "pwh_woods_conversation_twentysix_02",
		response = "pwh_woods_conversation_twentysix_02",
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
				"pdr_woods_conversation_twentysix_01"
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
		name = "pdr_woods_conversation_twentyseven_01",
		response = "pdr_woods_conversation_twentyseven_01",
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
				"witch_hunter",
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
				"woods_conversation_no_elf",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_no_elf",
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
		name = "pes_woods_conversation_twentyseven_01",
		response = "pes_woods_conversation_twentyseven_01",
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
				"pdr_woods_conversation_twentyseven_01"
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
		name = "pwh_woods_conversation_twentyseven_01",
		response = "pwh_woods_conversation_twentyseven_01",
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
				"pes_woods_conversation_twentyseven_01"
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
		name = "pbw_woods_conversation_twentyseven_01",
		response = "pbw_woods_conversation_twentyseven_01",
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
				"pwh_woods_conversation_twentyseven_01"
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
		name = "pes_woods_conversation_twentyeight_01",
		response = "pes_woods_conversation_twentyeight_01",
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
				"witch_hunter",
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
				"woods_conversation_no_elf",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_no_elf",
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
		name = "pwh_woods_conversation_twentyeight_01",
		response = "pwh_woods_conversation_twentyeight_01",
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
				"pes_woods_conversation_twentyeight_01"
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
		name = "pbw_woods_conversation_twentyeight_01",
		response = "pbw_woods_conversation_twentyeight_01",
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
				"pwh_woods_conversation_twentyeight_01"
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
		name = "pdr_woods_conversation_twentyeight_01",
		response = "pdr_woods_conversation_twentyeight_01",
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
				"pbw_woods_conversation_twentyeight_01"
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
		name = "pes_woods_conversation_twentyeight_02",
		response = "pes_woods_conversation_twentyeight_02",
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
				"pdr_woods_conversation_twentyeight_01"
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
		name = "pwh_woods_conversation_twentynine_01",
		response = "pwh_woods_conversation_twentynine_01",
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
				"witch_hunter"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"witch_hunter"
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
				"woods_conversation_no_elf",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"woods_conversation_no_elf",
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
		name = "pbw_woods_conversation_twentynine_01",
		response = "pbw_woods_conversation_twentynine_01",
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
				"pwh_woods_conversation_twentynine_01"
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
		name = "pwh_woods_conversation_twentynine_02",
		response = "pwh_woods_conversation_twentynine_02",
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
				"pbw_woods_conversation_twentynine_01"
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
		name = "pes_woods_conversation_twentynine_01",
		response = "pes_woods_conversation_twentynine_01",
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
				"pwh_woods_conversation_twentynine_02"
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
		name = "pdr_woods_conversation_twentynine_01",
		response = "pdr_woods_conversation_twentynine_01",
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
				"pes_woods_conversation_twentynine_01"
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
		name = "pwe_st_lullaby_full",
		response = "pwe_st_lullaby_full",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"distant_voices"
			},
			{
				"global_context",
				"wood_elf",
				OP.EQ,
				0
			},
			{
				"global_context",
				"level_time",
				OP.GT,
				1500
			},
			{
				"user_memory",
				"pwe_st_lullaby_full",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"user_memory",
				"pwe_st_lullaby_full",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pwe_st_lullaby_full = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			sound_distance = 30,
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_lullaby_full"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 25.750770568848
			},
			localization_strings = {
				[1.0] = "pwe_st_lullaby_full"
			}
		},
		pdr_woods_conversation_twentynine_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_twentynine_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.8583960533142
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_twentynine_01"
			}
		},
		pwe_st_woods_conversation_twelve_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_twelve_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 6.8540205955505
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_twelve_02"
			}
		},
		pes_woods_conversation_eight_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_woods_conversation_eight_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.1936249732971
			},
			localization_strings = {
				[1.0] = "pes_woods_conversation_eight_02"
			}
		},
		pes_woods_conversation_five_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_woods_conversation_five_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 1.0076667070389
			},
			localization_strings = {
				[1.0] = "pes_woods_conversation_five_02"
			}
		},
		pdr_de_woods_conversation_three_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_de_woods_conversation_three_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 7.1095209121704
			},
			localization_strings = {
				[1.0] = "pdr_de_woods_conversation_three_01"
			}
		},
		pwe_st_woods_conversation_seven_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_seven_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.8607292175293
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_seven_02"
			}
		},
		pes_woods_conversation_twentysix_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_woods_conversation_twentysix_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 6.0025000572205
			},
			localization_strings = {
				[1.0] = "pes_woods_conversation_twentysix_01"
			}
		},
		pwe_st_woods_conversation_twenty_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_twenty_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 8.3498754501343
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_twenty_02"
			}
		},
		pwe_st_woods_conversation_twentythree_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_twentythree_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.0222916603088
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_twentythree_02"
			}
		},
		pdr_woods_conversation_eleven_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_eleven_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.1672291755676
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_eleven_03"
			}
		},
		pbw_woods_conversation_twentysix_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_woods_conversation_twentysix_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 4.7419581413269
			},
			localization_strings = {
				[1.0] = "pbw_woods_conversation_twentysix_01"
			}
		},
		pwe_st_woods_conversation_one_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_one_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.4667291641235
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_one_02"
			}
		},
		pes_woods_conversation_twentynine_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_woods_conversation_twentynine_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.2927916049957
			},
			localization_strings = {
				[1.0] = "pes_woods_conversation_twentynine_01"
			}
		},
		pwh_woods_conversation_twentynine_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_twentynine_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 5.2253956794739
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_twentynine_01"
			}
		},
		pwe_st_woods_conversation_ten_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_ten_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 8.0117082595825
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_ten_01"
			}
		},
		pwh_woods_conversation_eighteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_eighteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.6248333454132
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_eighteen_02"
			}
		},
		pwh_woods_conversation_twentynine_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_twentynine_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.3761458396912
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_twentynine_02"
			}
		},
		pdr_woods_conversation_fifteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_fifteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 3.1250207424164
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_fifteen_02"
			}
		},
		pwe_st_woods_conversation_one_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_one_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.5351877212524
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_one_01"
			}
		},
		pdr_woods_conversation_nine_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_nine_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 6.040479183197
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_nine_01"
			}
		},
		pdr_woods_conversation_nine_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_nine_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.5894165039063
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_nine_02"
			}
		},
		pes_woods_conversation_twentyeight_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_woods_conversation_twentyeight_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.724187374115
			},
			localization_strings = {
				[1.0] = "pes_woods_conversation_twentyeight_02"
			}
		},
		pdr_woods_conversation_twentyeight_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_twentyeight_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 3.1675000190735
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_twentyeight_01"
			}
		},
		pes_woods_conversation_six_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_woods_conversation_six_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 3.1072916984558
			},
			localization_strings = {
				[1.0] = "pes_woods_conversation_six_01"
			}
		},
		pdr_de_woods_conversation_four_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_de_woods_conversation_four_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 3.3904583454132
			},
			localization_strings = {
				[1.0] = "pdr_de_woods_conversation_four_01"
			}
		},
		pwe_st_woods_conversation_twentyfour_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_twentyfour_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 13.850250244141
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_twentyfour_01"
			}
		},
		pbw_woods_conversation_twentynine_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_woods_conversation_twentynine_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 3.6598124504089
			},
			localization_strings = {
				[1.0] = "pbw_woods_conversation_twentynine_01"
			}
		},
		pwh_woods_conversation_twentysix_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_twentysix_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 10.837187767029
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_twentysix_01"
			}
		},
		pdr_woods_conversation_twelve_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_twelve_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 2.9446666240692
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_twelve_01"
			}
		},
		pwh_woods_conversation_twentyeight_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_twentyeight_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.3414793014526
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_twentyeight_01"
			}
		},
		pwh_woods_conversation_sixteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_sixteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 3.974687576294
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_sixteen_02"
			}
		},
		pbw_woods_conversation_twentyseven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_woods_conversation_twentyseven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 8.2422294616699
			},
			localization_strings = {
				[1.0] = "pbw_woods_conversation_twentyseven_01"
			}
		},
		pdr_woods_conversation_fourteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_fourteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.1583542823792
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_fourteen_01"
			}
		},
		pbw_woods_conversation_twentythree_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_woods_conversation_twentythree_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 3.7586667537689
			},
			localization_strings = {
				[1.0] = "pbw_woods_conversation_twentythree_02"
			}
		},
		pwh_woods_conversation_twentyseven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_twentyseven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.8516249656677
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_twentyseven_01"
			}
		},
		pes_woods_conversation_twentyseven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_woods_conversation_twentyseven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 6.890625
			},
			localization_strings = {
				[1.0] = "pes_woods_conversation_twentyseven_01"
			}
		},
		pdr_woods_conversation_twentyseven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_twentyseven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 2.6492290496826
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_twentyseven_01"
			}
		},
		pbw_woods_conversation_twentyone_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_woods_conversation_twentyone_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.447083234787
			},
			localization_strings = {
				[1.0] = "pbw_woods_conversation_twentyone_02"
			}
		},
		pes_woods_conversation_five_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_woods_conversation_five_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 6.7310209274292
			},
			localization_strings = {
				[1.0] = "pes_woods_conversation_five_01"
			}
		},
		pdr_de_woods_conversation_four_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_de_woods_conversation_four_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 8.0264377593994
			},
			localization_strings = {
				[1.0] = "pdr_de_woods_conversation_four_03"
			}
		},
		pwe_st_woods_conversation_fifteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_fifteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 11.014833450317
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_fifteen_01"
			}
		},
		pwe_st_woods_conversation_eighteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_eighteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.7369999885559
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_eighteen_02"
			}
		},
		pdr_woods_conversation_twentysix_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_twentysix_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 3.302812576294
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_twentysix_01"
			}
		},
		pdr_de_woods_conversation_three_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_de_woods_conversation_three_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 6.5318331718445
			},
			localization_strings = {
				[1.0] = "pdr_de_woods_conversation_three_02"
			}
		},
		pwe_st_woods_conversation_eleven_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_eleven_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.0048959255219
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_eleven_02"
			}
		},
		pdr_woods_conversation_thirteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_thirteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 1.553750038147
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_thirteen_01"
			}
		},
		pwe_st_woods_conversation_twentyfive_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_twentyfive_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 9.0924167633057
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_twentyfive_02"
			}
		},
		pwh_woods_conversation_nineteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_nineteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.3171043395996
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_nineteen_02"
			}
		},
		pdr_woods_conversation_ten_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_ten_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.4997081756592
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_ten_02"
			}
		},
		pwh_woods_conversation_twenty_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_twenty_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.113041639328
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_twenty_02"
			}
		},
		pwe_st_woods_conversation_twentyfour_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_twentyfour_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.7014999389648
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_twentyfour_02"
			}
		},
		pbw_woods_conversation_twentyfive_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_woods_conversation_twentyfive_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.3591251373291
			},
			localization_strings = {
				[1.0] = "pbw_woods_conversation_twentyfive_02"
			}
		},
		pdr_woods_conversation_fourteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_fourteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 3.0370833873749
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_fourteen_02"
			}
		},
		pwe_st_woods_conversation_twentytwo_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_twentytwo_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 1.3124582767487
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_twentytwo_01"
			}
		},
		pwh_woods_conversation_seventeen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_seventeen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.4798541069031
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_seventeen_02"
			}
		},
		pwe_st_woods_conversation_four_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_four_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 7.8962497711182
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_four_02"
			}
		},
		pwe_st_woods_conversation_two_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_two_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 10.363145828247
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_two_01"
			}
		},
		pbw_woods_conversation_twentyfour_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_woods_conversation_twentyfour_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 1.8613749742508
			},
			localization_strings = {
				[1.0] = "pbw_woods_conversation_twentyfour_02"
			}
		},
		pwe_st_woods_conversation_thirteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_thirteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 9.2917289733887
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_thirteen_01"
			}
		},
		pdr_woods_conversation_ten_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_ten_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 3.2143542766571
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_ten_01"
			}
		},
		pwe_st_woods_conversation_eight_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_eight_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 3.8123126029968
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_eight_01"
			}
		},
		pbw_woods_conversation_twentyfour_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_woods_conversation_twentyfour_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 4.7118334770203
			},
			localization_strings = {
				[1.0] = "pbw_woods_conversation_twentyfour_01"
			}
		},
		pwe_st_woods_conversation_twentythree_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_twentythree_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 9.542854309082
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_twentythree_03"
			}
		},
		pbw_woods_conversation_twentythree_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_woods_conversation_twentythree_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 6.9450206756592
			},
			localization_strings = {
				[1.0] = "pbw_woods_conversation_twentythree_03"
			}
		},
		pwe_st_woods_conversation_nineteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_nineteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.8227081298828
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_nineteen_01"
			}
		},
		pwe_st_woods_conversation_twelve_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_twelve_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 3.5805625915527
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_twelve_01"
			}
		},
		pwe_st_woods_conversation_eight_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_eight_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 8.3463954925537
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_eight_02"
			}
		},
		pdr_woods_conversation_twelve_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_twelve_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.5810208320618
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_twelve_03"
			}
		},
		pbw_woods_conversation_twentythree_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_woods_conversation_twentythree_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 2.7880208492279
			},
			localization_strings = {
				[1.0] = "pbw_woods_conversation_twentythree_01"
			}
		},
		pwe_st_woods_conversation_ten_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_ten_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 1.4189583063126
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_ten_02"
			}
		},
		pwe_st_woods_conversation_two_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_two_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.6217918395996
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_two_02"
			}
		},
		pwe_st_woods_conversation_eight_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_eight_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.1943957805634
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_eight_03"
			}
		},
		pdr_woods_conversation_eleven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_eleven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 3.5982291698456
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_eleven_01"
			}
		},
		pes_gk_woods_conversation_two_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_gk_woods_conversation_two_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.8981251716614
			},
			localization_strings = {
				[1.0] = "pes_gk_woods_conversation_two_02"
			}
		},
		pbw_woods_conversation_twentytwo_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_woods_conversation_twentytwo_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 5.5583958625794
			},
			localization_strings = {
				[1.0] = "pbw_woods_conversation_twentytwo_01"
			}
		},
		pwe_st_woods_conversation_five_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_five_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 1.4894791841507
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_five_02"
			}
		},
		pwe_st_woods_conversation_twentyone_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_twentyone_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 7.7280206680298
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_twentyone_02"
			}
		},
		pes_woods_conversation_six_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_woods_conversation_six_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 1.778520822525
			},
			localization_strings = {
				[1.0] = "pes_woods_conversation_six_03"
			}
		},
		pwe_st_woods_conversation_fourteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_fourteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 3.2710208892822
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_fourteen_01"
			}
		},
		pes_gk_woods_conversation_one_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_gk_woods_conversation_one_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 6.6810832023621
			},
			localization_strings = {
				[1.0] = "pes_gk_woods_conversation_one_01"
			}
		},
		pwe_st_woods_conversation_six_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_six_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.4885625839233
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_six_01"
			}
		},
		pwe_st_woods_conversation_twenty_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_twenty_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.7306876182556
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_twenty_01"
			}
		},
		pdr_woods_conversation_eleven_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_eleven_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 1.735687494278
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_eleven_02"
			}
		},
		pwh_woods_conversation_twenty_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_twenty_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 5.4894165992737
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_twenty_01"
			}
		},
		pwh_woods_conversation_nineteen_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_nineteen_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.899854183197
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_nineteen_03"
			}
		},
		pwe_st_woods_conversation_nineteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_nineteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 7.5408749580383
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_nineteen_02"
			}
		},
		pwe_st_woods_conversation_fifteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_fifteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.6185417175293
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_fifteen_02"
			}
		},
		pdr_de_woods_conversation_four_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_de_woods_conversation_four_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 6.2716875076294
			},
			localization_strings = {
				[1.0] = "pdr_de_woods_conversation_four_02"
			}
		},
		pwe_st_woods_conversation_twentythree_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_twentythree_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.8555626869202
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_twentythree_01"
			}
		},
		pwe_st_woods_conversation_twentyfive_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_twentyfive_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 3.0193123817444
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_twentyfive_01"
			}
		},
		pwh_woods_conversation_twentysix_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_twentysix_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.3541874885559
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_twentysix_02"
			}
		},
		pes_gk_woods_conversation_two_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_gk_woods_conversation_two_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 7.5194373130798
			},
			localization_strings = {
				[1.0] = "pes_gk_woods_conversation_two_01"
			}
		},
		pwh_woods_conversation_eighteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_eighteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 8.5363960266113
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_eighteen_01"
			}
		},
		pwe_st_woods_conversation_five_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_five_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 8.9026250839233
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_five_01"
			}
		},
		pbw_woods_conversation_twentyfive_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_woods_conversation_twentyfive_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 7.0784792900085
			},
			localization_strings = {
				[1.0] = "pbw_woods_conversation_twentyfive_01"
			}
		},
		pwe_st_woods_conversation_six_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_six_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.3573126792908
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_six_02"
			}
		},
		pwe_st_woods_conversation_seventeen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_seventeen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.950749874115
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_seventeen_01"
			}
		},
		pwe_st_woods_conversation_three_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_three_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 6.1135206222534
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_three_01"
			}
		},
		pdr_woods_conversation_fifteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_fifteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 9.0372495651245
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_fifteen_01"
			}
		},
		pes_woods_conversation_eight_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_woods_conversation_eight_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.1400418281555
			},
			localization_strings = {
				[1.0] = "pes_woods_conversation_eight_03"
			}
		},
		pwe_st_woods_conversation_nine_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_nine_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 1.4189583063126
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_nine_02"
			}
		},
		pwe_st_woods_conversation_nine_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_nine_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.6746873855591
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_nine_01"
			}
		},
		pwe_st_woods_conversation_sixteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_sixteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 6.3600625991821
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_sixteen_02"
			}
		},
		pwe_st_woods_conversation_eleven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_eleven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.3527083396912
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_eleven_01"
			}
		},
		pes_woods_conversation_twentyeight_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_woods_conversation_twentyeight_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 2.3159999847412
			},
			localization_strings = {
				[1.0] = "pes_woods_conversation_twentyeight_01"
			}
		},
		pwe_st_woods_conversation_sixteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_sixteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.1895833015442
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_sixteen_01"
			}
		},
		pwe_st_woods_conversation_thirteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_thirteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.7106456756592
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_thirteen_02"
			}
		},
		pdr_woods_conversation_twelve_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pdr_woods_conversation_twelve_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 9.6448335647583
			},
			localization_strings = {
				[1.0] = "pdr_woods_conversation_twelve_02"
			}
		},
		pbw_woods_conversation_twentyeight_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_woods_conversation_twentyeight_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 3.2229375839233
			},
			localization_strings = {
				[1.0] = "pbw_woods_conversation_twentyeight_01"
			}
		},
		pwh_woods_conversation_seventeen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_seventeen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 6.3101043701172
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_seventeen_01"
			}
		},
		pbw_woods_conversation_twentytwo_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_woods_conversation_twentytwo_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 7.6355414390564
			},
			localization_strings = {
				[1.0] = "pbw_woods_conversation_twentytwo_02"
			}
		},
		pbw_woods_conversation_twentyone_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pbw_woods_conversation_twentyone_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 5.9022083282471
			},
			localization_strings = {
				[1.0] = "pbw_woods_conversation_twentyone_01"
			}
		},
		pwh_woods_conversation_nineteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_nineteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 10.194458007813
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_nineteen_01"
			}
		},
		pes_gk_woods_conversation_one_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_gk_woods_conversation_one_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.1367502212524
			},
			localization_strings = {
				[1.0] = "pes_gk_woods_conversation_one_02"
			}
		},
		pwe_st_woods_conversation_fourteen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_fourteen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 8.0805835723877
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_fourteen_02"
			}
		},
		pwe_st_woods_conversation_twentyone_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_twentyone_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 1.3881249427795
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_twentyone_01"
			}
		},
		pwe_st_woods_conversation_seventeen_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_seventeen_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 6.4578123092651
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_seventeen_02"
			}
		},
		pwh_woods_conversation_sixteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwh_woods_conversation_sixteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 9.3411045074463
			},
			localization_strings = {
				[1.0] = "pwh_woods_conversation_sixteen_01"
			}
		},
		pwe_st_woods_conversation_eleven_03 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_eleven_03"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 5.0545001029968
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_eleven_03"
			}
		},
		pes_woods_conversation_eight_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_woods_conversation_eight_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 6.3762497901917
			},
			localization_strings = {
				[1.0] = "pes_woods_conversation_eight_01"
			}
		},
		pwe_st_woods_conversation_seven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_seven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.5082082748413
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_seven_01"
			}
		},
		pwe_st_woods_conversation_eighteen_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_eighteen_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 10.481645584106
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_eighteen_01"
			}
		},
		pes_woods_conversation_seven_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_woods_conversation_seven_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.0822291374206
			},
			localization_strings = {
				[1.0] = "pes_woods_conversation_seven_02"
			}
		},
		pwe_st_woods_conversation_four_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_four_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 10.720333099365
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_four_01"
			}
		},
		pes_woods_conversation_six_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_woods_conversation_six_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 2.4635624885559
			},
			localization_strings = {
				[1.0] = "pes_woods_conversation_six_02"
			}
		},
		pes_woods_conversation_seven_01 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pes_woods_conversation_seven_01"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_neutral"
			},
			sound_events_duration = {
				[1.0] = 3.9776458740234
			},
			localization_strings = {
				[1.0] = "pes_woods_conversation_seven_01"
			}
		},
		pwe_st_woods_conversation_three_02 = {
			sound_events_n = 1,
			face_animations_n = 1,
			database = "dlc_woods",
			category = "story_talk_keep",
			dialogue_animations_n = 1,
			sound_events = {
				[1.0] = "pwe_st_woods_conversation_three_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk"
			},
			face_animations = {
				[1.0] = "face_calm"
			},
			sound_events_duration = {
				[1.0] = 4.2234582901001
			},
			localization_strings = {
				[1.0] = "pwe_st_woods_conversation_three_02"
			}
		}
	})
end
