local push_radius = 2
local time_mod = 1
local weapon_template = weapon_template or {}
weapon_template.actions = {
	action_one = {
		default = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			attack_hold_input = "action_one_hold",
			stop_action_on_leave_for_bot = true,
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_left",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default_charge",
					send_buffer = true,
					action = "action_one",
					auto_chain = true,
					start_time = 0.5
				}
			}
		},
		default_charge = {
			looping_anim = true,
			aim_assist_ramp_multiplier = 0.2,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			stop_action_on_leave_for_bot = true,
			aim_assist_ramp_decay_delay = 0.1,
			aim_assist_max_ramp_multiplier = 0.4,
			uninterruptible = true,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.05,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "heavy_attack",
					start_time = 0.3,
					action = "action_one",
					end_time = 0.5,
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default_charge",
					start_time = 0.5,
					action = "action_one",
					send_buffer = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack",
					start_time = 0.5,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_charge_2 = {
			looping_anim = true,
			aim_assist_ramp_multiplier = 0.2,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			stop_action_on_leave_for_bot = true,
			aim_assist_ramp_decay_delay = 0.1,
			aim_assist_max_ramp_multiplier = 0.4,
			uninterruptible = true,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					end_time = 0.2,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.2,
					external_multiplier = 1.05,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "heavy_attack_left",
					start_time = 0,
					action = "action_one",
					end_time = 0.5,
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default_charge_2",
					start_time = 0.5,
					action = "action_one",
					send_buffer = true,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.5,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_right = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			stop_action_on_leave_for_bot = true,
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.65,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_last",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default_charge",
					send_buffer = true,
					action = "action_one",
					auto_chain = true,
					start_time = 0.5
				}
			}
		},
		default_left = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			stop_action_on_leave_for_bot = true,
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge_left",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_right",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default_charge_2",
					send_buffer = true,
					action = "action_one",
					auto_chain = true,
					start_time = 0.8
				}
			}
		},
		default_last = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			stop_action_on_leave_for_bot = true,
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_multiplier = 0.2,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_down",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "default_charge",
					send_buffer = true,
					action = "action_one",
					auto_chain = true,
					start_time = 0.5
				}
			}
		},
		heavy_attack = {
			damage_window_start = 0.37,
			damage_profile = "medium_blunt_tank_spiked",
			use_precision_sweep = false,
			damage_window_end = 0.53,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			width_mod = 25,
			aim_assist_ramp_multiplier = 0.4,
			ignore_armour_hit = true,
			additional_critical_strike_chance = 0,
			anim_end_event = "attack_finished",
			aim_assist_max_ramp_multiplier = 0.6,
			weapon_up_offset_mod = 0.15,
			aim_assist_ramp_decay_delay = 0.1,
			anim_event = "attack_swing_left",
			range_mod = 1.4,
			reset_aim_on_attack = true,
			sweep_z_offset = 0.35,
			hit_effect = "melee_hit_hammers_1h",
			impact_sound_event = "flail_hit",
			no_damage_impact_sound_event = "flail_hit_armour",
			dedicated_target_range = 3,
			uninterruptible = true,
			hit_stop_anim = "attack_hit",
			total_time = 1.2,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.2,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.65,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.6,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			critical_strike = {},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.33666666666666667,
					0.5448825359344482,
					0.33803558349609375,
					-0.03294932842254639,
					-0.6938961744308472,
					-0.3611435294151306,
					0.31722119450569153,
					-0.5361477136611938
				},
				{
					0.37444444444444447,
					0.4666392505168915,
					0.4909243583679199,
					-0.04792606830596924,
					-0.5273330211639404,
					-0.6078838109970093,
					0.30507704615592957,
					-0.5092400312423706
				},
				{
					0.4122222222222222,
					0.2930234372615814,
					0.6688070297241211,
					-0.05782914161682129,
					-0.056591976433992386,
					-0.7157552242279053,
					0.0238399188965559,
					-0.6956461071968079
				},
				{
					0.45,
					-0.028750915080308914,
					0.6814432144165039,
					-0.13091665506362915,
					0.5197134017944336,
					-0.3474127948284149,
					-0.4509815573692322,
					-0.6370384693145752
				},
				{
					0.48777777777777775,
					-0.3369719684123993,
					0.5117487907409668,
					-0.24428683519363403,
					-0.6335467100143433,
					0.15941084921360016,
					0.6463032364845276,
					0.3943335711956024
				},
				{
					0.5255555555555556,
					-0.4314781725406647,
					0.3382277488708496,
					-0.3250943422317505,
					-0.6527140736579895,
					0.09374654293060303,
					0.7086593508720398,
					0.2509539723396301
				},
				{
					0.5633333333333334,
					-0.4219605028629303,
					0.26160430908203125,
					-0.37170153856277466,
					-0.5271710157394409,
					-0.035333052277565,
					0.7927289605140686,
					0.30401164293289185
				}
			}
		},
		heavy_attack_left = {
			damage_window_start = 0.37,
			damage_profile = "medium_blunt_tank_spiked",
			use_precision_sweep = false,
			damage_window_end = 0.53,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			width_mod = 25,
			aim_assist_ramp_multiplier = 0.4,
			ignore_armour_hit = true,
			additional_critical_strike_chance = 0,
			anim_end_event = "attack_finished",
			aim_assist_max_ramp_multiplier = 0.6,
			weapon_up_offset_mod = 0.15,
			aim_assist_ramp_decay_delay = 0.1,
			anim_event = "attack_swing_heavy_left",
			range_mod = 1.4,
			reset_aim_on_attack = true,
			sweep_z_offset = 0.35,
			hit_effect = "melee_hit_hammers_1h",
			impact_sound_event = "flail_hit",
			no_damage_impact_sound_event = "flail_hit_armour",
			dedicated_target_range = 3,
			uninterruptible = true,
			hit_stop_anim = "attack_hit",
			total_time = 1.2,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.2,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.3,
					end_time = 0.3,
					buff_name = "planted_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.65,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			critical_strike = {},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.33666666666666667,
					0.5962738990783691,
					0.34659910202026367,
					-0.1993619203567505,
					0.49185627698898315,
					0.680475652217865,
					-0.290826678276062,
					0.458748459815979
				},
				{
					0.37444444444444447,
					0.48569950461387634,
					0.5062589645385742,
					-0.19914186000823975,
					0.3584235906600952,
					0.799644947052002,
					-0.24375183880329132,
					0.41555455327033997
				},
				{
					0.4122222222222222,
					0.3038136661052704,
					0.6507472991943359,
					-0.14437943696975708,
					-0.05991188809275627,
					-0.7981087565422058,
					-0.061860475689172745,
					-0.5963273048400879
				},
				{
					0.45,
					-0.015449302271008492,
					0.6737122535705566,
					-0.08594787120819092,
					0.437983900308609,
					-0.4817501902580261,
					-0.5454310178756714,
					-0.5278180837631226
				},
				{
					0.48777777777777775,
					-0.30898454785346985,
					0.5247673988342285,
					-0.07567477226257324,
					-0.5637811422348022,
					0.3032756447792053,
					0.7026059031486511,
					0.3106762766838074
				},
				{
					0.5255555555555556,
					-0.41523638367652893,
					0.3462953567504883,
					-0.16112017631530762,
					-0.581246554851532,
					0.2179279327392578,
					0.7620037794113159,
					0.1844182014465332
				},
				{
					0.5633333333333334,
					-0.4054780900478363,
					0.2586941719055176,
					-0.268271267414093,
					-0.4627688527107239,
					0.018689902499318123,
					0.848148763179779,
					0.2571757435798645
				}
			}
		},
		light_attack_left = {
			damage_window_start = 0.4,
			range_mod = 1.25,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "flail_hit_armour",
			use_precision_sweep = false,
			width_mod = 25,
			ignore_armour_hit = false,
			damage_profile = "light_blunt_tank_spiked",
			hit_effect = "melee_hit_hammers_1h",
			damage_window_end = 0.48,
			impact_sound_event = "flail_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_swing_left_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.65,
					action = "action_one",
					end_time = 1.25,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.25,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.3666666666666667,
					0.3928784728050232,
					0.46308088302612305,
					0.04756394028663635,
					-0.33984002470970154,
					-0.2810176908969879,
					0.33917152881622314,
					-0.8309636116027832
				},
				{
					0.39111111111111113,
					0.27743130922317505,
					0.6413979530334473,
					0.012445837259292603,
					-0.18290624022483826,
					-0.3483066260814667,
					0.18298211693763733,
					-0.9009691476821899
				},
				{
					0.41555555555555557,
					0.17802059650421143,
					0.6896886825561523,
					-0.0342307984828949,
					0.06046702712774277,
					-0.41609665751457214,
					-0.08067979663610458,
					-0.9037135243415833
				},
				{
					0.44,
					0.04415237903594971,
					0.707118034362793,
					-0.11056491732597351,
					0.4098159372806549,
					-0.37478041648864746,
					-0.2887857258319855,
					-0.7798675298690796
				},
				{
					0.46444444444444444,
					-0.17591607570648193,
					0.6577329635620117,
					-0.20119044184684753,
					0.584784984588623,
					-0.25191769003868103,
					-0.3702356815338135,
					-0.6763797402381897
				},
				{
					0.4888888888888889,
					-0.35374361276626587,
					0.5287785530090332,
					-0.3243817985057831,
					0.7272292971611023,
					-0.15409086644649506,
					-0.381177693605423,
					-0.5496335625648499
				},
				{
					0.5133333333333333,
					-0.4336274266242981,
					0.38819265365600586,
					-0.3813292682170868,
					0.7825109958648682,
					-0.10096237063407898,
					-0.44182896614074707,
					-0.4269312918186188
				}
			}
		},
		light_attack_right = {
			damage_window_start = 0.44,
			range_mod = 1.25,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "flail_hit_armour",
			use_precision_sweep = false,
			width_mod = 25,
			ignore_armour_hit = false,
			damage_profile = "light_blunt_tank_spiked",
			hit_effect = "melee_hit_hammers_1h",
			damage_window_end = 0.54,
			impact_sound_event = "flail_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_swing_right_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					end_time = 1.25,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.25,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.65,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.4066666666666667,
					-0.10550636053085327,
					0.5217204093933105,
					-0.00014659762382507324,
					-0.49015700817108154,
					0.3300308883190155,
					-0.08810540288686752,
					-0.8019121885299683
				},
				{
					0.43444444444444447,
					0.015249192714691162,
					0.5931606292724609,
					-0.0793127715587616,
					-0.18551912903785706,
					0.41045013070106506,
					0.13024945557117462,
					-0.8832601308822632
				},
				{
					0.46222222222222226,
					0.18831795454025269,
					0.6389689445495605,
					-0.1745823323726654,
					0.21699000895023346,
					0.4453330338001251,
					0.3258323073387146,
					-0.8052497506141663
				},
				{
					0.49,
					0.3920823931694031,
					0.6792793273925781,
					-0.2933046519756317,
					0.4818729758262634,
					0.4501649737358093,
					0.422810822725296,
					-0.6215956211090088
				},
				{
					0.5177777777777778,
					0.7148227095603943,
					0.4832897186279297,
					-0.4573117196559906,
					0.6012780070304871,
					0.4443732500076294,
					0.5213710069656372,
					-0.41130220890045166
				},
				{
					0.5455555555555556,
					0.809726893901825,
					0.2956418991088867,
					-0.5562316179275513,
					0.6146358251571655,
					0.41056397557258606,
					0.5458770990371704,
					-0.39456087350845337
				},
				{
					0.5733333333333334,
					0.7850019335746765,
					0.18585634231567383,
					-0.5555058717727661,
					0.6288573741912842,
					0.42963728308677673,
					0.5713445544242859,
					-0.305803120136261
				}
			}
		},
		light_attack_last = {
			damage_window_start = 0.38,
			range_mod = 1.3,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "flail_hit_armour",
			use_precision_sweep = false,
			width_mod = 25,
			ignore_armour_hit = true,
			damage_profile = "light_blunt_smiter",
			hit_effect = "melee_hit_hammers_1h",
			damage_window_end = 0.52,
			impact_sound_event = "flail_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_swing_down",
			hit_stop_anim = "attack_hit",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1,
			buff_data = {
				{
					start_time = 0.1,
					external_multiplier = 1.3,
					end_time = 0.4,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.45,
					external_multiplier = 0.75,
					end_time = 0.6,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_last",
					start_time = 0.58,
					action = "action_one",
					end_time = 1.25,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.25,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.3466666666666667,
					0.2652556300163269,
					0.13836097717285156,
					0.3418772518634796,
					-0.7026605606079102,
					-0.15270426869392395,
					0.10903272032737732,
					-0.6863391995429993
				},
				{
					0.3811111111111111,
					0.1886807084083557,
					0.32364797592163086,
					0.2904113829135895,
					-0.4593709111213684,
					-0.091202512383461,
					0.113826222717762,
					-0.876187264919281
				},
				{
					0.41555555555555557,
					0.03596532344818115,
					0.5755443572998047,
					-0.007849305868148804,
					0.43585145473480225,
					-0.024259332567453384,
					0.07451755553483963,
					-0.8966003060340881
				},
				{
					0.45,
					-0.04786801338195801,
					0.7158699035644531,
					-0.09240636229515076,
					0.7105950713157654,
					-0.06590267270803452,
					-0.08168715238571167,
					-0.6957288980484009
				},
				{
					0.48444444444444446,
					-0.08840698003768921,
					0.7360644340515137,
					-0.2730502784252167,
					0.8024240136146545,
					-0.05971327796578407,
					-0.03239704668521881,
					-0.5928747057914734
				},
				{
					0.518888888888889,
					-0.12215852737426758,
					0.5449099540710449,
					-0.48725470900535583,
					0.8600577116012573,
					0.07773405313491821,
					0.051989275962114334,
					-0.5015528202056885
				},
				{
					0.5533333333333333,
					-0.1816731095314026,
					0.38541126251220703,
					-0.5505051612854004,
					0.821347177028656,
					0.36016952991485596,
					0.009522578679025173,
					-0.44223982095718384
				}
			}
		},
		light_attack_down = {
			damage_window_start = 0.31,
			range_mod = 1.3,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "flail_hit_armour",
			use_precision_sweep = false,
			width_mod = 25,
			ignore_armour_hit = true,
			damage_profile = "light_blunt_smiter",
			aim_assist_ramp_multiplier = 0.2,
			hit_effect = "melee_hit_hammers_1h",
			aim_assist_max_ramp_multiplier = 0.4,
			aim_assist_ramp_decay_delay = 0.1,
			damage_window_end = 0.4,
			impact_sound_event = "flail_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_swing_down_right",
			hit_stop_anim = "attack_hit",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.05,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_one",
					end_time = 1.25,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0,
					action = "action_two",
					end_time = 0.25,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			baked_sweep = {
				{
					0.27666666666666667,
					-0.14478766918182373,
					0.2886514663696289,
					0.1565404236316681,
					-0.6101232767105103,
					0.26823893189430237,
					-0.34292858839035034,
					-0.6619648337364197
				},
				{
					0.3027777777777778,
					-0.11906421184539795,
					0.32311344146728516,
					0.1852037012577057,
					-0.5576115846633911,
					0.34254929423332214,
					-0.22401641309261322,
					-0.7221814393997192
				},
				{
					0.3288888888888889,
					-0.05370330810546875,
					0.3736739158630371,
					0.16758111119270325,
					-0.3388019800186157,
					0.25231754779815674,
					0.04815017059445381,
					-0.9051136374473572
				},
				{
					0.355,
					0.06098121404647827,
					0.5455594062805176,
					0.02518334984779358,
					0.30793607234954834,
					0.0602840855717659,
					0.05674013867974281,
					-0.9477983713150024
				},
				{
					0.3811111111111111,
					0.07554835081100464,
					0.5922770500183105,
					-0.18179604411125183,
					0.6559324264526367,
					0.029389526695013046,
					-0.023831170052289963,
					-0.7538706064224243
				},
				{
					0.40722222222222226,
					0.11447155475616455,
					0.5824184417724609,
					-0.34990033507347107,
					0.7772970199584961,
					0.07241623103618622,
					-0.015118161216378212,
					-0.6247693300247192
				},
				{
					0.43333333333333335,
					0.16474562883377075,
					0.5201873779296875,
					-0.46661338210105896,
					0.8321336507797241,
					0.10317696630954742,
					-0.0022134610917419195,
					-0.5448881983757019
				}
			}
		},
		light_attack_bopp = {
			damage_window_start = 0.3,
			range_mod = 1.25,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			width_mod = 25,
			no_damage_impact_sound_event = "flail_hit_armour",
			use_precision_sweep = false,
			ignore_armour_hit = false,
			hit_effect = "melee_hit_hammers_1h",
			damage_profile = "light_blunt_tank_spiked",
			damage_window_end = 0.45,
			impact_sound_event = "flail_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			uninterruptible = true,
			anim_event = "attack_swing_right",
			hit_stop_anim = "attack_hit",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_two_hold",
					end_time = 1.25,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_two",
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
					action = "action_wield",
					input = "action_wield"
				}
			},
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.26666666666666666,
					-0.4425375163555145,
					0.4557476043701172,
					-0.08079540729522705,
					-0.6469026207923889,
					0.5165259838104248,
					-0.23446284234523773,
					-0.5096520781517029
				},
				{
					0.30277777777777776,
					-0.3139003813266754,
					0.5639715194702148,
					-0.06331098079681396,
					-0.46075576543807983,
					0.4575735926628113,
					-0.2503403127193451,
					-0.7180948853492737
				},
				{
					0.3388888888888889,
					-0.12135221809148788,
					0.6331548690795898,
					-0.08914017677307129,
					-0.026124129071831703,
					0.4947614371776581,
					-0.03695940971374512,
					-0.8678494691848755
				},
				{
					0.375,
					0.09824036061763763,
					0.657954216003418,
					-0.1262592077255249,
					0.4518277943134308,
					0.41276872158050537,
					0.26834240555763245,
					-0.7439529895782471
				},
				{
					0.4111111111111111,
					0.4124135673046112,
					0.6606950759887695,
					-0.19796597957611084,
					0.6421422958374023,
					0.3194598853588104,
					0.5020665526390076,
					-0.4832473397254944
				},
				{
					0.44722222222222224,
					0.7451332807540894,
					0.5474905967712402,
					-0.30687040090560913,
					0.796484112739563,
					0.25579437613487244,
					0.5408485531806946,
					-0.08755143731832504
				},
				{
					0.48333333333333334,
					0.9191279411315918,
					0.2696957588195801,
					-0.3503049612045288,
					0.7872487902641296,
					-0.10977628082036972,
					0.4281429648399353,
					0.4299792945384979
				}
			}
		},
		push = {
			damage_window_start = 0.05,
			anim_end_event = "attack_finished",
			outer_push_angle = 180,
			kind = "push_stagger",
			damage_profile_outer = "light_push",
			weapon_action_hand = "right",
			push_angle = 100,
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.2,
			impact_sound_event = "slashing_hit",
			charge_value = "action_push",
			no_damage_impact_sound_event = "slashing_hit_armour",
			dedicated_target_range = 2,
			anim_event = "attack_push",
			damage_profile_inner = "medium_push",
			total_time = 0.8,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_one",
					release_required = "action_two_hold",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one_hold"
				},
				{
					sub_action = "light_attack_bopp",
					start_time = 0.3,
					action = "action_one",
					doubleclick_window = 0,
					end_time = 0.8,
					input = "action_one_hold",
					hold_required = {
						"action_two_hold",
						"action_one_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.3,
					action = "action_two",
					send_buffer = true,
					input = "action_two_hold"
				},
				{
					sub_action = "default",
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			},
			push_radius = push_radius,
			chain_condition_func = function (attacker_unit, input_extension)
				local status_extension = ScriptUnit.extension(attacker_unit, "status_system")

				return not status_extension:fatigued()
			end
		}
	},
	action_two = {
		default = {
			cooldown = 0.15,
			minimum_hold_time = 0.2,
			anim_end_event = "parry_finished",
			kind = "block",
			hold_input = "action_two_hold",
			anim_event = "parry_pose",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action"
			end,
			total_time = math.huge,
			enter_function = function (attacker_unit, input_extension, remaining_time)
				return input_extension:reset_release_input_with_delay(remaining_time)
			end,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.8,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_wield",
					input = "action_wield"
				},
				{
					sub_action = "push",
					start_time = 0.2,
					action = "action_one",
					doubleclick_window = 0,
					input = "action_one",
					hold_required = {
						"action_two_hold"
					}
				},
				{
					sub_action = "default",
					start_time = 0.2,
					action = "action_one",
					release_required = "action_two_hold",
					doubleclick_window = 0,
					input = "action_one"
				}
			}
		}
	},
	action_inspect = ActionTemplates.action_inspect,
	action_wield = ActionTemplates.wield
}
weapon_template.right_hand_unit = "units/weapons/player/wpn_empire_short_sword/wpn_empire_short_sword"
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.flail
weapon_template.display_unit = "units/weapons/weapon_display/display_1h_flail"
weapon_template.wield_anim = "to_1h_flail"
weapon_template.buff_type = "MELEE_1H"
weapon_template.weapon_type = "FLAIL_1H"
weapon_template.max_fatigue_points = 6
weapon_template.dodge_count = 4
weapon_template.block_angle = 90
weapon_template.outer_block_angle = 360
weapon_template.block_fatigue_point_multiplier = 0.5
weapon_template.outer_block_fatigue_point_multiplier = 2
weapon_template.buffs = {
	change_dodge_distance = {
		external_optional_multiplier = 1.15
	},
	change_dodge_speed = {
		external_optional_multiplier = 1.15
	}
}
weapon_template.attack_meta_data = {
	tap_attack = {
		penetrating = false,
		arc = 1
	},
	hold_attack = {
		penetrating = true,
		arc = 2,
		attack_chain = {
			start_sub_action_name = "default",
			start_action_name = "action_one",
			transitions = {
				action_one = {
					default = {
						wanted_sub_action_name = "default_charge",
						wanted_action_name = "action_one",
						bot_wait_input = "hold_attack",
						bot_wanted_input = "hold_attack"
					},
					default_charge = {
						wanted_sub_action_name = "heavy_attack",
						wanted_action_name = "action_one",
						bot_wait_input = "hold_attack"
					},
					default_charge_2 = {
						wanted_sub_action_name = "heavy_attack_left",
						wanted_action_name = "action_one",
						bot_wait_input = "hold_attack"
					},
					default_right = {
						wanted_sub_action_name = "default_charge",
						wanted_action_name = "action_one",
						bot_wait_input = "hold_attack",
						bot_wanted_input = "hold_attack"
					},
					default_left = {
						wanted_sub_action_name = "default_charge_2",
						wanted_action_name = "action_one",
						bot_wait_input = "hold_attack",
						bot_wanted_input = "hold_attack"
					},
					default_last = {
						wanted_sub_action_name = "default_charge",
						wanted_action_name = "action_one",
						bot_wait_input = "hold_attack",
						bot_wanted_input = "hold_attack"
					},
					heavy_attack = {
						wanted_sub_action_name = "default_left",
						wanted_action_name = "action_one",
						bot_wanted_input = "hold_attack"
					},
					heavy_attack_left = {
						wanted_sub_action_name = "default",
						wanted_action_name = "action_one",
						bot_wanted_input = "hold_attack"
					},
					light_attack_left = {
						wanted_sub_action_name = "default_left",
						wanted_action_name = "action_one",
						bot_wanted_input = "tap_attack"
					},
					light_attack_right = {
						wanted_sub_action_name = "default_right",
						wanted_action_name = "action_one",
						bot_wanted_input = "tap_attack"
					},
					light_attack_last = {
						wanted_sub_action_name = "default_last",
						wanted_action_name = "action_one",
						bot_wanted_input = "tap_attack"
					},
					light_attack_down = {
						wanted_sub_action_name = "default",
						wanted_action_name = "action_one",
						bot_wanted_input = "tap_attack"
					}
				},
				action_two = {}
			}
		}
	}
}

WeaponUtils.add_bot_meta_data_chain_actions(weapon_template.actions, weapon_template.attack_meta_data.hold_attack.attack_chain.transitions)

weapon_template.aim_assist_settings = {
	max_range = 5,
	no_aim_input_multiplier = 0,
	vertical_only = true,
	base_multiplier = 0,
	effective_max_range = 4,
	breed_scalars = {
		skaven_storm_vermin = 1,
		skaven_clan_rat = 1,
		skaven_slave = 1
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_ignore_shields",
	"weapon_keyword_wide_sweeps",
	"weapon_keyword_crowd_control"
}
weapon_template.tooltip_compare = {
	light = {
		action_name = "action_one",
		sub_action_name = "light_attack_left"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "heavy_attack"
	}
}
weapon_template.wwise_dep_right_hand = {
	"wwise/flail"
}

return {
	one_handed_flail_template_1 = table.clone(weapon_template)
}
