local push_radius = 2
local time_mod = 0.9
local weapon_template = weapon_template or {}
weapon_template.actions = {
	action_one = {
		default = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_down",
			attack_hold_input = "action_one_hold",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.35,
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
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_right",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.35,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_right_uppercut",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_2",
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
					sub_action = "heavy_attack_2",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		default_down = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_down",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.35,
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
		default_left = {
			kind = "melee_start",
			anim_end_event = "attack_finished",
			anim_event = "attack_swing_charge_left",
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			total_time = math.huge,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.35,
					buff_name = "planted_charging_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "light_attack_left_diagonal",
					start_time = 0,
					action = "action_one",
					end_time = 0.3,
					input = "action_one_release"
				},
				{
					sub_action = "heavy_attack_3",
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
					sub_action = "heavy_attack_3",
					start_time = 1,
					action = "action_one",
					auto_chain = true
				}
			}
		},
		heavy_attack = {
			damage_window_start = 0.2,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			range_mod = 1.2,
			no_damage_impact_sound_event = "blunt_hit_armour",
			weapon_action_hand = "both",
			use_precision_sweep = false,
			additional_critical_strike_chance = 0,
			hit_effect = "melee_hit_hammers_1h",
			damage_profile_left = "light_blunt_smiter_dual",
			damage_window_end = 0.3,
			impact_sound_event = "hammer_2h_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			damage_profile_right = "light_blunt_smiter_dual",
			dedicated_target_range = 2.5,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_down",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.1,
					end_time = 0.15,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.1,
					input = "action_one"
				},
				{
					sub_action = "default_right",
					start_time = 0.6,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.1,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
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
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			dual_hit_stop_anims = {
				left = "shake_hit",
				right = "attack_hit"
			},
			baked_sweep_right = {
				{
					0.16666666666666669,
					0.15340900421142578,
					0.022681236267089844,
					0.31192725896835327,
					-0.6669479608535767,
					0.15328240394592285,
					0.037133511155843735,
					-0.7282211780548096
				},
				{
					0.19444444444444445,
					0.2624702453613281,
					0.056777000427246094,
					0.29408079385757446,
					-0.576887309551239,
					0.029039764776825905,
					0.08213230967521667,
					-0.8121650218963623
				},
				{
					0.22222222222222224,
					0.26246070861816406,
					0.24053955078125,
					0.2266255021095276,
					-0.46749746799468994,
					-0.028498703613877296,
					0.13691098988056183,
					-0.872862696647644
				},
				{
					0.25,
					0.17998886108398438,
					0.5145392417907715,
					0.07952648401260376,
					-0.24201716482639313,
					-0.03133665770292282,
					0.16409756243228912,
					-0.9557812213897705
				},
				{
					0.2777777777777778,
					0.08797359466552734,
					0.68780517578125,
					-0.1181708574295044,
					0.31712836027145386,
					0.04660911113023758,
					0.04366336017847061,
					-0.9462297558784485
				},
				{
					0.3055555555555556,
					0.061356544494628906,
					0.6818208694458008,
					-0.321580708026886,
					0.7780440449714661,
					-0.05824137479066849,
					-0.059088706970214844,
					-0.6227068901062012
				},
				{
					0.3333333333333333,
					0.052669525146484375,
					0.612861156463623,
					-0.504933774471283,
					0.8211949467658997,
					-0.03282196447253227,
					-0.04387543722987175,
					-0.5680110454559326
				}
			},
			baked_sweep_left = {
				{
					0.16666666666666669,
					-0.25355052947998047,
					-0.010162353515625,
					0.33458298444747925,
					-0.6665594577789307,
					0.03129694610834122,
					-0.1015719473361969,
					-0.7378361225128174
				},
				{
					0.19444444444444445,
					-0.24542713165283203,
					0.12862157821655273,
					0.27509063482284546,
					-0.5418754816055298,
					0.16467265784740448,
					-0.11314110457897186,
					-0.8163657188415527
				},
				{
					0.22222222222222224,
					-0.2404041290283203,
					0.25894641876220703,
					0.19186967611312866,
					-0.4603138267993927,
					0.2059851884841919,
					-0.11556581407785416,
					-0.855760395526886
				},
				{
					0.25,
					-0.17955684661865234,
					0.46997785568237305,
					0.0723116397857666,
					-0.3039548099040985,
					0.14505678415298462,
					-0.012773843482136726,
					-0.9414918422698975
				},
				{
					0.2777777777777778,
					-0.16126346588134766,
					0.6719145774841309,
					-0.2012990117073059,
					0.3521061837673187,
					0.10027950257062912,
					0.05293290317058563,
					-0.9290658831596375
				},
				{
					0.3055555555555556,
					-0.16443443298339844,
					0.5848512649536133,
					-0.539160430431366,
					0.824092447757721,
					0.033354438841342926,
					0.0017702712211757898,
					-0.5654698014259338
				},
				{
					0.3333333333333333,
					-0.18922805786132812,
					0.37192249298095703,
					-0.6749441623687744,
					0.8215515613555908,
					-0.01847025193274021,
					-0.01583564095199108,
					-0.5696148872375488
				}
			}
		},
		heavy_attack_2 = {
			damage_window_start = 0.3,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			range_mod = 1.3,
			no_damage_impact_sound_event = "blunt_hit_armour",
			weapon_action_hand = "both",
			use_precision_sweep = false,
			hit_effect = "melee_hit_hammers_1h",
			additional_critical_strike_chance = 0,
			damage_profile_left = "medium_blunt_tank_dual",
			damage_window_end = 0.42,
			impact_sound_event = "hammer_2h_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			damage_profile_right = "medium_blunt_tank_dual",
			dedicated_target_range = 2.5,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_right_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					end_time = 0.15,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.1,
					input = "action_one"
				},
				{
					sub_action = "default_left",
					start_time = 0.7,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.1,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
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
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			dual_hit_stop_anims = {
				left = "attack_hit",
				right = "shake_hit"
			},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep_right = {
				{
					0.26666666666666666,
					-0.2635536193847656,
					0.27184057235717773,
					0.025840461254119873,
					-0.6671818494796753,
					0.23083731532096863,
					-0.38711094856262207,
					-0.5930663347244263
				},
				{
					0.29777777777777775,
					-0.1692514419555664,
					0.5048317909240723,
					-0.000681459903717041,
					-0.44546645879745483,
					0.31339338421821594,
					-0.24814286828041077,
					-0.8011050820350647
				},
				{
					0.3288888888888889,
					0.11806869506835938,
					0.6857595443725586,
					-0.14524978399276733,
					0.2261364758014679,
					0.48219504952430725,
					0.16742253303527832,
					-0.8296505212783813
				},
				{
					0.36,
					0.43651866912841797,
					0.633021354675293,
					-0.2516171932220459,
					0.5659300684928894,
					0.4186171591281891,
					0.40372100472450256,
					-0.5843732953071594
				},
				{
					0.3911111111111111,
					0.6114025115966797,
					0.49735593795776367,
					-0.2976883053779602,
					0.6422404050827026,
					0.33721718192100525,
					0.46660974621772766,
					-0.5060506463050842
				},
				{
					0.42222222222222217,
					0.7004871368408203,
					0.3886709213256836,
					-0.320488303899765,
					0.6843776702880859,
					0.2684250771999359,
					0.5136390328407288,
					-0.442436546087265
				},
				{
					0.4533333333333333,
					0.7358188629150391,
					0.2819976806640625,
					-0.3328866958618164,
					0.7106348872184753,
					0.2074946165084839,
					0.5402061343193054,
					-0.4001517593860626
				}
			},
			baked_sweep_left = {
				{
					0.26666666666666666,
					-0.5210256576538086,
					0.317868709564209,
					-0.025054991245269775,
					-0.3600750267505646,
					0.22908616065979004,
					-0.17506703734397888,
					-0.8872525691986084
				},
				{
					0.29777777777777775,
					-0.4631671905517578,
					0.367189884185791,
					0.010269701480865479,
					-0.4060797691345215,
					0.25402069091796875,
					-0.17718006670475006,
					-0.8597557544708252
				},
				{
					0.3288888888888889,
					-0.3801565170288086,
					0.44712162017822266,
					0.05190837383270264,
					-0.40758657455444336,
					0.2834038734436035,
					-0.14520356059074402,
					-0.8558453917503357
				},
				{
					0.36,
					-0.28679847717285156,
					0.544823169708252,
					0.06332427263259888,
					-0.2767917811870575,
					0.3240962028503418,
					-0.04443756490945816,
					-0.9035337567329407
				},
				{
					0.3911111111111111,
					-0.15889644622802734,
					0.6454148292541504,
					0.005540668964385986,
					0.06335216015577316,
					0.33790352940559387,
					0.14789940416812897,
					-0.927325963973999
				},
				{
					0.42222222222222217,
					0.10578060150146484,
					0.6645188331604004,
					-0.14985769987106323,
					0.48432064056396484,
					0.3283347189426422,
					0.3837050199508667,
					-0.7144230604171753
				},
				{
					0.4533333333333333,
					0.43294811248779297,
					0.48763513565063477,
					-0.33312076330184937,
					0.7199981212615967,
					0.3159771263599396,
					0.5163024067878723,
					-0.3394010663032532
				}
			}
		},
		heavy_attack_3 = {
			damage_window_start = 0.3,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			range_mod = 1.3,
			no_damage_impact_sound_event = "blunt_hit_armour",
			weapon_action_hand = "both",
			use_precision_sweep = false,
			additional_critical_strike_chance = 0,
			hit_effect = "melee_hit_hammers_1h",
			damage_profile_left = "medium_blunt_tank_dual",
			damage_window_end = 0.42,
			impact_sound_event = "hammer_2h_hit",
			charge_value = "heavy_attack",
			anim_end_event = "attack_finished",
			damage_profile_right = "medium_blunt_tank_dual",
			dedicated_target_range = 2.5,
			uninterruptible = true,
			anim_event = "attack_swing_heavy_left_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.25,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 0.85,
					end_time = 0.15,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.75,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.1,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.7,
					action = "action_one",
					release_required = "action_one_hold",
					end_time = 1.1,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.1,
					action = "action_one",
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 0.5,
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
			enter_function = function (attacker_unit, input_extension)
				return input_extension:reset_release_input()
			end,
			dual_hit_stop_anims = {
				left = "shake_hit",
				right = "attack_hit"
			},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep_right = {
				{
					0.26666666666666666,
					0.5159835815429688,
					0.335909366607666,
					0.13469535112380981,
					-0.5986664295196533,
					-0.22196927666664124,
					0.15760773420333862,
					-0.7533179521560669
				},
				{
					0.29777777777777775,
					0.4815683364868164,
					0.44315052032470703,
					0.1052362322807312,
					-0.4813177287578583,
					-0.27839094400405884,
					0.07050122320652008,
					-0.8281673789024353
				},
				{
					0.3288888888888889,
					0.42522144317626953,
					0.5582351684570312,
					0.05046498775482178,
					-0.32423874735832214,
					-0.33436110615730286,
					-0.013259543105959892,
					-0.8848141431808472
				},
				{
					0.36,
					0.34302330017089844,
					0.641972541809082,
					0.01797538995742798,
					-0.16361278295516968,
					-0.38203465938568115,
					-0.11320219933986664,
					-0.902477502822876
				},
				{
					0.3911111111111111,
					0.23041439056396484,
					0.660184383392334,
					-0.09702461957931519,
					0.11198609322309494,
					-0.41556796431541443,
					-0.1744474619626999,
					-0.885624349117279
				},
				{
					0.42222222222222217,
					0.05782604217529297,
					0.6502432823181152,
					-0.17595112323760986,
					0.40240731835365295,
					-0.4008876085281372,
					-0.2775212228298187,
					-0.7748157978057861
				},
				{
					0.4533333333333333,
					-0.1553049087524414,
					0.5616488456726074,
					-0.26309889554977417,
					0.6676645278930664,
					-0.3222145736217499,
					-0.37100347876548767,
					-0.5592480301856995
				}
			},
			baked_sweep_left = {
				{
					0.26666666666666666,
					0.28891944885253906,
					0.34432220458984375,
					0.022870004177093506,
					-0.7112331986427307,
					-0.2814701497554779,
					0.32855603098869324,
					-0.5540512800216675
				},
				{
					0.29777777777777775,
					0.22621440887451172,
					0.5096778869628906,
					0.011641323566436768,
					-0.46250513195991516,
					-0.4156496524810791,
					0.21353645622730255,
					-0.7534763216972351
				},
				{
					0.3288888888888889,
					-0.004611968994140625,
					0.7643823623657227,
					-0.11498332023620605,
					0.19557605683803558,
					-0.47286203503608704,
					-0.06238310784101486,
					-0.8568896651268005
				},
				{
					0.36,
					-0.30275440216064453,
					0.711824893951416,
					-0.2953203320503235,
					0.5634450316429138,
					-0.3315998911857605,
					-0.28148120641708374,
					-0.7023813724517822
				},
				{
					0.3911111111111111,
					-0.4653797149658203,
					0.41956615447998047,
					-0.4361359775066376,
					0.6702195405960083,
					-0.2804245054721832,
					-0.35347336530685425,
					-0.589257538318634
				},
				{
					0.42222222222222217,
					-0.5335521697998047,
					0.12540531158447266,
					-0.47935646772384644,
					0.7536861896514893,
					-0.2346968799829483,
					-0.39009711146354675,
					-0.47402405738830566
				},
				{
					0.4533333333333333,
					-0.5541400909423828,
					0.015500068664550781,
					-0.5182145833969116,
					0.8014243841171265,
					-0.20546598732471466,
					-0.37823784351348877,
					-0.4152575433254242
				}
			}
		},
		light_attack_left = {
			damage_window_start = 0.37,
			range_mod = 1.2,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			weapon_action_hand = "right",
			additional_critical_strike_chance = 0,
			damage_profile = "light_blunt_tank_dual",
			hit_effect = "melee_hit_hammers_1h",
			damage_window_end = 0.49,
			impact_sound_event = "hammer_2h_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_left",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.9,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_right",
					start_time = 0.5,
					action = "action_one",
					end_time = 1.2,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.2,
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
					start_time = 0.4,
					action = "action_wield",
					input = "action_wield"
				}
			},
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.33666666666666667,
					0.49268341064453125,
					0.5050802230834961,
					0.01943117380142212,
					-0.3810240626335144,
					-0.5343517661094666,
					0.34831249713897705,
					-0.6693035960197449
				},
				{
					0.36777777777777776,
					0.39540863037109375,
					0.5772194862365723,
					0.012752830982208252,
					-0.29641193151474,
					-0.5805601477622986,
					0.2724352777004242,
					-0.707720935344696
				},
				{
					0.3988888888888889,
					0.24529266357421875,
					0.6558966636657715,
					-0.007927358150482178,
					-0.1230495348572731,
					-0.6229424476623535,
					0.11886893957853317,
					-0.7633293271064758
				},
				{
					0.43,
					-0.0068569183349609375,
					0.7122154235839844,
					-0.05634647607803345,
					0.20588494837284088,
					-0.5898888111114502,
					-0.18633556365966797,
					-0.7582359313964844
				},
				{
					0.4611111111111111,
					-0.3275012969970703,
					0.5483975410461426,
					-0.16830521821975708,
					-0.5752348303794861,
					0.31354090571403503,
					0.5848202705383301,
					0.4783119261264801
				},
				{
					0.4922222222222222,
					-0.4165468215942383,
					0.3885321617126465,
					-0.26182299852371216,
					-0.6636644601821899,
					0.12978851795196533,
					0.6838765740394592,
					0.27389270067214966
				},
				{
					0.5233333333333333,
					-0.4349985122680664,
					0.2836728096008301,
					-0.3531695306301117,
					-0.6087589263916016,
					0.026772819459438324,
					0.7487943768501282,
					0.26077330112457275
				}
			}
		},
		light_attack_down = {
			damage_window_start = 0.35,
			range_mod = 1.2,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			weapon_action_hand = "right",
			width_mod = 30,
			use_precision_sweep = true,
			additional_critical_strike_chance = 0,
			damage_profile = "light_blunt_smiter",
			hit_effect = "melee_hit_hammers_1h",
			damage_window_end = 0.45,
			impact_sound_event = "hammer_2h_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_down",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.15,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.9,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
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
			baked_sweep = {
				{
					0.31666666666666665,
					-0.23073196411132812,
					0.2869248390197754,
					0.1634393334388733,
					-0.6650090217590332,
					0.2825893759727478,
					-0.3144351541996002,
					-0.6156596541404724
				},
				{
					0.34444444444444444,
					-0.21551227569580078,
					0.29799842834472656,
					0.17677819728851318,
					-0.7026667594909668,
					0.22465533018112183,
					-0.24483148753643036,
					-0.6291636824607849
				},
				{
					0.37222222222222223,
					-0.1777029037475586,
					0.4568963050842285,
					0.18194949626922607,
					-0.5810360908508301,
					0.21810263395309448,
					-0.1575038880109787,
					-0.7681281566619873
				},
				{
					0.4,
					-0.0858612060546875,
					0.6650443077087402,
					0.10940158367156982,
					-0.17823755741119385,
					0.19992311298847198,
					-0.08795013278722763,
					-0.9594409465789795
				},
				{
					0.42777777777777776,
					0.023102760314941406,
					0.762871265411377,
					-0.13127058744430542,
					0.4326539933681488,
					0.11554987728595734,
					0.04198924079537392,
					-0.8931381106376648
				},
				{
					0.45555555555555555,
					0.3695411682128906,
					0.3538932800292969,
					-0.8035145401954651,
					0.8415275812149048,
					0.18500065803527832,
					0.11772825568914413,
					-0.49370652437210083
				},
				{
					0.48333333333333334,
					0.7905998229980469,
					0.25870466232299805,
					-0.6461794376373291,
					0.6474677920341492,
					0.41005852818489075,
					0.48333966732025146,
					-0.42310795187950134
				}
			}
		},
		light_attack_left_diagonal = {
			damage_window_start = 0.3,
			range_mod = 1.2,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			weapon_action_hand = "left",
			additional_critical_strike_chance = 0,
			damage_profile = "light_blunt_tank_dual_diag",
			hit_effect = "melee_hit_hammers_1h",
			damage_window_end = 0.4,
			impact_sound_event = "hammer_2h_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_left_diagonal",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default",
					start_time = 0.6,
					action = "action_one",
					end_time = 1.1,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.1,
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
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.26666666666666666,
					0.2607431411743164,
					0.40701961517333984,
					0.031665027141571045,
					-0.7131140232086182,
					-0.28544795513153076,
					0.3315790891647339,
					-0.5477619171142578
				},
				{
					0.29444444444444445,
					0.17911052703857422,
					0.5413603782653809,
					0.00649571418762207,
					-0.5267981290817261,
					-0.38747337460517883,
					0.2378944307565689,
					-0.7181604504585266
				},
				{
					0.32222222222222224,
					-0.06120777130126953,
					0.7335448265075684,
					-0.12642496824264526,
					0.09080632776021957,
					-0.4546668827533722,
					-0.03872467577457428,
					-0.8851737976074219
				},
				{
					0.35,
					-0.2883329391479492,
					0.7065577507019043,
					-0.2691258192062378,
					0.5225124359130859,
					-0.39100080728530884,
					-0.21608887612819672,
					-0.7262263298034668
				},
				{
					0.37777777777777777,
					-0.45212554931640625,
					0.5089502334594727,
					-0.3981460630893707,
					0.708357572555542,
					-0.3919859230518341,
					-0.2561168372631073,
					-0.5281862616539001
				},
				{
					0.40555555555555556,
					-0.5776491165161133,
					0.18810319900512695,
					-0.46436387300491333,
					0.7615182995796204,
					-0.302379310131073,
					-0.33445411920547485,
					-0.4656146764755249
				},
				{
					0.43333333333333335,
					-0.5703277587890625,
					0.010406494140625,
					-0.5036858916282654,
					0.7644318342208862,
					-0.2096608579158783,
					-0.38957467675209045,
					-0.46895402669906616
				}
			}
		},
		light_attack_right_uppercut = {
			damage_window_start = 0.3,
			range_mod = 1.2,
			anim_end_event = "attack_finished",
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			weapon_action_hand = "left",
			additional_critical_strike_chance = 0,
			damage_profile = "light_blunt_tank_dual_upper",
			hit_effect = "melee_hit_hammers_1h",
			damage_window_end = 0.41,
			impact_sound_event = "hammer_2h_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_up",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.1,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.2,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.75,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_left",
					start_time = 0.5,
					action = "action_one",
					end_time = 1.1,
					input = "action_one"
				},
				{
					sub_action = "default",
					start_time = 1.1,
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
			hit_mass_count = TANK_HIT_MASS_COUNT,
			baked_sweep = {
				{
					0.26666666666666666,
					-0.3308134078979492,
					0.5777060985565186,
					-0.281805157661438,
					-0.14319734275341034,
					0.8249105215072632,
					-0.003108633914962411,
					-0.5468157529830933
				},
				{
					0.2961111111111111,
					-0.30989742279052734,
					0.6263320446014404,
					-0.2674676775932312,
					-0.1314697265625,
					0.8483520746231079,
					0.10143688321113586,
					-0.5027177333831787
				},
				{
					0.32555555555555554,
					-0.2563953399658203,
					0.6817059516906738,
					-0.22608017921447754,
					-0.07850714027881622,
					0.8384602069854736,
					0.19743022322654724,
					-0.5018390417098999
				},
				{
					0.355,
					-0.11140155792236328,
					0.7183096408843994,
					-0.13786888122558594,
					0.09430941194295883,
					0.7403334975242615,
					0.40895822644233704,
					-0.5251335501670837
				},
				{
					0.3844444444444444,
					0.18275833129882812,
					0.624387264251709,
					0.020175397396087646,
					0.2894614040851593,
					0.5216925740242004,
					0.7217246294021606,
					-0.35094526410102844
				},
				{
					0.41388888888888886,
					0.45080089569091797,
					0.29636383056640625,
					0.08170884847640991,
					0.5302171111106873,
					0.1358398199081421,
					0.804135262966156,
					-0.23191338777542114
				},
				{
					0.4433333333333333,
					0.5021533966064453,
					0.0242617130279541,
					-0.10945528745651245,
					0.4726690351963043,
					-0.5404976606369019,
					0.4802544116973877,
					-0.503787636756897
				}
			}
		},
		light_attack_bopp = {
			damage_window_start = 0.15,
			range_mod = 1.05,
			kind = "sweep",
			first_person_hit_anim = "shake_hit",
			no_damage_impact_sound_event = "blunt_hit_armour",
			weapon_action_hand = "right",
			width_mod = 30,
			additional_critical_strike_chance = 0,
			use_precision_sweep = true,
			damage_profile = "light_blunt_smiter_stab",
			hit_effect = "melee_hit_hammers_1h",
			damage_window_end = 0.25,
			impact_sound_event = "hammer_2h_hit",
			anim_end_event = "attack_finished",
			dedicated_target_range = 2.5,
			anim_event = "attack_swing_stab",
			hit_stop_anim = "attack_hit",
			total_time = 2.1,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.4,
			buff_data = {
				{
					start_time = 0,
					external_multiplier = 1.25,
					end_time = 0.3,
					buff_name = "planted_fast_decrease_movement"
				},
				{
					start_time = 0.3,
					external_multiplier = 0.9,
					end_time = 0.5,
					buff_name = "planted_fast_decrease_movement"
				}
			},
			allowed_chain_actions = {
				{
					sub_action = "default_down",
					start_time = 0.45,
					action = "action_one",
					end_time = 1.35,
					input = "action_one"
				},
				{
					sub_action = "default_down",
					start_time = 0.45,
					action = "action_one",
					end_time = 1.35,
					input = "action_one_hold"
				},
				{
					sub_action = "default",
					start_time = 1.25,
					action = "action_one",
					input = "action_one"
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
			baked_sweep = {
				{
					0.11666666666666667,
					0.3803062438964844,
					-0.4722442626953125,
					0.04841482639312744,
					0.19110064208507538,
					0.6868842244148254,
					0.6531278491020203,
					-0.2551363706588745
				},
				{
					0.14444444444444443,
					0.40807151794433594,
					-0.43961310386657715,
					0.016216397285461426,
					0.20809993147850037,
					0.6783928871154785,
					0.6395701169967651,
					-0.29568150639533997
				},
				{
					0.17222222222222222,
					0.41220569610595703,
					-0.36382532119750977,
					0.0019752979278564453,
					0.21969567239284515,
					0.6690059304237366,
					0.6294548511505127,
					-0.3285597562789917
				},
				{
					0.2,
					0.3746938705444336,
					-0.1962747573852539,
					-0.011227965354919434,
					0.23000429570674896,
					0.6687665581703186,
					0.611832857131958,
					-0.3542737066745758
				},
				{
					0.22777777777777777,
					0.28075599670410156,
					0.13073396682739258,
					-0.022794723510742188,
					0.24400974810123444,
					0.6647036075592041,
					0.6060956716537476,
					-0.36232081055641174
				},
				{
					0.25555555555555554,
					0.160614013671875,
					0.4572012424468994,
					-0.014931678771972656,
					0.2482590526342392,
					0.6457399129867554,
					0.6260493993759155,
					-0.35979098081588745
				},
				{
					0.2833333333333333,
					0.09310054779052734,
					0.5635325908660889,
					-0.023715555667877197,
					0.20893104374408722,
					0.6662145256996155,
					0.6329171061515808,
					-0.3345474302768707
				}
			}
		},
		push = {
			damage_window_start = 0.05,
			outer_push_angle = 180,
			kind = "push_stagger",
			anim_end_event = "attack_finished",
			no_damage_impact_sound_event = "blunt_hit_armour",
			damage_profile_outer = "light_push",
			weapon_action_hand = "left",
			push_angle = 100,
			hit_effect = "melee_hit_hammers_1h",
			damage_window_end = 0.2,
			impact_sound_event = "hammer_2h_hit",
			charge_value = "action_push",
			dedicated_target_range = 2,
			anim_event = "attack_push",
			damage_profile_inner = "medium_push",
			total_time = 0.8,
			anim_end_event_condition_func = function (unit, end_reason)
				return end_reason ~= "new_interupting_action" and end_reason ~= "action_complete"
			end,
			anim_time_scale = time_mod * 1.2,
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
					external_multiplier = 0.85,
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
}
weapon_template.right_hand_unit = "units/weapons/player/wpn_empire_short_sword/wpn_empire_short_sword"
weapon_template.right_hand_attachment_node_linking = AttachmentNodeLinking.one_handed_melee_weapon.right
weapon_template.left_hand_unit = "units/weapons/player/wpn_empire_short_sword/wpn_empire_short_sword"
weapon_template.left_hand_attachment_node_linking = AttachmentNodeLinking.one_handed_melee_weapon.left
weapon_template.display_unit = "units/weapons/weapon_display/display_dual_hammers"
weapon_template.buff_type = "MELEE_1H"
weapon_template.weapon_type = "MACE_1H"
weapon_template.max_fatigue_points = 8
weapon_template.dodge_count = 3
weapon_template.block_angle = 90
weapon_template.outer_block_angle = 360
weapon_template.block_fatigue_point_multiplier = 0.5
weapon_template.outer_block_fatigue_point_multiplier = 2
weapon_template.sound_event_block_within_arc = "weapon_foley_blunt_1h_block_wood"
weapon_template.buffs = {
	change_dodge_distance = {
		external_optional_multiplier = 1.15
	},
	change_dodge_speed = {
		external_optional_multiplier = 1.15
	}
}
weapon_template.wield_anim = "to_dual_hammers"
weapon_template.attack_meta_data = {
	tap_attack = {
		penetrating = false,
		arc = 0
	},
	hold_attack = {
		penetrating = true,
		arc = 0
	}
}
weapon_template.aim_assist_settings = {
	max_range = 5,
	no_aim_input_multiplier = 0,
	base_multiplier = 0,
	target_node = "j_neck",
	effective_max_range = 4,
	breed_scalars = {
		skaven_storm_vermin = 1,
		skaven_clan_rat = 0.5,
		skaven_slave = 0.5
	}
}
weapon_template.tooltip_keywords = {
	"weapon_keyword_crowd_control",
	"weapon_keyword_fast_attacks",
	"weapon_keyword_wide_sweeps"
}
weapon_template.tooltip_compare = {
	light = {
		action_name = "action_one",
		sub_action_name = "light_attack_left"
	},
	heavy = {
		action_name = "action_one",
		sub_action_name = "heavy_attack_2"
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
weapon_template.wwise_dep_left_hand = {
	"wwise/one_handed_hammers"
}
weapon_template.wwise_dep_right_hand = {
	"wwise/one_handed_hammers"
}

return {
	dual_wield_hammers_template = table.clone(weapon_template)
}
