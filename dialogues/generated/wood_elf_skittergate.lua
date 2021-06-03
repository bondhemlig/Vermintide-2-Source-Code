return function ()
	define_rule({
		name = "pwe_level_skittergate_elevator_01",
		response = "pwe_level_skittergate_elevator_01",
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
				"skittergate_elevator"
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
				"faction_memory",
				"level_skittergate_elevator",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_elevator",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_crater_01",
		response = "pwe_level_skittergate_crater_01",
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
				"skittergate_crater"
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
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_skittergate_crater",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_crater",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_cave_entrance_01",
		response = "pwe_level_skittergate_cave_entrance_01",
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
				"skittergate_cave_entrance"
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
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_skittergate_cave_entrance",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_cave_entrance",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_skittergate_found_01",
		response = "pwe_level_skittergate_skittergate_found_01",
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
				"skittergate_skittergate_found"
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
				"faction_memory",
				"level_skittergate_skittergate_found",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_skittergate_found",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_vacated_area_01",
		response = "pwe_level_skittergate_vacated_area_01",
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
				"skittergate_vacated_area"
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
				"faction_memory",
				"level_skittergate_vacated_area",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_vacated_area",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_activate_gate_01",
		response = "pwe_level_skittergate_activate_gate_01",
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
				"skittergate_activate_gate_helmgart"
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
				"faction_memory",
				"skittergate_activate_gate_helmgart",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_activate_gate_helmgart",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_gate_activated_01",
		response = "pwe_level_skittergate_gate_activated_01",
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
				"skittergate_gate_activated"
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
				"faction_memory",
				"level_skittergate_gate_activated",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_gate_activated",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_alone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_enter_gate_01",
		response = "pwe_level_skittergate_enter_gate_01",
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
				"skittergate_enter_gate"
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
				"faction_memory",
				"level_skittergate_enter_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_enter_gate",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_alone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_arrive_01",
		response = "pwe_level_skittergate_arrive_01",
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
				"skittergate_arrive"
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
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_skittergate_arrive",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_arrive",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_welcome_to_norsca_01",
		response = "pwe_level_skittergate_welcome_to_norsca_01",
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
				"skittergate_welcome_to_norsca"
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
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"level_skittergate_welcome_to_norsca",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_welcome_to_norsca",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_start_up_gate_01",
		response = "pwe_level_skittergate_start_up_gate_01",
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
				"skittergate_start_up_gate"
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
				"faction_memory",
				"level_skittergate_start_up_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_start_up_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_vista_01",
		response = "pwe_level_skittergate_vista_01",
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
				"skittergate_vista"
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
				"faction_memory",
				"level_skittergate_vista",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_vista",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_contol_panel_01",
		response = "pwe_level_skittergate_contol_panel_01",
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
				"skittergate_contol_panel"
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
				"faction_memory",
				"level_skittergate_contol_panel",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_contol_panel",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_spotting_docks_01",
		response = "pwe_level_skittergate_spotting_docks_01",
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
				"skittergate_spotting_docks"
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
				"faction_memory",
				"skittergate_spotting_docks",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_spotting_docks",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_ships_01",
		response = "pwe_level_skittergate_ships_01",
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
				"skittergate_ships"
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
				"enemies_close",
				OP.EQ,
				0
			},
			{
				"faction_memory",
				"skittergate_ships",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_ships",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_docks_gate_01",
		response = "pwe_level_skittergate_docks_gate_01",
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
				"skittergate_docks_gate"
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
				"faction_memory",
				"skittergate_docks_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_docks_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_searching_gatekeeper_01",
		response = "pwe_level_skittergate_searching_gatekeeper_01",
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
				"skittergate_searching_gatekeeper"
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
				"faction_memory",
				"skittergate_searching_gatekeeper",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_searching_gatekeeper",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_gatekeeper_appear_01",
		response = "pwe_level_skittergate_gatekeeper_appear_01",
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
				"skittergate_gatekeeper_appear"
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
				"faction_memory",
				"skittergate_gatekeeper_appear",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_gatekeeper_appear",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_get_back_to_gate_01",
		response = "pwe_level_skittergate_get_back_to_gate_01",
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
				"skittergate_get_back_to_gate"
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
				"faction_memory",
				"skittergate_get_back_to_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_get_back_to_gate",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_get_down_to_the_cooling_01",
		response = "pwe_level_skittergate_get_down_to_the_cooling_01",
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
				"skittergate_get_down_to_the_cooling"
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
				"faction_memory",
				"skittergate_get_down_to_the_cooling",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_get_down_to_the_cooling",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_sabotage_cooling_01",
		response = "pwe_level_skittergate_sabotage_cooling_01",
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
				"skittergate_sabotage_cooling"
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
				"faction_memory",
				"skittergate_sabotage_cooling",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_sabotage_cooling",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_run_for_the_gate_01",
		response = "pwe_level_skittergate_run_for_the_gate_01",
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
				"skittergate_run_for_the_gate"
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
				"faction_memory",
				"skittergate_run_for_the_gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_run_for_the_gate",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_alone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_through_the_gate_01",
		response = "pwe_level_skittergate_through_the_gate_01",
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
				"skittergate_through the gate"
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
				"faction_memory",
				"skittergate_through the gate",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_through the gate",
				OP.ADD,
				1
			},
			{
				"faction_memory",
				"time_since_alone",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_back_home_01",
		response = "pwe_level_skittergate_back_home_01",
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
				"skittergate_back_home"
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
				"faction_memory",
				"skittergate_back_home",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_back_home",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_dead_seer_01",
		response = "pwe_level_skittergate_dead_seer_01",
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
				"skittergate_dead_seer"
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
				"faction_memory",
				"skittergate_dead_seer",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_dead_seer",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_BOOM_01",
		response = "pwe_level_skittergate_BOOM_01",
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
				"skittergate_BOOM"
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
				"faction_memory",
				"skittergate_BOOM",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_BOOM",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_leave_01",
		response = "pwe_level_skittergate_leave_01",
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
				"skittergate_leave"
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
				"faction_memory",
				"skittergate_leave",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_leave",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_tunnel_collapses_01",
		response = "pwe_level_skittergate_tunnel_collapses_01",
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
				"skittergate_tunnel_collapses"
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
				"faction_memory",
				"skittergate_tunnel_collapses",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_tunnel_collapses",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_skittergate_intro_a",
		response = "pwe_skittergate_intro_a",
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
				"skittergate_intro_a"
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
				"faction_memory",
				"skittergate_intro_a",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_intro_a",
				OP.ADD,
				1
			}
		}
	})
	define_rule({
		name = "pwe_skittergate_intro_b",
		response = "pwe_skittergate_intro_b",
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
				"skittergate_intro_a"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"skittergate_intro_b",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_intro_b",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_skittergate_intro_c",
		response = "pwe_skittergate_intro_c",
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
				"skittergate_intro_c"
			},
			{
				"user_context",
				"player_profile",
				OP.EQ,
				"wood_elf"
			},
			{
				"faction_memory",
				"skittergate_intro_c",
				OP.TIMEDIFF,
				OP.GT,
				1
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_intro_c",
				OP.TIMESET
			}
		}
	})
	define_rule({
		response = "pwe_level_skittergate_rasknitt_gate_reply",
		name = "pwe_level_skittergate_rasknitt_gate_reply",
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
				"egs_level_skittergate_rasknitt_calls_mount_intro"
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
			}
		}
	})
	define_rule({
		response = "pwe_level_skittergate_rasknitt_dismounted_one",
		name = "pwe_level_skittergate_rasknitt_dismounted_one",
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
				"egs_level_skittergate_rasknitt_dismounted"
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
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_rasknitt_death_rattler_invulnerable",
		response = "pwe_level_skittergate_rasknitt_death_rattler_invulnerable",
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
				"egs_level_skittergate_rasknitt_on_stormfiend"
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
				"faction_memory",
				"rattler_invulnerable",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"rattler_invulnerable",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_rasknitt_interrupt_and_focus",
		response = "pwe_level_skittergate_rasknitt_interrupt_and_focus",
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
				"egs_level_skittergate_teleport_away"
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
				"faction_memory",
				"interrupt_and_focus",
				OP.TIMEDIFF,
				OP.GT,
				300
			}
		},
		on_done = {
			{
				"faction_memory",
				"interrupt_and_focus",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_rasknitt_stormfiend_dead",
		response = "pwe_level_skittergate_rasknitt_stormfiend_dead",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_kill"
			},
			{
				"query_context",
				"killed_type",
				OP.EQ,
				"skaven_stormfiend_boss"
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
				"faction_memory",
				"rasknitt_stormfiend_dead",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"rasknitt_stormfiend_dead",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_dead_seer",
		response = "pwe_level_skittergate_dead_seer",
		criterias = {
			{
				"query_context",
				"concept",
				OP.EQ,
				"enemy_kill"
			},
			{
				"query_context",
				"killed_type",
				OP.EQ,
				"skaven_grey_seer"
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
				"faction_memory",
				"skittergate_dead_seer",
				OP.TIMEDIFF,
				OP.GT,
				3
			}
		},
		on_done = {
			{
				"faction_memory",
				"skittergate_dead_seer",
				OP.TIMESET
			}
		}
	})
	define_rule({
		name = "pwe_level_skittergate_activate_gate_01a",
		response = "pwe_level_skittergate_activate_gate_01a",
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
				"skittergate_activate_gate_norsca"
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
				"faction_memory",
				"level_skittergate_activate_gate_norsca",
				OP.EQ,
				0
			}
		},
		on_done = {
			{
				"faction_memory",
				"level_skittergate_activate_gate_norsca",
				OP.ADD,
				1
			}
		}
	})
	add_dialogues({
		pwe_level_skittergate_activate_gate_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				3.530770778656,
				4.0343956947327,
				6.9089164733887,
				4.0415835380554
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_activate_gate_01",
				"pwe_level_skittergate_activate_gate_02",
				"pwe_level_skittergate_activate_gate_03",
				"pwe_level_skittergate_activate_gate_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_activate_gate_01",
				"pwe_level_skittergate_activate_gate_02",
				"pwe_level_skittergate_activate_gate_03",
				"pwe_level_skittergate_activate_gate_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_rasknitt_gate_reply = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "player_alerts_boss",
			dialogue_animations_n = 2,
			sound_events_duration = {
				[1.0] = 4.5520000457764,
				[2.0] = 7.4251666069031
			},
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pwe_level_skittergate_rasknitt_gate_reply_01",
				[2.0] = "pwe_level_skittergate_rasknitt_gate_reply_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events = {
				[1.0] = "pwe_level_skittergate_rasknitt_gate_reply_01",
				[2.0] = "pwe_level_skittergate_rasknitt_gate_reply_02"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			}
		},
		pwe_level_skittergate_dead_seer_01 = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events_duration = {
				[1.0] = 14.731729507446,
				[2.0] = 17.755792617798
			},
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pwe_level_skittergate_dead_seer_01",
				[2.0] = "pwe_level_skittergate_dead_seer_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_shout",
				[2.0] = "dialogue_shout"
			},
			sound_events = {
				[1.0] = "pwe_level_skittergate_dead_seer_01",
				[2.0] = "pwe_level_skittergate_dead_seer_02"
			},
			face_animations = {
				[1.0] = "face_fear",
				[2.0] = "face_fear"
			}
		},
		pwe_level_skittergate_rasknitt_dismounted_one = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "player_alerts_boss",
			dialogue_animations_n = 4,
			sound_events_duration = {
				4.8721251487732,
				3.6378437280655,
				7.8361248970032,
				3.467791557312
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_rasknitt_dismounted_one_01",
				"pwe_level_skittergate_rasknitt_dismounted_one_02",
				"pwe_level_skittergate_rasknitt_dismounted_one_03",
				"pwe_level_skittergate_rasknitt_dismounted_one_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_rasknitt_dismounted_one_01",
				"pwe_level_skittergate_rasknitt_dismounted_one_02",
				"pwe_level_skittergate_rasknitt_dismounted_one_03",
				"pwe_level_skittergate_rasknitt_dismounted_one_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			}
		},
		pwe_level_skittergate_welcome_to_norsca_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				4.6043543815613,
				5.8741040229797,
				5.6520833969116,
				5.4902081489563
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_welcome_to_norsca_01",
				"pwe_level_skittergate_welcome_to_norsca_02",
				"pwe_level_skittergate_welcome_to_norsca_03",
				"pwe_level_skittergate_welcome_to_norsca_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_welcome_to_norsca_01",
				"pwe_level_skittergate_welcome_to_norsca_02",
				"pwe_level_skittergate_welcome_to_norsca_03",
				"pwe_level_skittergate_welcome_to_norsca_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_leave_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				3.3872916698456,
				4.7583541870117,
				4.0401873588562,
				5.3488750457764
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_leave_01",
				"pwe_level_skittergate_leave_02",
				"pwe_level_skittergate_leave_03",
				"pwe_level_skittergate_leave_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_leave_01",
				"pwe_level_skittergate_leave_02",
				"pwe_level_skittergate_leave_03",
				"pwe_level_skittergate_leave_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_vista_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				6.8041667938232,
				4.0459063053131,
				5.3178541660309,
				6.9822292327881
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_vista_01",
				"pwe_level_skittergate_vista_02",
				"pwe_level_skittergate_vista_03",
				"pwe_level_skittergate_vista_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_vista_01",
				"pwe_level_skittergate_vista_02",
				"pwe_level_skittergate_vista_03",
				"pwe_level_skittergate_vista_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_spotting_docks_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				5.4370832443237,
				8.9299373626709,
				2.9046250581741,
				7.5680623054504
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_spotting_docks_01",
				"pwe_level_skittergate_spotting_docks_02",
				"pwe_level_skittergate_spotting_docks_03",
				"pwe_level_skittergate_spotting_docks_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_spotting_docks_01",
				"pwe_level_skittergate_spotting_docks_02",
				"pwe_level_skittergate_spotting_docks_03",
				"pwe_level_skittergate_spotting_docks_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_skittergate_intro_b = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events_duration = {
				[1.0] = 8.3041038513184,
				[2.0] = 7.4443335533142
			},
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pwe_skittergate_intro_b_01",
				[2.0] = "pwe_skittergate_intro_b_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			sound_events = {
				[1.0] = "pwe_skittergate_intro_b_01",
				[2.0] = "pwe_skittergate_intro_b_02"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			}
		},
		pwe_level_skittergate_docks_gate_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				3.6293332576752,
				6.6352291107178,
				5.2124581336975,
				5.1118330955505
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_docks_gate_01",
				"pwe_level_skittergate_docks_gate_02",
				"pwe_level_skittergate_docks_gate_03",
				"pwe_level_skittergate_docks_gate_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_docks_gate_01",
				"pwe_level_skittergate_docks_gate_02",
				"pwe_level_skittergate_docks_gate_03",
				"pwe_level_skittergate_docks_gate_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_tunnel_collapses_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				6.1988959312439,
				4.3480625152588,
				4.4272294044495,
				6.6595001220703
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_tunnel_collapses_01",
				"pwe_level_skittergate_tunnel_collapses_02",
				"pwe_level_skittergate_tunnel_collapses_03",
				"pwe_level_skittergate_tunnel_collapses_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_tunnel_collapses_01",
				"pwe_level_skittergate_tunnel_collapses_02",
				"pwe_level_skittergate_tunnel_collapses_03",
				"pwe_level_skittergate_tunnel_collapses_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_sabotage_cooling_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				6.1003956794739,
				4.3173749446869,
				5.3220415115356,
				4.0997812747955
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_sabotage_cooling_01",
				"pwe_level_skittergate_sabotage_cooling_02",
				"pwe_level_skittergate_sabotage_cooling_03",
				"pwe_level_skittergate_sabotage_cooling_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_sabotage_cooling_01",
				"pwe_level_skittergate_sabotage_cooling_02",
				"pwe_level_skittergate_sabotage_cooling_03",
				"pwe_level_skittergate_sabotage_cooling_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_run_for_the_gate_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				3.1113750338554,
				4.8449583053589,
				2.397979259491,
				3.3806457519531
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_run_for_the_gate_01",
				"pwe_level_skittergate_run_for_the_gate_02",
				"pwe_level_skittergate_run_for_the_gate_03",
				"pwe_level_skittergate_run_for_the_gate_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_run_for_the_gate_01",
				"pwe_level_skittergate_run_for_the_gate_02",
				"pwe_level_skittergate_run_for_the_gate_03",
				"pwe_level_skittergate_run_for_the_gate_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_skittergate_found_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				2.6228749752045,
				2.4307084083557,
				2.0288854241371,
				6.272500038147
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_skittergate_found_01",
				"pwe_level_skittergate_skittergate_found_02",
				"pwe_level_skittergate_skittergate_found_03",
				"pwe_level_skittergate_skittergate_found_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_skittergate_found_01",
				"pwe_level_skittergate_skittergate_found_02",
				"pwe_level_skittergate_skittergate_found_03",
				"pwe_level_skittergate_skittergate_found_04"
			},
			face_animations = {
				"face_angry",
				"face_angry",
				"face_angry",
				"face_angry"
			}
		},
		pwe_skittergate_intro_c = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events_duration = {
				[1.0] = 4.8842916488647,
				[2.0] = 7.3324584960938
			},
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pwe_skittergate_intro_c_01",
				[2.0] = "pwe_skittergate_intro_c_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			sound_events = {
				[1.0] = "pwe_skittergate_intro_c_01",
				[2.0] = "pwe_skittergate_intro_c_02"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			}
		},
		pwe_level_skittergate_dead_seer = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "player_alerts_boss",
			dialogue_animations_n = 2,
			sound_events_duration = {
				[1.0] = 14.731729507446,
				[2.0] = 17.755792617798
			},
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pwe_level_skittergate_dead_seer_01",
				[2.0] = "pwe_level_skittergate_dead_seer_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			sound_events = {
				[1.0] = "pwe_level_skittergate_dead_seer_01",
				[2.0] = "pwe_level_skittergate_dead_seer_02"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			}
		},
		pwe_level_skittergate_rasknitt_death_rattler_invulnerable = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "player_alerts_boss",
			dialogue_animations_n = 4,
			sound_events_duration = {
				2.8425624370575,
				3.4431353807449,
				3.4602291584015,
				3.42933344841
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_rasknitt_death_rattler_invulnerable_01",
				"pwe_level_skittergate_rasknitt_death_rattler_invulnerable_02",
				"pwe_level_skittergate_rasknitt_death_rattler_invulnerable_03",
				"pwe_level_skittergate_rasknitt_death_rattler_invulnerable_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_rasknitt_death_rattler_invulnerable_01",
				"pwe_level_skittergate_rasknitt_death_rattler_invulnerable_02",
				"pwe_level_skittergate_rasknitt_death_rattler_invulnerable_03",
				"pwe_level_skittergate_rasknitt_death_rattler_invulnerable_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			}
		},
		pwe_level_skittergate_crater_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				4.8773331642151,
				5.3016247749329,
				6.5595831871033,
				5.8561458587647
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_crater_01",
				"pwe_level_skittergate_crater_02",
				"pwe_level_skittergate_crater_03",
				"pwe_level_skittergate_crater_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events = {
				"pwe_level_skittergate_crater_01",
				"pwe_level_skittergate_crater_02",
				"pwe_level_skittergate_crater_03",
				"pwe_level_skittergate_crater_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			}
		},
		pwe_level_skittergate_gate_activated_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				3.0686457157135,
				1.6064583063126,
				3.994437456131,
				4.2634372711182
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_gate_activated_01",
				"pwe_level_skittergate_gate_activated_02",
				"pwe_level_skittergate_gate_activated_03",
				"pwe_level_skittergate_gate_activated_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_gate_activated_01",
				"pwe_level_skittergate_gate_activated_02",
				"pwe_level_skittergate_gate_activated_03",
				"pwe_level_skittergate_gate_activated_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_back_home_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				5.992687702179,
				6.4027709960938,
				5.1062917709351,
				6.9180417060852
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_back_home_01",
				"pwe_level_skittergate_back_home_02",
				"pwe_level_skittergate_back_home_03",
				"pwe_level_skittergate_back_home_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_back_home_01",
				"pwe_level_skittergate_back_home_02",
				"pwe_level_skittergate_back_home_03",
				"pwe_level_skittergate_back_home_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_enter_gate_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				3.4597916603088,
				4.6157083511353,
				6.7666873931885,
				6.657666683197
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_enter_gate_01",
				"pwe_level_skittergate_enter_gate_02",
				"pwe_level_skittergate_enter_gate_03",
				"pwe_level_skittergate_enter_gate_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_enter_gate_01",
				"pwe_level_skittergate_enter_gate_02",
				"pwe_level_skittergate_enter_gate_03",
				"pwe_level_skittergate_enter_gate_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_vacated_area_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				4.3811039924622,
				7.5788331031799,
				8.3506669998169,
				6.8857498168945
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_vacated_area_01",
				"pwe_level_skittergate_vacated_area_02",
				"pwe_level_skittergate_vacated_area_03",
				"pwe_level_skittergate_vacated_area_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_vacated_area_01",
				"pwe_level_skittergate_vacated_area_02",
				"pwe_level_skittergate_vacated_area_03",
				"pwe_level_skittergate_vacated_area_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_gatekeeper_appear_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				4.2379999160767,
				4.7211981415749,
				4.2960000038147,
				2.9405207633972
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_gatekeeper_appear_01",
				"pwe_level_skittergate_gatekeeper_appear_02",
				"pwe_level_skittergate_gatekeeper_appear_03",
				"pwe_level_skittergate_gatekeeper_appear_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_gatekeeper_appear_01",
				"pwe_level_skittergate_gatekeeper_appear_02",
				"pwe_level_skittergate_gatekeeper_appear_03",
				"pwe_level_skittergate_gatekeeper_appear_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_activate_gate_01a = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				3.8981873989105,
				5.7839374542236,
				3.0627915859222,
				4.3261876106262
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_activate_gate_01a",
				"pwe_level_skittergate_activate_gate_02a",
				"pwe_level_skittergate_activate_gate_03a",
				"pwe_level_skittergate_activate_gate_04a"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_activate_gate_01a",
				"pwe_level_skittergate_activate_gate_02a",
				"pwe_level_skittergate_activate_gate_03a",
				"pwe_level_skittergate_activate_gate_04a"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_contol_panel_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				3.4594166278839,
				3.9245417118073,
				5.8410000801086,
				7.1424584388733
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_contol_panel_01",
				"pwe_level_skittergate_contol_panel_02",
				"pwe_level_skittergate_contol_panel_03",
				"pwe_level_skittergate_contol_panel_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_contol_panel_01",
				"pwe_level_skittergate_contol_panel_02",
				"pwe_level_skittergate_contol_panel_03",
				"pwe_level_skittergate_contol_panel_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_rasknitt_stormfiend_dead = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "player_alerts_boss",
			dialogue_animations_n = 2,
			sound_events_duration = {
				[1.0] = 6.0691456794739,
				[2.0] = 3.3158957958221
			},
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pwe_level_skittergate_rasknitt_stormfiend_dead_01",
				[2.0] = "pwe_level_skittergate_rasknitt_stormfiend_dead_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			sound_events = {
				[1.0] = "pwe_level_skittergate_rasknitt_stormfiend_dead_01",
				[2.0] = "pwe_level_skittergate_rasknitt_stormfiend_dead_02"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			}
		},
		pwe_level_skittergate_searching_gatekeeper_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				6.2939376831055,
				5.4058332443237,
				4.9635834693909,
				10.468853950501
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_searching_gatekeeper_01",
				"pwe_level_skittergate_searching_gatekeeper_02",
				"pwe_level_skittergate_searching_gatekeeper_03",
				"pwe_level_skittergate_searching_gatekeeper_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_searching_gatekeeper_01",
				"pwe_level_skittergate_searching_gatekeeper_02",
				"pwe_level_skittergate_searching_gatekeeper_03",
				"pwe_level_skittergate_searching_gatekeeper_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_elevator_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				3.6344895362854,
				2.7318749427795,
				3.1346666812897,
				3.2339582443237
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_elevator_01",
				"pwe_level_skittergate_elevator_02",
				"pwe_level_skittergate_elevator_03",
				"pwe_level_skittergate_elevator_04"
			},
			dialogue_animations = {
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk",
				"dialogue_talk"
			},
			sound_events = {
				"pwe_level_skittergate_elevator_01",
				"pwe_level_skittergate_elevator_02",
				"pwe_level_skittergate_elevator_03",
				"pwe_level_skittergate_elevator_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			}
		},
		pwe_level_skittergate_get_back_to_gate_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				4.7228854894638,
				3.5011875629425,
				4.8888540267944,
				6.7296457290649
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_get_back_to_gate_01",
				"pwe_level_skittergate_get_back_to_gate_02",
				"pwe_level_skittergate_get_back_to_gate_03",
				"pwe_level_skittergate_get_back_to_gate_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_get_back_to_gate_01",
				"pwe_level_skittergate_get_back_to_gate_02",
				"pwe_level_skittergate_get_back_to_gate_03",
				"pwe_level_skittergate_get_back_to_gate_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_arrive_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				3.6077916622162,
				2.96875,
				6.4968957901001,
				5.6947083473206
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_arrive_01",
				"pwe_level_skittergate_arrive_02",
				"pwe_level_skittergate_arrive_03",
				"pwe_level_skittergate_arrive_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_arrive_01",
				"pwe_level_skittergate_arrive_02",
				"pwe_level_skittergate_arrive_03",
				"pwe_level_skittergate_arrive_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_skittergate_intro_a = {
			sound_events_n = 2,
			face_animations_n = 2,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 2,
			sound_events_duration = {
				[1.0] = 7.8352918624878,
				[2.0] = 9.6954164505005
			},
			randomize_indexes = {},
			localization_strings = {
				[1.0] = "pwe_skittergate_intro_a_01",
				[2.0] = "pwe_skittergate_intro_a_02"
			},
			dialogue_animations = {
				[1.0] = "dialogue_talk",
				[2.0] = "dialogue_talk"
			},
			sound_events = {
				[1.0] = "pwe_skittergate_intro_a_01",
				[2.0] = "pwe_skittergate_intro_a_02"
			},
			face_animations = {
				[1.0] = "face_neutral",
				[2.0] = "face_neutral"
			}
		},
		pwe_level_skittergate_rasknitt_interrupt_and_focus = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "player_alerts_boss",
			dialogue_animations_n = 4,
			sound_events_duration = {
				4.8111872673035,
				4.8311667442322,
				5.8376040458679,
				5.1157083511353
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_rasknitt_interrupt_and_focus_01",
				"pwe_level_skittergate_rasknitt_interrupt_and_focus_02",
				"pwe_level_skittergate_rasknitt_interrupt_and_focus_03",
				"pwe_level_skittergate_rasknitt_interrupt_and_focus_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_rasknitt_interrupt_and_focus_01",
				"pwe_level_skittergate_rasknitt_interrupt_and_focus_02",
				"pwe_level_skittergate_rasknitt_interrupt_and_focus_03",
				"pwe_level_skittergate_rasknitt_interrupt_and_focus_04"
			},
			face_animations = {
				"face_neutral",
				"face_neutral",
				"face_neutral",
				"face_neutral"
			}
		},
		pwe_level_skittergate_cave_entrance_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				5.7189583778381,
				5.7482914924622,
				4.5811457633972,
				11.342958450317
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_cave_entrance_01",
				"pwe_level_skittergate_cave_entrance_02",
				"pwe_level_skittergate_cave_entrance_03",
				"pwe_level_skittergate_cave_entrance_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_cave_entrance_01",
				"pwe_level_skittergate_cave_entrance_02",
				"pwe_level_skittergate_cave_entrance_03",
				"pwe_level_skittergate_cave_entrance_04"
			},
			face_animations = {
				"face_calm",
				"face_calm",
				"face_calm",
				"face_calm"
			}
		},
		pwe_level_skittergate_ships_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				3.1156458854675,
				5.162624835968,
				6.597083568573,
				4.0421252250671
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_ships_01",
				"pwe_level_skittergate_ships_02",
				"pwe_level_skittergate_ships_03",
				"pwe_level_skittergate_ships_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_ships_01",
				"pwe_level_skittergate_ships_02",
				"pwe_level_skittergate_ships_03",
				"pwe_level_skittergate_ships_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_BOOM_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				7.7505626678467,
				7.09920835495,
				11.915458679199,
				6.2723331451416
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_BOOM_01",
				"pwe_level_skittergate_BOOM_02",
				"pwe_level_skittergate_BOOM_03",
				"pwe_level_skittergate_BOOM_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_BOOM_01",
				"pwe_level_skittergate_BOOM_02",
				"pwe_level_skittergate_BOOM_03",
				"pwe_level_skittergate_BOOM_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_get_down_to_the_cooling_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				4.1307291984558,
				5.4119791984558,
				6.8079376220703,
				8.6394376754761
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_get_down_to_the_cooling_01",
				"pwe_level_skittergate_get_down_to_the_cooling_02",
				"pwe_level_skittergate_get_down_to_the_cooling_03",
				"pwe_level_skittergate_get_down_to_the_cooling_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_get_down_to_the_cooling_01",
				"pwe_level_skittergate_get_down_to_the_cooling_02",
				"pwe_level_skittergate_get_down_to_the_cooling_03",
				"pwe_level_skittergate_get_down_to_the_cooling_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_through_the_gate_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				7.2089581489563,
				6.7862915992737,
				7.7466459274292,
				4.7598750591278
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_through_the_gate_01",
				"pwe_level_skittergate_through_the_gate_02",
				"pwe_level_skittergate_through_the_gate_03",
				"pwe_level_skittergate_through_the_gate_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_through_the_gate_01",
				"pwe_level_skittergate_through_the_gate_02",
				"pwe_level_skittergate_through_the_gate_03",
				"pwe_level_skittergate_through_the_gate_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		},
		pwe_level_skittergate_start_up_gate_01 = {
			sound_events_n = 4,
			face_animations_n = 4,
			database = "wood_elf_skittergate",
			randomize_indexes_n = 0,
			category = "level_talk",
			dialogue_animations_n = 4,
			sound_events_duration = {
				6.0999999046326,
				9.2364997863769,
				6.8502707481384,
				7.5500001907349
			},
			randomize_indexes = {},
			localization_strings = {
				"pwe_level_skittergate_start_up_gate_01",
				"pwe_level_skittergate_start_up_gate_02",
				"pwe_level_skittergate_start_up_gate_03",
				"pwe_level_skittergate_start_up_gate_04"
			},
			dialogue_animations = {
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout",
				"dialogue_shout"
			},
			sound_events = {
				"pwe_level_skittergate_start_up_gate_01",
				"pwe_level_skittergate_start_up_gate_02",
				"pwe_level_skittergate_start_up_gate_03",
				"pwe_level_skittergate_start_up_gate_04"
			},
			face_animations = {
				"face_fear",
				"face_fear",
				"face_fear",
				"face_fear"
			}
		}
	})
end
