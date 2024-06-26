﻿-- chunkname: @scripts/ui/views/hero_view/windows/definitions/hero_window_crafting_definitions.lua

local window_default_settings = UISettings.game_start_windows
local window_background = window_default_settings.background
local window_frame = window_default_settings.frame
local window_size = window_default_settings.size
local window_spacing = window_default_settings.spacing
local window_frame_width = UIFrameSettings[window_frame].texture_sizes.vertical[1]
local window_frame_height = UIFrameSettings[window_frame].texture_sizes.horizontal[2]
local window_text_width = window_size[1] - (window_frame_width * 2 + 60)
local scenegraph_definition = {
	root = {
		is_root = true,
		size = {
			1920,
			1080,
		},
		position = {
			0,
			0,
			UILayer.default,
		},
	},
	root_fit = {
		scale = "fit",
		size = {
			1920,
			1080,
		},
		position = {
			0,
			0,
			UILayer.default,
		},
	},
	menu_root = {
		horizontal_alignment = "center",
		parent = "root",
		vertical_alignment = "center",
		size = {
			1920,
			1080,
		},
		position = {
			0,
			0,
			0,
		},
	},
	window = {
		horizontal_alignment = "center",
		parent = "menu_root",
		vertical_alignment = "center",
		size = window_size,
		position = {
			0,
			0,
			1,
		},
	},
	window_top = {
		horizontal_alignment = "center",
		parent = "window",
		vertical_alignment = "top",
		size = {
			window_size[1],
			221,
		},
		position = {
			0,
			0,
			25,
		},
	},
	window_top_edge = {
		horizontal_alignment = "center",
		parent = "window_top",
		vertical_alignment = "bottom",
		size = {
			window_size[1],
			78,
		},
		position = {
			0,
			-78,
			10,
		},
	},
	window_center = {
		horizontal_alignment = "center",
		parent = "window_top",
		vertical_alignment = "bottom",
		size = {
			window_size[1],
			400,
		},
		position = {
			0,
			-457,
			-25,
		},
	},
	window_bottom = {
		horizontal_alignment = "center",
		parent = "window",
		vertical_alignment = "bottom",
		size = {
			window_size[1],
			167,
		},
		position = {
			0,
			0,
			25,
		},
	},
	title_text = {
		horizontal_alignment = "center",
		parent = "window_top",
		vertical_alignment = "top",
		size = {
			window_size[1] - 40,
			50,
		},
		position = {
			0,
			-10,
			1,
		},
	},
	title_text_divider = {
		horizontal_alignment = "center",
		parent = "title_text",
		vertical_alignment = "bottom",
		size = {
			264,
			32,
		},
		position = {
			0,
			-28,
			1,
		},
	},
	description_text = {
		horizontal_alignment = "center",
		parent = "title_text_divider",
		vertical_alignment = "top",
		size = {
			window_size[1] - 40,
			50,
		},
		position = {
			0,
			-36,
			1,
		},
	},
	page_button_next = {
		horizontal_alignment = "right",
		parent = "window_top",
		vertical_alignment = "bottom",
		size = {
			window_size[1] * 0.4,
			42,
		},
		position = {
			0,
			-42,
			1,
		},
	},
	page_button_previous = {
		horizontal_alignment = "left",
		parent = "window_top",
		vertical_alignment = "bottom",
		size = {
			window_size[1] * 0.4,
			42,
		},
		position = {
			0,
			-42,
			1,
		},
	},
	page_button_divider = {
		horizontal_alignment = "center",
		parent = "window_top",
		vertical_alignment = "bottom",
		size = {
			window_size[1],
			0,
		},
		position = {
			0,
			0,
			9,
		},
	},
	page_text_area = {
		horizontal_alignment = "center",
		parent = "window_top",
		vertical_alignment = "bottom",
		size = {
			window_size[1] * 0.2,
			42,
		},
		position = {
			0,
			-42,
			5,
		},
	},
	page_button_edge_right = {
		horizontal_alignment = "left",
		parent = "page_button_next",
		vertical_alignment = "center",
		size = {
			0,
			42,
		},
		position = {
			0,
			0,
			10,
		},
	},
	page_button_edge_left = {
		horizontal_alignment = "right",
		parent = "page_button_previous",
		vertical_alignment = "center",
		size = {
			0,
			42,
		},
		position = {
			0,
			0,
			10,
		},
	},
	recipes = {
		horizontal_alignment = "center",
		parent = "page_button_divider",
		vertical_alignment = "bottom",
		size = {
			window_size[1],
			window_size[2] / 2 - 40,
		},
		position = {
			0,
			5,
			5,
		},
	},
	recipes_top_divider = {
		horizontal_alignment = "center",
		parent = "recipes",
		vertical_alignment = "top",
		size = {
			window_size[1],
			0,
		},
		position = {
			0,
			0,
			1,
		},
	},
	item_grid_fg = {
		horizontal_alignment = "center",
		parent = "window_center",
		vertical_alignment = "top",
		size = {
			window_size[1],
			440,
		},
		position = {
			0,
			0,
			20,
		},
	},
}
local title_text_style = {
	dynamic_font_size = true,
	font_size = 36,
	font_type = "hell_shark_header",
	horizontal_alignment = "center",
	localize = false,
	upper_case = true,
	use_shadow = true,
	vertical_alignment = "bottom",
	word_wrap = true,
	text_color = Colors.get_color_table_with_alpha("font_title", 255),
	offset = {
		0,
		0,
		2,
	},
}
local description_text_style = {
	font_size = 20,
	font_type = "hell_shark",
	horizontal_alignment = "center",
	localize = false,
	use_shadow = true,
	vertical_alignment = "top",
	word_wrap = true,
	text_color = Colors.get_color_table_with_alpha("white", 255),
	offset = {
		0,
		0,
		2,
	},
}
local page_number_left_text_style = {
	font_size = 20,
	font_type = "hell_shark",
	horizontal_alignment = "right",
	localize = false,
	use_shadow = true,
	vertical_alignment = "center",
	word_wrap = true,
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		-(window_size[1] * 0.1 + 5),
		4,
		2,
	},
}
local page_number_right_text_style = {
	font_size = 20,
	font_type = "hell_shark",
	horizontal_alignment = "left",
	localize = false,
	use_shadow = true,
	vertical_alignment = "center",
	word_wrap = true,
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		window_size[1] * 0.1 + 4,
		4,
		2,
	},
}
local page_number_center_text_style = {
	font_size = 20,
	font_type = "hell_shark",
	horizontal_alignment = "center",
	localize = false,
	use_shadow = true,
	vertical_alignment = "center",
	word_wrap = true,
	text_color = Colors.get_color_table_with_alpha("font_default", 255),
	offset = {
		0,
		4,
		2,
	},
}

