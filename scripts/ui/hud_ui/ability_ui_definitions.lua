local SIZE_X = 1920
local SIZE_Y = 1080
local RETAINED_MODE_ENABLED = true
local scenegraph_definition = {
	screen = {
		scale = "hud_scale_fit",
		position = {
			0,
			0,
			UILayer.hud
		},
		size = {
			SIZE_X,
			SIZE_Y
		}
	},
	ability_root = {
		vertical_alignment = "bottom",
		parent = "screen",
		horizontal_alignment = "center",
		position = {
			0,
			0,
			10
		},
		size = {
			624,
			66
		}
	}
}
local ability_widget_definition = {
	scenegraph_id = "ability_root",
	element = {
		passes = {
			{
				pass_type = "texture",
				style_id = "ability_effect_right",
				texture_id = "texture_id",
				content_id = "ability_effect",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return content.parent.can_use
				end
			},
			{
				pass_type = "texture",
				style_id = "ability_effect_top_right",
				texture_id = "texture_id",
				content_id = "ability_effect_top",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return content.parent.can_use
				end
			},
			{
				style_id = "ability_effect_left",
				pass_type = "texture_uv",
				content_id = "ability_effect",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return content.parent.can_use
				end
			},
			{
				style_id = "ability_effect_top_left",
				pass_type = "texture_uv",
				content_id = "ability_effect_top",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return content.parent.can_use
				end
			},
			{
				pass_type = "texture",
				style_id = "ability_bar_highlight",
				texture_id = "ability_bar_highlight",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return not content.on_cooldown
				end
			},
			{
				style_id = "input_text",
				pass_type = "text",
				text_id = "input_text",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content, style)
					return not Managers.input:is_device_active("gamepad")
				end
			},
			{
				style_id = "input_text_shadow",
				pass_type = "text",
				text_id = "input_text",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content, style)
					return not Managers.input:is_device_active("gamepad")
				end
			},
			{
				style_id = "input_text_gamepad",
				pass_type = "text",
				text_id = "input_text_gamepad",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content, style)
					return Managers.input:is_device_active("gamepad") and content.can_use
				end
			},
			{
				style_id = "input_text_shadow_gamepad",
				pass_type = "text",
				text_id = "input_text_gamepad",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content, style)
					return Managers.input:is_device_active("gamepad") and content.can_use
				end
			},
			{
				pass_type = "texture",
				style_id = "input_texture_left_shoulder",
				texture_id = "input_texture_left_shoulder",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content, style)
					return Managers.input:is_device_active("gamepad") and content.can_use
				end
			},
			{
				pass_type = "texture",
				style_id = "input_texture_right_shoulder",
				texture_id = "input_texture_right_shoulder",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content, style)
					return Managers.input:is_device_active("gamepad") and content.can_use
				end
			}
		}
	},
	content = {
		input_text_gamepad = "+",
		ability_bar_highlight = "hud_player_ability_bar_glow",
		input_text = "",
		on_cooldown = false,
		can_use = false,
		ability_effect = {
			texture_id = "ability_effect",
			uvs = {
				{
					0,
					0
				},
				{
					1,
					1
				}
			}
		},
		ability_effect_top = {
			texture_id = "ability_effect_top",
			uvs = {
				{
					0,
					0
				},
				{
					1,
					1
				}
			}
		},
		input_texture_left_shoulder = ButtonTextureByName("left_shoulder", "xb1").texture,
		input_texture_right_shoulder = ButtonTextureByName("right_shoulder", "xb1").texture
	},
	style = {
		input_text = {
			vertical_alignment = "center",
			font_type = "hell_shark",
			font_size = 16,
			horizontal_alignment = "center",
			text_color = Colors.get_color_table_with_alpha("white", 255),
			size = {
				22,
				18
			},
			offset = {
				38,
				78,
				2
			}
		},
		input_text_shadow = {
			vertical_alignment = "center",
			font_type = "hell_shark",
			font_size = 16,
			horizontal_alignment = "center",
			text_color = Colors.get_color_table_with_alpha("black", 255),
			size = {
				22,
				18
			},
			offset = {
				40,
				76,
				1
			}
		},
		input_text_gamepad = {
			vertical_alignment = "center",
			font_type = "hell_shark",
			font_size = 24,
			horizontal_alignment = "center",
			text_color = {
				0,
				255,
				255,
				255
			},
			offset = {
				0,
				83,
				20
			}
		},
		input_text_shadow_gamepad = {
			vertical_alignment = "center",
			font_type = "hell_shark",
			font_size = 24,
			horizontal_alignment = "center",
			text_color = {
				0,
				0,
				0,
				0
			},
			offset = {
				0,
				81,
				19
			}
		},
		input_texture_left_shoulder = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			color = {
				0,
				255,
				255,
				255
			},
			offset = {
				-35,
				83,
				20
			},
			texture_size = {
				ButtonTextureByName("left_shoulder", "xb1").size[1] * 0.85,
				ButtonTextureByName("left_shoulder", "xb1").size[2] * 0.85
			}
		},
		input_texture_right_shoulder = {
			vertical_alignment = "center",
			horizontal_alignment = "center",
			color = {
				0,
				255,
				255,
				255
			},
			offset = {
				25,
				83,
				20
			},
			texture_size = {
				ButtonTextureByName("right_shoulder", "xb1").size[1] * 0.85,
				ButtonTextureByName("right_shoulder", "xb1").size[2] * 0.85
			}
		},
		ability_effect_right = {
			vertical_alignment = "bottom",
			horizontal_alignment = "right",
			texture_size = {
				110,
				170
			},
			offset = {
				0,
				-2,
				0
			},
			color = {
				0,
				255,
				255,
				255
			}
		},
		ability_effect_top_right = {
			vertical_alignment = "bottom",
			horizontal_alignment = "right",
			texture_size = {
				110,
				170
			},
			offset = {
				0,
				-2,
				1
			},
			color = {
				0,
				255,
				255,
				255
			}
		},
		ability_effect_left = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			texture_size = {
				110,
				170
			},
			offset = {
				-9,
				-2,
				0
			},
			color = {
				0,
				255,
				255,
				255
			}
		},
		ability_effect_top_left = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			texture_size = {
				110,
				170
			},
			offset = {
				-9,
				-2,
				1
			},
			color = {
				0,
				255,
				255,
				255
			}
		},
		ability_bar_highlight = {
			vertical_alignment = "bottom",
			horizontal_alignment = "center",
			texture_size = {
				488,
				70
			},
			color = {
				0,
				255,
				255,
				255
			},
			offset = {
				0,
				22,
				2
			}
		}
	},
	offset = {
		0,
		0,
		0
	}
}
local thornsister_passive_widget_definition = {
	scenegraph_id = "ability_root",
	element = {
		passes = {
			{
				pass_type = "texture",
				style_id = "ability_effect_right",
				texture_id = "texture_id",
				content_id = "ability_effect",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return content.parent.is_active
				end
			},
			{
				pass_type = "texture",
				style_id = "ability_effect_top_right",
				texture_id = "texture_id",
				content_id = "ability_effect_top",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return content.parent.is_active
				end
			},
			{
				style_id = "ability_effect_left",
				pass_type = "texture_uv",
				content_id = "ability_effect",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return content.parent.is_active
				end
			},
			{
				style_id = "ability_effect_top_left",
				pass_type = "texture_uv",
				content_id = "ability_effect_top",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return content.parent.is_active
				end
			},
			{
				style_id = "horns_left",
				pass_type = "texture_uv",
				content_id = "horns",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return content.parent.is_active
				end
			},
			{
				pass_type = "texture",
				style_id = "horns_right",
				texture_id = "texture_id",
				content_id = "horns",
				retained_mode = RETAINED_MODE_ENABLED,
				content_check_function = function (content)
					return content.parent.is_active
				end
			}
		}
	},
	content = {
		is_active = false,
		ability_effect = {
			texture_id = "ability_effect_thornsister",
			uvs = {
				{
					0,
					0
				},
				{
					1,
					1
				}
			}
		},
		ability_effect_top = {
			texture_id = "ability_effect_top_thornsister",
			uvs = {
				{
					0,
					0
				},
				{
					1,
					1
				}
			}
		},
		horns = {
			texture_id = "thornsister_passive_effect",
			uvs = {
				{
					0,
					0
				},
				{
					1,
					1
				}
			}
		}
	},
	style = {
		ability_effect_right = {
			vertical_alignment = "bottom",
			horizontal_alignment = "right",
			texture_size = {
				110,
				170
			},
			offset = {
				0,
				-2,
				0
			},
			color = {
				255,
				255,
				255,
				255
			}
		},
		ability_effect_top_right = {
			vertical_alignment = "bottom",
			horizontal_alignment = "right",
			texture_size = {
				110,
				170
			},
			offset = {
				0,
				-2,
				1
			},
			color = {
				255,
				255,
				255,
				255
			}
		},
		ability_effect_left = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			texture_size = {
				110,
				170
			},
			offset = {
				-9,
				-2,
				0
			},
			color = {
				255,
				255,
				255,
				255
			}
		},
		ability_effect_top_left = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			texture_size = {
				110,
				170
			},
			offset = {
				-9,
				-2,
				1
			},
			color = {
				255,
				255,
				255,
				255
			}
		},
		horns_left = {
			vertical_alignment = "bottom",
			horizontal_alignment = "left",
			texture_size = {
				76.7,
				57.85
			},
			offset = {
				12,
				32,
				10
			},
			color = {
				0,
				255,
				255,
				255
			}
		},
		horns_right = {
			vertical_alignment = "bottom",
			horizontal_alignment = "right",
			texture_size = {
				76.7,
				57.85
			},
			offset = {
				-13,
				32,
				10
			},
			color = {
				0,
				255,
				255,
				255
			}
		}
	},
	offset = {
		0,
		0,
		2
	}
}
local widget_definitions = {
	ability = ability_widget_definition,
	thornsister_passive = thornsister_passive_widget_definition
}

return {
	scenegraph_definition = scenegraph_definition,
	widget_definitions = widget_definitions
}
