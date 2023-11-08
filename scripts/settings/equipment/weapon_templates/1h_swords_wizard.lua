local push_radius = 2
local time_mod = 1
local weapon_template = {}
weapon_template.actions = {
	action_one = {
		default = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			attack_hold_input = "action_one_hold",
			aim_assist_max_ramp_multiplier = 0.3,
			aim_assist_ramp_multiplier = 0.1,
			anim_event = "attack_swing_charge_right",
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
					sub_action = "light_attack_left",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_spell",
					start_time = 0.5,
					action = "action_one",
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
					start_time = 0.3,
					blocker = true,
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_spell",
					start_time = 1.2,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_right_heavy = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			aim_assist_max_ramp_multiplier = 0.3,
			aim_assist_ramp_multiplier = 0.1,
			anim_event = "attack_swing_charge",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			anim_time_scale = time_mod * 1.25,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.65,
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
					sub_action = "heavy_attack_left",
					start_time = 0.7,
					action = "action_one",
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
					start_time = 0.3,
					blocker = true,
					end_time = 1.4,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 1.2,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_right = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			aim_assist_max_ramp_multiplier = 0.3,
			aim_assist_ramp_multiplier = 0.1,
			anim_event = "attack_swing_charge_right",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			anim_time_scale = time_mod * 1.25,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.65,
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
					sub_action = "heavy_attack_spell",
					start_time = 0.7,
					action = "action_one",
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
					start_time = 0.3,
					blocker = true,
					end_time = 1.4,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_spell",
					start_time = 1.2,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_left = {
			aim_assist_ramp_decay_delay = 0.1,
			anim_end_event = "attack_finished",
			kind = "melee_start",
			aim_assist_max_ramp_multiplier = 0.3,
			aim_assist_ramp_multiplier = 0.1,
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
					sub_action = "light_attack_stab",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.7,
					action = "action_one",
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
					start_time = 0.3,
					blocker = true,
					end_time = 1,
					input = "action_one_hold"
				},
				{
					sub_action = "heavy_attack_left",
					start_time = 0.8,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		heavy_attack_left = {
			damage_window_start = 0.13,
			range_mod = 1.2,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "fire_hit_armour",
			headshot_multiplier = 2,
			additional_critical_strike_chance = 0,
			use_precision_sweep = false,
			damage_profile = "medium_burning_tank",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.27,
			impact_sound_event = "fire_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2,
			uninterruptible = false,
			anim_event = "attack_swing_heavy",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.25,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.25,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.05,
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.5,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.05,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0.5,
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
			baked_sweep = {
				{
					0.09666666666666668,
					0.3514690399169922,
					0.3327310085296631,
					-0.03429079055786133,
					-0.2522915005683899,
					-0.3846561014652252,
					0.12526637315750122,
					-0.8790318965911865
				},
				{
					0.13111111111111112,
					0.31368160247802734,
					0.48519277572631836,
					-0.07621955871582031,
					-0.12383133918046951,
					-0.45107904076576233,
					0.0018399995751678944,
					-0.8838496208190918
				},
				{
					0.16555555555555557,
					0.1717844009399414,
					0.7300727367401123,
					-0.13850510120391846,
					0.11848443746566772,
					-0.5404943227767944,
					-0.2550818920135498,
					-0.7929441928863525
				},
				{
					0.2,
					-0.10924434661865234,
					0.7579188346862793,
					-0.2084968090057373,
					0.5033438205718994,
					-0.38424941897392273,
					-0.4259207844734192,
					-0.6462112069129944
				},
				{
					0.23444444444444446,
					-0.35388946533203125,
					0.5941004753112793,
					-0.22377657890319824,
					0.6675355434417725,
					-0.22438958287239075,
					-0.531281054019928,
					-0.4709417223930359
				},
				{
					0.2688888888888889,
					-0.4917736053466797,
					0.3813462257385254,
					-0.25626707077026367,
					0.7432360649108887,
					-0.1524386703968048,
					-0.5775076150894165,
					-0.3014094829559326
				},
				{
					0.30333333333333334,
					-0.5400056838989258,
					0.21253085136413574,
					-0.3230125904083252,
					0.7918877005577087,
					-0.04267309978604317,
					-0.5784671306610107,
					-0.19096779823303223
				}
			}
		},
		heavy_attack_spell = {
			damage_window_start = 0.2,
			forward_offset = 0.75,
			push_radius = 2.5,
			kind = "shield_slam",
			damage_profile_target = "dagger_burning_slam_target",
			additional_critical_strike_chance = 0,
			no_damage_impact_sound_event = "fire_hit_armour",
			armor_impact_sound_event = "fire_hit_armour",
			damage_profile = "dagger_burning_slam",
			hit_effect = "fireball_impact",
			hit_time = 0.35,
			aim_assist_ramp_multiplier = 0.2,
			damage_window_end = 0.25,
			impact_sound_event = "fire_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			damage_profile_aoe = "dagger_burning_slam_aoe",
			aim_assist_max_ramp_multiplier = 0.4,
			impact_particle_effect = "fx/wpnfx_staff_spark_impact",
			dedicated_target_range = 3.5,
			aim_assist_ramp_decay_delay = 0.1,
			uninterruptible = false,
			anim_event = "attack_swing_right_spell",
			total_time = 1.5,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.4,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.1,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right_heavy",
					start_time = 0.65,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.25,
					input = "action_one"
				},
				{
					sub_action = "default_right_heavy",
					start_time = 0.65,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.25,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1,
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
			critical_strike = {}
		},
		light_attack_left = {
			damage_window_start = 0.38,
			range_mod = 1.15,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "fire_hit_armour",
			headshot_multiplier = 2,
			additional_critical_strike_chance = 0,
			damage_profile = "light_slashing_linesman",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.52,
			impact_sound_event = "fire_hit",
			charge_value = "light_attack",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_left",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.25,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					end_time = 1.2,
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
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
					0.4657754898071289,
					0.5273056030273438,
					0.02077198028564453,
					-0.3597883880138397,
					-0.546881377696991,
					0.3271554410457611,
					-0.6815001368522644
				},
				{
					0.3811111111111111,
					0.3383207321166992,
					0.6110630035400391,
					0.0041522979736328125,
					-0.23574098944664001,
					-0.601669192314148,
					0.22084307670593262,
					-0.7305126786231995
				},
				{
					0.41555555555555557,
					0.12978267669677734,
					0.6972630023956299,
					-0.02591562271118164,
					0.031607311218976974,
					-0.6269334554672241,
					-0.01759830303490162,
					-0.7782324552536011
				},
				{
					0.45,
					-0.23976898193359375,
					0.6261916160583496,
					-0.12541675567626953,
					0.4730437099933624,
					-0.42360082268714905,
					-0.48293912410736084,
					-0.6029609441757202
				},
				{
					0.48444444444444446,
					-0.4066019058227539,
					0.4136929512023926,
					-0.24376320838928223,
					-0.6634809970855713,
					0.15693870186805725,
					0.6696585416793823,
					0.29448384046554565
				},
				{
					0.518888888888889,
					-0.4357728958129883,
					0.29536938667297363,
					-0.3423537015914917,
					-0.6130610704421997,
					0.03942856937646866,
					0.7445410490036011,
					0.26126644015312195
				},
				{
					0.5533333333333333,
					-0.4152860641479492,
					0.2164623737335205,
					-0.41587352752685547,
					-0.6178578734397888,
					-0.0742718055844307,
					0.7401880621910095,
					0.25467053055763245
				}
			}
		},
		light_attack_right = {
			damage_window_start = 0.38,
			range_mod = 1.15,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "fire_hit_armour",
			additional_critical_strike_chance = 0,
			damage_profile = "light_slashing_linesman",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.5,
			impact_sound_event = "fire_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_right_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.05,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					end_time = 1.2,
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					end_time = 1.2,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
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
					-0.2825908660888672,
					0.26093554496765137,
					0.06995725631713867,
					0.8113114237785339,
					-0.14746445417404175,
					0.27870145440101624,
					0.4922941029071808
				},
				{
					0.37777777777777777,
					-0.19243526458740234,
					0.4719119071960449,
					0.0549471378326416,
					-0.6411260962486267,
					0.3053993284702301,
					-0.13480240106582642,
					-0.6910260319709778
				},
				{
					0.4088888888888889,
					-0.04122638702392578,
					0.6550729274749756,
					-0.03788423538208008,
					-0.2133243829011917,
					0.42557740211486816,
					0.009077179245650768,
					-0.8793715238571167
				},
				{
					0.44,
					0.4331674575805664,
					0.6653344631195068,
					-0.34046053886413574,
					0.588533878326416,
					0.30948346853256226,
					0.35564443469047546,
					-0.6567838191986084
				},
				{
					0.4711111111111111,
					0.760890007019043,
					0.4028019905090332,
					-0.5137454271316528,
					0.6814846992492676,
					0.2962554693222046,
					0.5005245804786682,
					-0.4441693127155304
				},
				{
					0.5022222222222222,
					0.856389045715332,
					0.16071319580078125,
					-0.6123526096343994,
					0.6339461803436279,
					0.44670990109443665,
					0.5287824273109436,
					-0.3448937237262726
				},
				{
					0.5333333333333333,
					0.7671308517456055,
					-0.03662395477294922,
					-0.6521049737930298,
					0.814111053943634,
					0.36373382806777954,
					0.4138513505458832,
					-0.18343381583690643
				}
			}
		},
		light_attack_stab = {
			damage_window_start = 0.25,
			range_mod = 1.2,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "fire_hit_armour",
			additional_critical_strike_chance = 0,
			damage_profile = "light_slashing_smiter_stab",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.4,
			impact_sound_event = "fire_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_stab",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.25,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.55,
					action = "action_one",
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 0,
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
					0.21666666666666667,
					0.4656553268432617,
					-0.4513533115386963,
					-0.0012369155883789062,
					0.2878558039665222,
					0.6518345475196838,
					0.5458441972732544,
					-0.4408004581928253
				},
				{
					0.25277777777777777,
					0.26422977447509766,
					0.3321399688720703,
					0.00890350341796875,
					0.32437780499458313,
					0.5715138912200928,
					0.5775543451309204,
					-0.48433664441108704
				},
				{
					0.2888888888888889,
					0.10209274291992188,
					0.6345760822296143,
					-0.03995037078857422,
					0.3025301396846771,
					0.618090033531189,
					0.5826410055160522,
					-0.4323999583721161
				},
				{
					0.325,
					0.12235260009765625,
					0.5778329372406006,
					-0.044600486755371094,
					0.3064437210559845,
					0.6175917983055115,
					0.5798197984695435,
					-0.4341447651386261
				},
				{
					0.36111111111111116,
					0.12273216247558594,
					0.5807766914367676,
					-0.042690277099609375,
					0.30806899070739746,
					0.6168057918548584,
					0.5796608328819275,
					-0.4343242347240448
				},
				{
					0.39722222222222225,
					0.1179819107055664,
					0.5830495357513428,
					-0.04127192497253418,
					0.30609965324401855,
					0.6176562309265137,
					0.5784537196159363,
					-0.43611350655555725
				},
				{
					0.43333333333333335,
					0.1138467788696289,
					0.5852861404418945,
					-0.040695905685424805,
					0.3055124580860138,
					0.6164547204971313,
					0.5792470574378967,
					-0.4371711313724518
				}
			}
		},
		light_attack_bopp = {
			damage_window_start = 0.38,
			range_mod = 1.15,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "slashing_hit_armour",
			additional_critical_strike_chance = 0,
			damage_profile = "light_slashing_linesman_burn",
			hit_effect = "melee_hit_sword_1h",
			damage_window_end = 0.5,
			impact_sound_event = "slashing_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_left_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.4,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.7,
					end_time = 0.5,
					buff_name = "planted_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					input = "action_one"
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
			baked_sweep = {
				{
					0.3466666666666667,
					0.49561023712158203,
					0.4678473472595215,
					0.0606989860534668,
					-0.6798477172851562,
					-0.2885015308856964,
					0.13889923691749573,
					-0.6597582697868347
				},
				{
					0.37777777777777777,
					0.4115142822265625,
					0.5703999996185303,
					0.04795670509338379,
					-0.5258209705352783,
					-0.3913578987121582,
					0.14064864814281464,
					-0.7420035600662231
				},
				{
					0.4088888888888889,
					0.24289226531982422,
					0.6933119297027588,
					-0.013110637664794922,
					-0.25872910022735596,
					-0.477192759513855,
					0.037119828164577484,
					-0.8390282988548279
				},
				{
					0.44,
					-0.07282257080078125,
					0.7392466068267822,
					-0.14329922199249268,
					0.2208050936460495,
					-0.44775423407554626,
					-0.2764045298099518,
					-0.8211953639984131
				},
				{
					0.4711111111111111,
					-0.3486499786376953,
					0.5365402698516846,
					-0.29885220527648926,
					0.7537802457809448,
					-0.236281618475914,
					-0.47599470615386963,
					-0.38654300570487976
				},
				{
					0.5022222222222222,
					-0.44447898864746094,
					0.2701728343963623,
					-0.3612980842590332,
					0.8884981274604797,
					-0.10335046052932739,
					-0.44673582911491394,
					-0.017800265923142433
				},
				{
					0.5333333333333333,
					-0.4431180953979492,
					0.12943172454833984,
					-0.3543968200683594,
					0.8900281190872192,
					-0.08576974272727966,
					-0.43976259231567383,
					0.08427563309669495
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
					doubleclick_window = 0,
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
					start_time = 0.2,
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
					start_time = 0.4,
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
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.one_handed_melee_weapon.right
weapon_template.display_unit = "units/weapons/weapon_display/display_1h_swords_wizard"
weapon_template.wield_anim = "to_1h_weapon_spells"
weapon_template.state_machine = "units/beings/player/first_person_base/state_machines/melee/1h_weapon_spells"
weapon_template.buff_type = "MELEE_1H"
weapon_template.weapon_type = "SWORD_1H"
weapon_template.max_fatigue_points = 6
weapon_template.dodge_count = 3
weapon_template.block_angle = 90
weapon_template.outer_block_angle = 360
weapon_template.block_fatigue_point_multiplier = 0.5
weapon_template.outer_block_fatigue_point_multiplier = 2
weapon_template.buffs = {
	change_dodge_distance = {
		external_optional_multiplier = 1.2
	},
	change_dodge_speed = {
		external_optional_multiplier = 1.2
	}
}
weapon_template.attack_meta_data = {
	tap_attack = {
		penetrating = false,
		arc = 2
	},
	hold_attack = {
		penetrating = true,
		arc = 2
	}
}
weapon_template.aim_assist_settings = {
	max_range = 5,
	no_aim_input_multiplier = 0,
	base_multiplier = 0.025,
	effective_max_range = 3,
	breed_scalars = {
		skaven_storm_vermin = 0.25,
		skaven_clan_rat = 1,
		skaven_slave = 1
	}
}
weapon_template.weapon_diagram = {
	light_attack = {
		[DamageTypes.ARMOR_PIERCING] = 1,
		[DamageTypes.CLEAVE] = 4,
		[DamageTypes.SPEED] = 4,
		[DamageTypes.STAGGER] = 1,
		[DamageTypes.DAMAGE] = 4
	},
	heavy_attack = {
		[DamageTypes.ARMOR_PIERCING] = 2,
		[DamageTypes.CLEAVE] = 5,
		[DamageTypes.SPEED] = 2,
		[DamageTypes.STAGGER] = 2,
		[DamageTypes.DAMAGE] = 3
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_wide_sweeps",
	"weapon_keyword_crowd_control",
	"weapon_keyword_damage_over_time"
}
weapon_template.tooltip_compare = {
	light = {
		action_name = "action_one",
		sub_action_name = "light_attack_left"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "heavy_attack_spell"
	}
}
weapon_template.tooltip_detail = {
	light = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "default"
	},
	push = {
		action_name = "action_one",
		sub_action_name = "push"
	}
}
weapon_template.wwise_dep_right_hand = {
	"wwise/one_handed_swords"
}

return {
	flaming_sword_template_1 = weapon_template
}