local function create_window_divider(scenegraph_id, size)
	local widget = {
		element = {
			passes = {
				{
					pass_type = "tiled_texture",
					style_id = "bottom_edge",
					texture_id = "bottom_edge",
				},
				{
					pass_type = "texture",
					style_id = "edge_holder_left",
					texture_id = "edge_holder_left",
				},
				{
					pass_type = "texture",
					style_id = "edge_holder_right",
					texture_id = "edge_holder_right",
				},
			},
		},
		content = {
			bottom_edge = "menu_frame_09_divider",
			edge_holder_left = "menu_frame_09_divider_left",
			edge_holder_right = "menu_frame_09_divider_right",
		},
		style = {
			bottom_edge = {
				color = {
					255,
					255,
					255,
					255,
				},
				offset = {
					5,
					0,
					0,
				},
				size = {
					size[1] - 10,
					5,
				},
				texture_tiling_size = {
					size[1] - 10,
					5,
				},
			},
			edge_holder_left = {
				color = {
					255,
					255,
					255,
					255,
				},
				offset = {
					3,
					-6,
					10,
				},
				size = {
					9,
					17,
				},
			},
			edge_holder_right = {
				color = {
					255,
					255,
					255,
					255,
				},
				offset = {
					size[1] - 12,
					-6,
					10,
				},
				size = {
					9,
					17,
				},
			},
		},
		scenegraph_id = scenegraph_id,
		offset = {
			0,
			0,
			0,
		},
	}

	return widget
end

local function create_vertical_window_divider(scenegraph_id, size)
	local widget = {
		element = {
			passes = {
				{
					pass_type = "tiled_texture",
					style_id = "edge",
					texture_id = "edge",
				},
				{
					pass_type = "texture",
					style_id = "edge_holder_top",
					texture_id = "edge_holder_top",
				},
				{
					pass_type = "texture",
					style_id = "edge_holder_bottom",
					texture_id = "edge_holder_bottom",
				},
			},
		},
		content = {
			edge = "menu_frame_09_divider_vertical",
			edge_holder_bottom = "menu_frame_09_divider_bottom",
			edge_holder_top = "menu_frame_09_divider_top",
		},
		style = {
			edge = {
				color = {
					255,
					255,
					255,
					255,
				},
				offset = {
					0,
					6,
					6,
				},
				size = {
					5,
					size[2] - 9,
				},
				texture_tiling_size = {
					5,
					size[2] - 9,
				},
			},
			edge_holder_top = {
				color = {
					255,
					255,
					255,
					255,
				},
				offset = {
					-6,
					size[2] - 7,
					10,
				},
				size = {
					17,
					9,
				},
			},
			edge_holder_bottom = {
				color = {
					255,
					255,
					255,
					255,
				},
				offset = {
					-6,
					3,
					10,
				},
				size = {
					17,
					9,
				},
			},
		},
		scenegraph_id = scenegraph_id,
		offset = {
			0,
			0,
			0,
		},
	}

	return widget
end

