local push_radius = 2
local time_mod = 0.95
local weapon_template = {
	actions = {
		action_one = {
			default = {
				aim_assist_ramp_multiplier = 0.2,
				anim_end_event = "attack_finished",
				kind = "melee_start",
				attack_hold_input = "action_one_hold",
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
						external_multiplier = 0.5,
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
						sub_action = "heavy_attack",
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
						end_time = 1,
						input = "action_one_hold"
					},
					{
						sub_action = "heavy_attack",
						start_time = 0.7,
						action = "action_one",
						auto_chain = true
					}
				}
			},
			default_right = {
				anim_end_event = "attack_finished",
				aim_assist_ramp_multiplier = 0.2,
				aim_assist_ramp_decay_delay = 0.1,
				kind = "melee_start",
				aim_assist_max_ramp_multiplier = 0.4,
				uninterruptible = true,
				anim_event = "attack_swing_charge_left",
				anim_end_event_condition_func = function (unit, end_reason)
					return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
				end,
				total_time = math.huge,
				buff_data = {
					{
						start_time = 0,
						external_multiplier = 0.5,
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
						sub_action = "heavy_attack",
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
						end_time = 1,
						input = "action_one_hold"
					},
					{
						sub_action = "heavy_attack",
						start_time = 1,
						action = "action_one",
						auto_chain = true
					}
				}
			},
			default_left = {
				anim_end_event = "attack_finished",
				aim_assist_ramp_multiplier = 0.2,
				aim_assist_ramp_decay_delay = 0.1,
				kind = "melee_start",
				aim_assist_max_ramp_multiplier = 0.4,
				uninterruptible = true,
				anim_event = "attack_swing_charge_left",
				anim_end_event_condition_func = function (unit, end_reason)
					return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
				end,
				total_time = math.huge,
				buff_data = {
					{
						start_time = 0,
						external_multiplier = 0.5,
						buff_name = "planted_charging_decrease_movement"
					}
				},
				allowed_chain_actions = {
					{
						sub_action = "light_attack_quick_left",
						start_time = 0,
						action = "action_one",
						end_time = 0.3,
						input = "action_one_release"
					},
					{
						sub_action = "heavy_attack",
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
						end_time = 1,
						input = "action_one_hold"
					},
					{
						sub_action = "heavy_attack",
						start_time = 0.7,
						action = "action_one",
						auto_chain = true
					}
				}
			},
			default_left_last = {
				anim_end_event = "attack_finished",
				aim_assist_ramp_multiplier = 0.2,
				aim_assist_ramp_decay_delay = 0.1,
				kind = "melee_start",
				aim_assist_max_ramp_multiplier = 0.4,
				uninterruptible = true,
				anim_event = "attack_swing_charge_left",
				anim_end_event_condition_func = function (unit, end_reason)
					return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
				end,
				total_time = math.huge,
				buff_data = {
					{
						start_time = 0,
						external_multiplier = 0.5,
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
						sub_action = "heavy_attack",
						start_time = 0.5,
						action = "action_one",
						input = "action_one_release"
					},
					{
						sub_action = "default",
						start_time = 0.15,
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
						sub_action = "heavy_attack",
						start_time = 0.7,
						action = "action_one",
						auto_chain = true
					}
				}
			},
			default_stab = {
				aim_assist_ramp_multiplier = 0.2,
				anim_end_event = "attack_finished",
				kind = "melee_start",
				aim_assist_ramp_decay_delay = 0.1,
				aim_assist_max_ramp_multiplier = 0.4,
				uninterruptible = true,
				anim_event = "attack_swing_charge_right",
				anim_end_event_condition_func = function (unit, end_reason)
					return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
				end,
				total_time = math.huge,
				anim_time_scale = time_mod * 1.25,
				buff_data = {
					{
						start_time = 0,
						external_multiplier = 0.95,
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
						sub_action = "heavy_attack_stab",
						start_time = 0.3,
						action = "action_one",
						input = "action_one_release"
					},
					{
						sub_action = "default",
						start_time = 0.15,
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
						sub_action = "heavy_attack_stab",
						start_time = 0.7,
						action = "action_one",
						auto_chain = true
					}
				}
			},
			heavy_attack = {
				damage_window_start = 0.15,
				range_mod = 1,
				anim_end_event = "attack_finished",
				no_damage_impact_sound_event = "slashing_dagger_hit_armour",
				kind = "sweep",
				first_person_hit_anim = "shake_hit",
				weapon_action_hand = "both",
				additional_critical_strike_chance = 0,
				use_precision_sweep = true,
				damage_profile_left = "light_slashing_smiter_stab_dual",
				attack_direction = "up",
				hit_effect = "melee_hit_dagger",
				aim_assist_ramp_multiplier = 0.2,
				aim_assist_max_ramp_multiplier = 0.6,
				damage_window_end = 0.27,
				impact_sound_event = "slashing_dagger_hit",
				aim_assist_ramp_decay_delay = 0.1,
				reset_aim_on_attack = true,
				damage_profile_right = "light_slashing_smiter_stab_dual",
				dedicated_target_range = 2.75,
				uninterruptible = true,
				anim_event = "attack_swing_heavy",
				hit_stop_anim = "attack_hit",
				total_time = 1.25,
				anim_end_event_condition_func = function (unit, end_reason)
					return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
				end,
				buff_data = {
					{
						start_time = 0,
						external_multiplier = 1.25,
						end_time = 0.25,
						buff_name = "planted_fast_decrease_movement"
					},
					{
						start_time = 0.25,
						external_multiplier = 0.75,
						end_time = 0.4,
						buff_name = "planted_fast_decrease_movement"
					}
				},
				allowed_chain_actions = {
					{
						sub_action = "default_stab",
						start_time = 0.3,
						action = "action_one",
						release_required = "action_one_hold",
						end_time = 0.75,
						input = "action_one"
					},
					{
						sub_action = "default_stab",
						start_time = 0.3,
						action = "action_one",
						release_required = "action_one_hold",
						end_time = 0.75,
						input = "action_one_hold"
					},
					{
						sub_action = "default_stab",
						start_time = 0.75,
						action = "action_one",
						input = "action_one"
					},
					{
						sub_action = "default",
						start_time = 0.25,
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
				baked_sweep_right = {
					{
						0.11666666666666667,
						0.32155895233154297,
						0.12115478515625,
						0.37328243255615234,
						0.8436976075172424,
						0.08107048273086548,
						-0.08464321494102478,
						-0.5238679647445679
					},
					{
						0.14777777777777779,
						0.2702751159667969,
						0.2831153869628906,
						0.3388643264770508,
						0.7996677160263062,
						0.14802348613739014,
						-0.008829143829643726,
						-0.5818442702293396
					},
					{
						0.1788888888888889,
						0.23566818237304688,
						0.43190765380859375,
						0.2840156555175781,
						0.7832035422325134,
						0.17541652917861938,
						0.03427538275718689,
						-0.5955219864845276
					},
					{
						0.21000000000000002,
						0.15882301330566406,
						0.6466827392578125,
						0.10751771926879883,
						0.8838138580322266,
						0.21382682025432587,
						-0.03848111256957054,
						-0.41433122754096985
					},
					{
						0.2411111111111111,
						0.07657432556152344,
						0.7324428558349609,
						-0.1347184181213379,
						0.9683066606521606,
						0.1695292741060257,
						-0.1652202308177948,
						-0.07965149730443954
					},
					{
						0.27222222222222225,
						0.025765419006347656,
						0.7205638885498047,
						-0.3325786590576172,
						0.9744113087654114,
						0.06552428752183914,
						-0.1740836352109909,
						0.12619049847126007
					},
					{
						0.30333333333333334,
						0.059912681579589844,
						0.6305866241455078,
						-0.48674440383911133,
						0.9555326104164124,
						0.033309876918792725,
						-0.06600901484489441,
						0.2854657471179962
					}
				},
				baked_sweep_left = {
					{
						0.11666666666666667,
						-0.22156715393066406,
						0.06568527221679688,
						0.3786168098449707,
						0.86369389295578,
						0.03949632868170738,
						0.11371776461601257,
						-0.4894295036792755
					},
					{
						0.14777777777777779,
						-0.20298480987548828,
						0.24057769775390625,
						0.36153697967529297,
						0.8345008492469788,
						-0.018648387864232063,
						0.07503169029951096,
						-0.545555591583252
					},
					{
						0.1788888888888889,
						-0.21120452880859375,
						0.397705078125,
						0.31674957275390625,
						0.8291873931884766,
						-0.02761075831949711,
						0.06211639568209648,
						-0.5548220872879028
					},
					{
						0.21000000000000002,
						-0.16527271270751953,
						0.6437549591064453,
						0.1402130126953125,
						0.9191866517066956,
						-0.018770575523376465,
						0.09347859770059586,
						-0.3821064829826355
					},
					{
						0.2411111111111111,
						-0.10477161407470703,
						0.7463874816894531,
						-0.11371278762817383,
						0.9846041202545166,
						-0.03301084414124489,
						0.13804912567138672,
						-0.1020173653960228
					},
					{
						0.27222222222222225,
						-0.1012582778930664,
						0.7302207946777344,
						-0.31075334548950195,
						0.9839361310005188,
						-0.10153231769800186,
						0.1382851004600525,
						0.049377523362636566
					},
					{
						0.30333333333333334,
						-0.13913631439208984,
						0.6490917205810547,
						-0.46762895584106445,
						0.9822221994400024,
						-0.055674418807029724,
						0.012975743971765041,
						0.17880599200725555
					}
				}
			},
			heavy_attack_stab = {
				damage_window_start = 0.15,
				range_mod = 1,
				anim_end_event = "attack_finished",
				no_damage_impact_sound_event = "slashing_dagger_hit_armour",
				kind = "sweep",
				first_person_hit_anim = "shake_hit",
				weapon_action_hand = "both",
				additional_critical_strike_chance = 0,
				use_precision_sweep = true,
				damage_profile_left = "light_slashing_smiter_stab_dual",
				attack_direction = "up",
				hit_effect = "melee_hit_dagger",
				aim_assist_ramp_multiplier = 0.2,
				aim_assist_max_ramp_multiplier = 0.6,
				damage_window_end = 0.27,
				impact_sound_event = "slashing_dagger_hit",
				aim_assist_ramp_decay_delay = 0.1,
				reset_aim_on_attack = true,
				damage_profile_right = "light_slashing_smiter_stab_dual",
				dedicated_target_range = 2.75,
				uninterruptible = true,
				anim_event = "attack_swing_heavy_down",
				hit_stop_anim = "attack_hit",
				total_time = 2.25,
				anim_end_event_condition_func = function (unit, end_reason)
					return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
				end,
				buff_data = {
					{
						start_time = 0,
						external_multiplier = 1.25,
						end_time = 0.25,
						buff_name = "planted_fast_decrease_movement"
					},
					{
						start_time = 0.25,
						external_multiplier = 0.75,
						end_time = 0.4,
						buff_name = "planted_fast_decrease_movement"
					}
				},
				allowed_chain_actions = {
					{
						sub_action = "default",
						start_time = 0.5,
						action = "action_one",
						release_required = "action_one_hold",
						end_time = 0.75,
						input = "action_one"
					},
					{
						sub_action = "default",
						start_time = 0.5,
						action = "action_one",
						release_required = "action_one_hold",
						end_time = 0.75,
						input = "action_one_hold"
					},
					{
						sub_action = "default",
						start_time = 0.75,
						action = "action_one",
						input = "action_one"
					},
					{
						sub_action = "default",
						start_time = 0.25,
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
				baked_sweep_right = {
					{
						0.11666666666666667,
						0.12366580963134766,
						-0.4579811096191406,
						-0.23540019989013672,
						0.7794133424758911,
						-0.005612371955066919,
						0.03272535279393196,
						-0.6256296038627625
					},
					{
						0.14777777777777779,
						0.1247711181640625,
						-0.4903564453125,
						-0.23229646682739258,
						0.797541081905365,
						-0.02296786941587925,
						0.0044314125552773476,
						-0.6028109788894653
					},
					{
						0.1788888888888889,
						0.14099693298339844,
						-0.3978004455566406,
						-0.2234206199645996,
						0.7784320712089539,
						0.0007377275032922626,
						0.033998988568782806,
						-0.6268070936203003
					},
					{
						0.21000000000000002,
						0.26203346252441406,
						-0.07468032836914062,
						-0.17682313919067383,
						0.708241879940033,
						0.14597196877002716,
						0.1411551535129547,
						-0.6761367321014404
					},
					{
						0.2411111111111111,
						0.1813802719116211,
						0.4696674346923828,
						-0.1270895004272461,
						0.5916451215744019,
						0.23065857589244843,
						0.1395675241947174,
						-0.7597852349281311
					},
					{
						0.27222222222222225,
						0.1568603515625,
						0.6353530883789062,
						-0.13117456436157227,
						0.6268113255500793,
						0.15687085688114166,
						0.0019519494380801916,
						-0.7632138133049011
					},
					{
						0.30333333333333334,
						0.15671920776367188,
						0.6267147064208984,
						-0.11997365951538086,
						0.6245809197425842,
						0.1562502086162567,
						0.001599921379238367,
						-0.7651680111885071
					}
				},
				baked_sweep_left = {
					{
						0.11666666666666667,
						-0.11956787109375,
						-0.3799896240234375,
						-0.2718777656555176,
						0.6635675430297852,
						-0.10039208084344864,
						-0.07106880098581314,
						-0.737935483455658
					},
					{
						0.14777777777777779,
						-0.11657047271728516,
						-0.4659233093261719,
						-0.2660231590270996,
						0.6628608107566833,
						-0.09071440249681473,
						-0.0518939234316349,
						-0.7414131760597229
					},
					{
						0.1788888888888889,
						-0.11586475372314453,
						-0.5019912719726562,
						-0.26612281799316406,
						0.6631579399108887,
						-0.08262740820646286,
						-0.037607159465551376,
						-0.7429535984992981
					},
					{
						0.21000000000000002,
						-0.14737987518310547,
						-0.352874755859375,
						-0.2938976287841797,
						0.6895628571510315,
						-0.04556431993842125,
						-0.012300392612814903,
						-0.7226864099502563
					},
					{
						0.2411111111111111,
						-0.1730489730834961,
						0.00420379638671875,
						-0.25743532180786133,
						0.7239410877227783,
						-0.03765839710831642,
						0.016766367480158806,
						-0.688629150390625
					},
					{
						0.27222222222222225,
						-0.14651107788085938,
						0.49611663818359375,
						-0.10723447799682617,
						0.5981757640838623,
						-0.17554986476898193,
						-0.12112105637788773,
						-0.7724621295928955
					},
					{
						0.30333333333333334,
						-0.11355113983154297,
						0.6282615661621094,
						-0.09052801132202148,
						0.6144089102745056,
						-0.23548826575279236,
						-0.16102513670921326,
						-0.7356071472167969
					}
				}
			},
			light_attack_left = {
				damage_window_start = 0.2,
				anim_end_event = "attack_finished",
				range_mod = 0.85,
				kind = "sweep",
				first_person_hit_anim = "shake_hit",
				impact_sound_event = "slashing_dagger_hit",
				sweep_z_offset = 0,
				no_damage_impact_sound_event = "stab_hit_armour",
				weapon_action_hand = "right",
				additional_critical_strike_chance = 0,
				use_precision_sweep = true,
				hit_effect = "melee_hit_dagger",
				damage_profile = "light_fencer_stab_diag",
				damage_window_end = 0.32,
				forced_interpolation = 0.5,
				aim_assist_ramp_multiplier = 0.2,
				aim_assist_max_ramp_multiplier = 0.6,
				aim_assist_ramp_decay_delay = 0.1,
				reset_aim_on_attack = true,
				dedicated_target_range = 2.75,
				uninterruptible = true,
				anim_event = "attack_swing_left",
				hit_stop_anim = "attack_hit",
				total_time = 2.1,
				anim_end_event_condition_func = function (unit, end_reason)
					return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
				end,
				anim_time_scale = time_mod * 1.5,
				buff_data = {
					{
						start_time = 0,
						external_multiplier = 1.25,
						end_time = 0.2,
						buff_name = "planted_fast_decrease_movement"
					},
					{
						start_time = 0.2,
						external_multiplier = 0.85,
						end_time = 0.5,
						buff_name = "planted_fast_decrease_movement"
					}
				},
				allowed_chain_actions = {
					{
						sub_action = "default_right",
						start_time = 0.42,
						action = "action_one",
						end_time = 1,
						input = "action_one"
					},
					{
						sub_action = "default",
						start_time = 1,
						action = "action_one",
						input = "action_one"
					},
					{
						sub_action = "default",
						start_time = 0,
						action = "action_two",
						input = "action_two_hold"
					},
					{
						sub_action = "default",
						start_time = 0.3,
						action = "action_wield",
						input = "action_wield"
					}
				},
				impact_axis = Vector3Box(0, 0, 1),
				baked_sweep = {
					{
						0.16666666666666669,
						0.36620235443115234,
						0.5456695556640625,
						-0.29470157623291016,
						0.2788733243942261,
						0.8461822867393494,
						0.18058499693870544,
						0.41664645075798035
					},
					{
						0.1977777777777778,
						0.3359670639038086,
						0.5880908966064453,
						-0.2643899917602539,
						0.1157195121049881,
						0.8532177805900574,
						0.1424001306295395,
						0.48821166157722473
					},
					{
						0.2288888888888889,
						0.21007823944091797,
						0.6279525756835938,
						-0.20166635513305664,
						0.007548617664724588,
						0.7864022850990295,
						0.37247636914253235,
						0.4927229583263397
					},
					{
						0.26,
						-0.0916290283203125,
						0.6143989562988281,
						-0.04057121276855469,
						-0.040013883262872696,
						0.7225402593612671,
						0.613491952419281,
						0.3161678910255432
					},
					{
						0.2911111111111111,
						-0.2635173797607422,
						0.5335140228271484,
						0.05615806579589844,
						-0.1055915504693985,
						0.6921436786651611,
						0.6363727450370789,
						0.3237549066543579
					},
					{
						0.3222222222222222,
						-0.3802785873413086,
						0.38243865966796875,
						0.10630130767822266,
						-0.26463618874549866,
						0.597804069519043,
						0.7198505401611328,
						0.23326647281646729
					},
					{
						0.35333333333333333,
						-0.43152427673339844,
						0.19414901733398438,
						0.08034133911132812,
						-0.48386815190315247,
						0.4048992395401001,
						0.7712051868438721,
						0.08468076586723328
					}
				}
			},
			light_attack_right = {
				damage_window_start = 0.27,
				anim_end_event = "attack_finished",
				range_mod = 0.85,
				kind = "sweep",
				first_person_hit_anim = "shake_hit",
				impact_sound_event = "slashing_dagger_hit",
				sweep_z_offset = 0,
				no_damage_impact_sound_event = "stab_hit_armour",
				weapon_action_hand = "left",
				additional_critical_strike_chance = 0,
				invert_attack_direction = true,
				hit_effect = "melee_hit_dagger",
				damage_profile = "light_fencer_stab_diag",
				damage_window_end = 0.37,
				forced_interpolation = 0.5,
				use_precision_sweep = true,
				aim_assist_max_ramp_multiplier = 0.6,
				aim_assist_ramp_decay_delay = 0.1,
				reset_aim_on_attack = true,
				dedicated_target_range = 2.75,
				aim_assist_ramp_multiplier = 0.2,
				anim_event = "attack_swing_right",
				hit_stop_anim = "attack_hit",
				total_time = 2.1,
				anim_end_event_condition_func = function (unit, end_reason)
					return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
				end,
				anim_time_scale = time_mod * 1.4,
				buff_data = {
					{
						start_time = 0,
						external_multiplier = 1.3,
						end_time = 0.2,
						buff_name = "planted_fast_decrease_movement"
					},
					{
						start_time = 0.2,
						external_multiplier = 0.85,
						end_time = 0.5,
						buff_name = "planted_fast_decrease_movement"
					}
				},
				allowed_chain_actions = {
					{
						sub_action = "default_left",
						start_time = 0.45,
						action = "action_one",
						end_time = 1,
						input = "action_one"
					},
					{
						sub_action = "default",
						start_time = 1,
						action = "action_one",
						input = "action_one"
					},
					{
						sub_action = "default",
						start_time = 0,
						action = "action_two",
						input = "action_two_hold"
					},
					{
						sub_action = "default",
						start_time = 0.3,
						action = "action_wield",
						input = "action_wield"
					}
				},
				impact_axis = Vector3Box(0, 0, 1),
				baked_sweep = {
					{
						0.2366666666666667,
						-0.5625619888305664,
						0.3039894104003906,
						-0.26064252853393555,
						0.7083514332771301,
						0.4181801974773407,
						-0.546028196811676,
						0.1587980091571808
					},
					{
						0.2644444444444445,
						-0.5310297012329102,
						0.3666191101074219,
						-0.2256484031677246,
						0.5974523425102234,
						0.44980692863464355,
						-0.587904691696167,
						0.3083707392215729
					},
					{
						0.2922222222222222,
						-0.4589414596557617,
						0.47771644592285156,
						-0.18834304809570312,
						0.6604031324386597,
						0.40003740787506104,
						-0.5346717238426208,
						0.34345874190330505
					},
					{
						0.32,
						-0.18208789825439453,
						0.6690769195556641,
						-0.09817266464233398,
						0.8538563847541809,
						0.09487594664096832,
						-0.5112433433532715,
						-0.023624183610081673
					},
					{
						0.3477777777777778,
						0.2049388885498047,
						0.6434249877929688,
						0.043390750885009766,
						0.7515120506286621,
						-0.24892260134220123,
						-0.42622649669647217,
						-0.43771934509277344
					},
					{
						0.37555555555555553,
						0.4566688537597656,
						0.3166046142578125,
						0.13054800033569336,
						0.4349707067012787,
						-0.5087287425994873,
						-0.2906026840209961,
						-0.6837731003761292
					},
					{
						0.4033333333333333,
						0.5026283264160156,
						0.07968521118164062,
						0.18315839767456055,
						0.2792131304740906,
						-0.6427584290504456,
						-0.1202886626124382,
						-0.7031587958335876
					}
				}
			},
			light_attack_quick_left = {
				damage_window_start = 0.22,
				anim_end_event = "attack_finished",
				range_mod = 0.85,
				kind = "sweep",
				first_person_hit_anim = "shake_hit",
				impact_sound_event = "slashing_dagger_hit",
				sweep_z_offset = 0,
				no_damage_impact_sound_event = "stab_hit_armour",
				weapon_action_hand = "left",
				additional_critical_strike_chance = 0.1,
				use_precision_sweep = true,
				hit_effect = "melee_hit_dagger",
				damage_profile = "light_fencer_stab_diag",
				damage_window_end = 0.33,
				forced_interpolation = 0.5,
				aim_assist_ramp_multiplier = 0.2,
				aim_assist_max_ramp_multiplier = 0.6,
				aim_assist_ramp_decay_delay = 0.1,
				reset_aim_on_attack = true,
				dedicated_target_range = 2.75,
				uninterruptible = true,
				anim_event = "attack_swing_down_left",
				hit_stop_anim = "attack_hit",
				total_time = 2.1,
				anim_end_event_condition_func = function (unit, end_reason)
					return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
				end,
				anim_time_scale = time_mod * 1.5,
				buff_data = {
					{
						start_time = 0,
						external_multiplier = 1.25,
						end_time = 0.2,
						buff_name = "planted_fast_decrease_movement"
					},
					{
						start_time = 0.2,
						external_multiplier = 0.85,
						end_time = 0.5,
						buff_name = "planted_fast_decrease_movement"
					}
				},
				allowed_chain_actions = {
					{
						sub_action = "default_left_last",
						start_time = 0.37,
						action = "action_one",
						end_time = 1,
						input = "action_one"
					},
					{
						sub_action = "default",
						start_time = 1,
						action = "action_one",
						input = "action_one"
					},
					{
						sub_action = "default",
						start_time = 0,
						action = "action_two",
						input = "action_two_hold"
					},
					{
						sub_action = "default",
						start_time = 0.3,
						action = "action_wield",
						input = "action_wield"
					}
				},
				impact_axis = Vector3Box(0, 0, 1),
				baked_sweep = {
					{
						0.18666666666666668,
						0.3327484130859375,
						0.31133270263671875,
						-0.2578721046447754,
						0.6694489121437073,
						-0.4586969316005707,
						0.39027923345565796,
						0.43487635254859924
					},
					{
						0.21611111111111111,
						0.3469839096069336,
						0.4179801940917969,
						-0.205841064453125,
						0.690861701965332,
						-0.38759928941726685,
						0.5206664204597473,
						0.31840774416923523
					},
					{
						0.24555555555555555,
						0.23810195922851562,
						0.6206340789794922,
						-0.13796091079711914,
						0.717805802822113,
						-0.3275061845779419,
						0.6020408868789673,
						0.12264310568571091
					},
					{
						0.275,
						-0.04678535461425781,
						0.7092475891113281,
						-0.034186363220214844,
						0.759803831577301,
						-0.07056702673435211,
						0.608450174331665,
						-0.21796080470085144
					},
					{
						0.30444444444444446,
						-0.37763404846191406,
						0.5856266021728516,
						0.012703895568847656,
						0.5657866597175598,
						0.32157495617866516,
						0.4221768379211426,
						-0.6310639977455139
					},
					{
						0.3338888888888889,
						-0.5811100006103516,
						0.22365570068359375,
						0.013045310974121094,
						0.41206976771354675,
						0.39841228723526,
						0.08061890304088593,
						-0.8154549598693848
					},
					{
						0.36333333333333334,
						-0.5511932373046875,
						0.19031906127929688,
						0.01247262954711914,
						0.3377273678779602,
						0.3924928605556488,
						0.02199568785727024,
						-0.8552227020263672
					}
				}
			},
			light_attack_last = {
				damage_window_start = 0.27,
				anim_end_event = "attack_finished",
				range_mod = 0.85,
				kind = "sweep",
				first_person_hit_anim = "shake_hit",
				impact_sound_event = "slashing_dagger_hit",
				sweep_z_offset = 0,
				no_damage_impact_sound_event = "stab_hit_armour",
				weapon_action_hand = "right",
				additional_critical_strike_chance = 0.1,
				invert_attack_direction = true,
				hit_effect = "melee_hit_dagger",
				damage_profile = "light_fencer_stab_diag",
				damage_window_end = 0.42,
				forced_interpolation = 0.5,
				use_precision_sweep = true,
				aim_assist_max_ramp_multiplier = 0.6,
				aim_assist_ramp_decay_delay = 0.1,
				reset_aim_on_attack = true,
				dedicated_target_range = 2.75,
				aim_assist_ramp_multiplier = 0.2,
				anim_event = "attack_swing_down_right",
				hit_stop_anim = "attack_hit",
				total_time = 2.1,
				anim_end_event_condition_func = function (unit, end_reason)
					return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
				end,
				anim_time_scale = time_mod * 1.55,
				buff_data = {
					{
						start_time = 0,
						external_multiplier = 1.3,
						end_time = 0.2,
						buff_name = "planted_fast_decrease_movement"
					},
					{
						start_time = 0.2,
						external_multiplier = 0.85,
						end_time = 0.5,
						buff_name = "planted_fast_decrease_movement"
					}
				},
				allowed_chain_actions = {
					{
						sub_action = "default",
						start_time = 0.67,
						action = "action_one",
						end_time = 1,
						input = "action_one"
					},
					{
						sub_action = "default",
						start_time = 1,
						action = "action_one",
						input = "action_one"
					},
					{
						sub_action = "default",
						start_time = 0,
						action = "action_two",
						input = "action_two_hold"
					},
					{
						sub_action = "default",
						start_time = 0.3,
						action = "action_wield",
						input = "action_wield"
					}
				},
				impact_axis = Vector3Box(0, 0, 1),
				baked_sweep = {
					{
						0.2366666666666667,
						-0.4054832458496094,
						0.17862319946289062,
						-0.27553606033325195,
						0.7778472900390625,
						-0.2679325044155121,
						0.535073459148407,
						0.19199517369270325
					},
					{
						0.2727777777777778,
						-0.3912630081176758,
						0.32956695556640625,
						-0.26798391342163086,
						0.7687718272209167,
						-0.3964192569255829,
						0.4450351595878601,
						0.23191693425178528
					},
					{
						0.3088888888888889,
						-0.32100868225097656,
						0.48930931091308594,
						-0.19521617889404297,
						0.6063728928565979,
						-0.5908982753753662,
						0.3249358534812927,
						0.42138805985450745
					},
					{
						0.345,
						0.1861429214477539,
						0.7185764312744141,
						0.02821493148803711,
						0.2613521218299866,
						0.6339734196662903,
						0.5844331383705139,
						-0.43383264541625977
					},
					{
						0.38111111111111107,
						0.4757375717163086,
						0.2849388122558594,
						0.0325465202331543,
						0.574988603591919,
						0.15836785733699799,
						0.7602188587188721,
						-0.2576334476470947
					},
					{
						0.41722222222222216,
						0.5258665084838867,
						-0.10405349731445312,
						0.009783267974853516,
						0.7695140838623047,
						-0.09229002892971039,
						0.6256059408187866,
						-0.08915051817893982
					},
					{
						0.4533333333333333,
						0.50604248046875,
						-0.3191261291503906,
						0.04276609420776367,
						0.7780601978302002,
						-0.10612844675779343,
						0.617664098739624,
						-0.043014220893383026
					}
				}
			},
			push = {
				damage_window_start = 0.05,
				anim_end_event = "attack_finished",
				outer_push_angle = 180,
				kind = "push_stagger",
				damage_profile_outer = "light_push",
				fatigue_cost = "action_stun_push",
				weapon_action_hand = "right",
				push_angle = 100,
				hit_effect = "melee_hit_sword_1h",
				damage_window_end = 0.2,
				impact_sound_event = "slashing_dagger_hit",
				charge_value = "action_push",
				no_damage_impact_sound_event = "slashing_dagger_hit_armour",
				dedicated_target_range = 2,
				anim_event = "attack_push",
				damage_profile_inner = "light_push",
				total_time = 0.8,
				anim_end_event_condition_func = function (unit, end_reason)
					return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
				end,
				buff_data = {
					{
						start_time = 0,
						external_multiplier = 1.15,
						end_time = 0.3,
						buff_name = "planted_fast_decrease_movement"
					}
				},
				allowed_chain_actions = {
					{
						sub_action = "default",
						start_time = 0.2,
						action = "action_one",
						release_required = "action_two_hold",
						doubleclick_window = 0,
						input = "action_one"
					},
					{
						sub_action = "default",
						start_time = 0.2,
						action = "action_one",
						release_required = "action_two_hold",
						doubleclick_window = 0,
						input = "action_one_hold"
					},
					{
						sub_action = "push_stab",
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
						start_time = 0.3,
						action = "action_wield",
						input = "action_wield"
					}
				},
				push_radius = push_radius,
				chain_condition_func = function (attacker_unit, input_extension)
					local status_extension = ScriptUnit.extension(attacker_unit, "status_system")

					return not status_extension:fatigued()
				end
			},
			push_stab = {
				damage_window_start = 0.26,
				anim_end_event = "attack_finished",
				damage_window_end = 0.35,
				kind = "sweep",
				first_person_hit_anim = "shake_hit",
				use_precision_sweep = true,
				damage_profile = "light_fencer_stab",
				attack_direction = "up",
				aim_assist_max_ramp_multiplier = 0.8,
				aim_assist_ramp_decay_delay = 0.1,
				reset_aim_on_attack = true,
				hit_effect = "melee_hit_dagger",
				additional_critical_strike_chance = 0.1,
				impact_sound_event = "stab_hit",
				no_damage_impact_sound_event = "stab_hit_armour",
				dedicated_target_range = 2.75,
				aim_assist_ramp_multiplier = 0.2,
				anim_event = "push_stab",
				hit_stop_anim = "attack_hit",
				total_time = 2.1,
				anim_end_event_condition_func = function (unit, end_reason)
					return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
				end,
				buff_data = {
					{
						start_time = 0,
						external_multiplier = 1.25,
						end_time = 0.1,
						buff_name = "planted_fast_decrease_movement"
					}
				},
				allowed_chain_actions = {
					{
						sub_action = "default",
						start_time = 0.4,
						action = "action_one",
						release_required = "action_two_hold",
						doubleclick_window = 0,
						input = "action_one_hold"
					},
					{
						sub_action = "light_attack_quick_left",
						start_time = 0.5,
						action = "action_one",
						release_required = "action_two_hold",
						doubleclick_window = 0,
						input = "action_one"
					},
					{
						sub_action = "default",
						start_time = 0.3,
						action = "action_two",
						input = "action_two_hold"
					},
					{
						sub_action = "default",
						start_time = 0.4,
						action = "action_wield",
						input = "action_wield"
					}
				},
				baked_sweep = {
					{
						0.22666666666666668,
						0.38049983978271484,
						-0.1367950439453125,
						0.0019741058349609375,
						0.2599480450153351,
						0.6546697020530701,
						0.625799834728241,
						-0.3349763751029968
					},
					{
						0.25277777777777777,
						0.2766132354736328,
						0.19283676147460938,
						0.0018553733825683594,
						0.2681148946285248,
						0.6441583633422852,
						0.6362346410751343,
						-0.32921090722084045
					},
					{
						0.2788888888888889,
						0.17310810089111328,
						0.4997825622558594,
						-0.014312744140625,
						0.2697750926017761,
						0.6497803330421448,
						0.6224335432052612,
						-0.34290438890457153
					},
					{
						0.305,
						0.1422872543334961,
						0.5851764678955078,
						-0.024164676666259766,
						0.26694467663764954,
						0.6515603065490723,
						0.621073305606842,
						-0.34420597553253174
					},
					{
						0.3311111111111111,
						0.14343929290771484,
						0.5858268737792969,
						-0.021355152130126953,
						0.26800063252449036,
						0.645402729511261,
						0.618848443031311,
						-0.35868868231773376
					},
					{
						0.3572222222222222,
						0.1416788101196289,
						0.5871486663818359,
						-0.02106761932373047,
						0.27047649025917053,
						0.642359733581543,
						0.6163641810417175,
						-0.3664856553077698
					},
					{
						0.3833333333333333,
						0.13605213165283203,
						0.5920219421386719,
						-0.022211551666259766,
						0.26867514848709106,
						0.6416745185852051,
						0.6140177845954895,
						-0.3728936016559601
					}
				}
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
						external_multiplier = 0.9,
						buff_name = "planted_decrease_movement"
					}
				},
				allowed_chain_actions = {
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
					},
					{
						sub_action = "default",
						start_time = 0.2,
						action = "action_wield",
						input = "action_wield"
					}
				}
			}
		},
		action_inspect = ActionTemplates.action_inspect,
		action_wield = ActionTemplates.wield
	},
	right_hand_unit = "units/weapons/player/wpn_empire_short_sword/wpn_empire_short_sword",
	right_hand_attachment_node_linking = AttachmentNodeLinking.one_handed_melee_weapon.right,
	left_hand_unit = "units/weapons/player/wpn_empire_short_sword/wpn_empire_short_sword",
	left_hand_attachment_node_linking = AttachmentNodeLinking.one_handed_melee_weapon.left,
	display_unit = "units/weapons/weapon_display/display_dual_daggers",
	buff_type = "MELEE_1H",
	weapon_type = "DUAL_DAGGER_1H",
	max_fatigue_points = 4,
	dodge_count = 6,
	block_angle = 40,
	outer_block_angle = 360,
	block_fatigue_point_multiplier = 0.5,
	outer_block_fatigue_point_multiplier = 2,
	buffs = {
		change_dodge_distance = {
			external_optional_multiplier = 1.35
		},
		change_dodge_speed = {
			external_optional_multiplier = 1.35
		}
	},
	wield_anim = "to_dual_daggers",
	attack_meta_data = {
		tap_attack = {
			penetrating = false,
			arc = 0
		},
		hold_attack = {
			penetrating = true,
			arc = 0
		}
	},
	defense_meta_data = {
		push = "light"
	},
	aim_assist_settings = {
		max_range = 5,
		no_aim_input_multiplier = 0,
		base_multiplier = 0,
		target_node = "j_neck",
		effective_max_range = 4,
		breed_scalars = {
			skaven_storm_vermin = 1,
			skaven_clan_rat = 1,
			skaven_slave = 1
		}
	},
	weapon_diagram = {
		light_attack = {
			[DamageTypes.ARMOR_PIERCING] = 0,
			[DamageTypes.CLEAVE] = 0,
			[DamageTypes.SPEED] = 7,
			[DamageTypes.STAGGER] = 0,
			[DamageTypes.DAMAGE] = 4
		},
		heavy_attack = {
			[DamageTypes.ARMOR_PIERCING] = 5,
			[DamageTypes.CLEAVE] = 1,
			[DamageTypes.SPEED] = 5,
			[DamageTypes.STAGGER] = 0,
			[DamageTypes.DAMAGE] = 5
		}
	},
	tooltip_keywords = {
		"weapon_keyword_fast_attacks",
		"weapon_keyword_headshotting",
		"weapon_keyword_damage_over_time"
	},
	tooltip_compare = {
		light = {
			action_name = "action_one",
			sub_action_name = "light_attack_left"
		},
		heavy = {
			action_name = "action_one",
			sub_action_name = "heavy_attack"
		}
	},
	tooltip_detail = {
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
	},
	wwise_dep_right_hand = {
		"wwise/one_handed_daggers"
	},
	wwise_dep_left_hand = {
		"wwise/one_handed_daggers"
	}
}

return {
	dual_wield_daggers_template_1 = table.clone(weapon_template)
}