local widgets = {
	window_frame = UIWidgets.create_frame("window", scenegraph_definition.window.size, window_frame, 38),
	window_background_top = UIWidgets.create_simple_texture("crafting_bg_top", "window_top"),
	window_background_top_edge = UIWidgets.create_simple_texture("crafting_bg_top_edge", "window_top_edge"),
	window_background_bottom = UIWidgets.create_simple_texture("crafting_bg_bottom", "window_bottom"),
	window_background_center = UIWidgets.create_simple_texture("crafting_bg", "window_center"),
	page_button_next = UIWidgets.create_simple_window_button("page_button_next", scenegraph_definition.page_button_next.size, Localize("menu_next"), 16),
	page_button_previous = UIWidgets.create_simple_window_button("page_button_previous", scenegraph_definition.page_button_previous.size, Localize("menu_previous"), 16),
	page_button_divider = create_window_divider("page_button_divider", scenegraph_definition.page_button_divider.size),
	page_button_edge_left = create_vertical_window_divider("page_button_edge_left", scenegraph_definition.page_button_edge_left.size),
	page_button_edge_right = create_vertical_window_divider("page_button_edge_right", scenegraph_definition.page_button_edge_right.size),
	page_text_center = UIWidgets.create_simple_text("/", "page_text_area", nil, nil, page_number_center_text_style),
	page_text_left = UIWidgets.create_simple_text("0", "page_text_area", nil, nil, page_number_left_text_style),
	page_text_right = UIWidgets.create_simple_text("0", "page_text_area", nil, nil, page_number_right_text_style),
	page_text_area = UIWidgets.create_simple_rect("page_text_area", {
		255,
		0,
		0,
		0,
	}),
	title_text = UIWidgets.create_simple_text("n/a", "title_text", nil, nil, title_text_style),
	description_text = UIWidgets.create_simple_text("n/a", "description_text", nil, nil, description_text_style),
	title_text_divider = UIWidgets.create_simple_texture("divider_01_top", "title_text_divider"),
	crafting_fg = UIWidgets.create_simple_uv_texture("crafting_fg", {
		{
			0,
			0,
		},
		{
			1,
			1,
		},
	}, "item_grid_fg"),
	crafting_fg_glow = UIWidgets.create_simple_texture("crafting_fg_glow", "item_grid_fg", nil, nil, nil, 1),
}
local generic_input_actions = {
	default = {
		{
			description_text = "input_description_navigate",
			ignore_keybinding = true,
			input_action = "d_vertical",
			priority = 1,
		},
		{
			description_text = "input_description_toggle_forge_tab",
			ignore_keybinding = true,
			input_action = "l1_r1",
			priority = 2,
		},
		{
			description_text = "input_description_select",
			input_action = "confirm",
			priority = 4,
		},
		{
			description_text = "input_description_close",
			input_action = "back",
			priority = 5,
		},
	},
}
local input_actions = {
	salvage = {
		actions = {
			{
				description_text = "hero_view_crafting_salvage",
				ignore_keybinding = true,
				input_action = "y",
				priority = 3,
			},
		},
	},
	craft_random_item = {
		actions = {
			{
				description_text = "hero_view_crafting_craft",
				ignore_keybinding = true,
				input_action = "y",
				priority = 3,
			},
		},
	},
	reroll_weapon_properties = {
		actions = {
			{
				description_text = "hero_view_crafting_properties",
				ignore_keybinding = true,
				input_action = "y",
				priority = 3,
			},
		},
	},
	reroll_weapon_traits = {
		actions = {
			{
				description_text = "hero_view_crafting_trait",
				ignore_keybinding = true,
				input_action = "y",
				priority = 3,
			},
		},
	},
	upgrade_item_rarity_common = {
		actions = {
			{
				description_text = "hero_view_crafting_upgrade",
				ignore_keybinding = true,
				input_action = "y",
				priority = 3,
			},
		},
	},
	apply_weapon_skin = {
		actions = {
			{
				description_text = "hero_view_crafting_apply_skin",
				ignore_keybinding = true,
				input_action = "y",
				priority = 3,
			},
		},
	},
}
local animation_definitions = {
	on_enter = {
		{
			end_progress = 0.3,
			name = "fade_in",
			start_progress = 0,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 0
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)

				params.render_settings.alpha_multiplier = anim_progress
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
		},
	},
	on_exit = {
		{
			end_progress = 0.3,
			name = "fade_out",
			start_progress = 0,
			init = function (ui_scenegraph, scenegraph_definition, widgets, params)
				params.render_settings.alpha_multiplier = 1
			end,
			update = function (ui_scenegraph, scenegraph_definition, widgets, progress, params)
				local anim_progress = math.easeOutCubic(progress)

				params.render_settings.alpha_multiplier = 1 - anim_progress
			end,
			on_complete = function (ui_scenegraph, scenegraph_definition, widgets, params)
				return
			end,
		},
	},
}

return {
	widgets = widgets,
	node_widgets = node_widgets,
	scenegraph_definition = scenegraph_definition,
	animation_definitions = animation_definitions,
	generic_input_actions = generic_input_actions,
	input_actions = input_actions,
}
