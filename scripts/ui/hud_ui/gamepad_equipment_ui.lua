local definitions = local_require("scripts/ui/hud_ui/gamepad_equipment_ui_definitions")
local scenegraph_definition = definitions.scenegraph_definition
local inventory_slot_backgrounds = definitions.inventory_slot_backgrounds
GamePadEquipmentUI = class(GamePadEquipmentUI)
local AMMO_PRESENTATION_DURATION = 2
local slot_size = definitions.slot_size
local NUM_SLOTS = definitions.NUM_SLOTS
local input_actions_by_slot = {
	slot_healthkit = "wield_3",
	slot_grenade = "wield_5",
	slot_potion = "wield_4",
	slot_melee = "wield_1",
	slot_ranged = "wield_2"
}
local ammo_colors = {
	normal = Colors.get_color_table_with_alpha("white", 255),
	empty = Colors.get_color_table_with_alpha("red", 255),
	focus = Colors.get_color_table_with_alpha("font_default", 150),
	unfocused = Colors.get_color_table_with_alpha("font_default", 150)
}

local function sort_by_console_hud_index(a, b)
	local a_console_hud_index = a.console_hud_index or 0
	local b_console_hud_index = b.console_hud_index or 0

	return a_console_hud_index < b_console_hud_index
end

GamePadEquipmentUI.init = function (self, ingame_ui_context)
	self.ui_renderer = ingame_ui_context.ui_renderer
	self.ingame_ui = ingame_ui_context.ingame_ui
	self.input_manager = ingame_ui_context.input_manager
	self.peer_id = ingame_ui_context.peer_id
	self.player_manager = ingame_ui_context.player_manager
	self.ui_animations = {}
	self._animations = {}
	self.render_settings = {
		alpha_multiplier = 1,
		snap_pixel_positions = false
	}
	self.is_in_inn = ingame_ui_context.is_in_inn
	self.cleanui = ingame_ui_context.cleanui
	self._retained_elements_visible = false
	local event_manager = Managers.state.event

	event_manager.register(event_manager, self, "input_changed", "event_input_changed")
	self._create_ui_elements(self)
	rawset(_G, "gamepad_equipment_ui", self)

	return 
end
GamePadEquipmentUI._create_ui_elements = function (self)
	self.ui_scenegraph = UISceneGraph.init_scenegraph(scenegraph_definition)
	local widgets = {}
	local widgets_by_name = {}
	local ammo_widgets = {}
	local ammo_widgets_by_name = {}
	local unused_widgets = {}
	local slot_widgets = {}
	local static_widgets = {}
	local count = 1

	for name, definition in pairs(definitions.widget_definitions) do
		local widget = UIWidget.init(definition)
		widgets_by_name[name] = widget
		static_widgets[count] = widget
		count = count + 1
	end

	for i, definition in ipairs(definitions.slot_widget_definitions) do
		local widget = UIWidget.init(definition)
		widgets[i] = widget
		unused_widgets[i] = widget
		slot_widgets[i] = widget
	end

	for name, definition in pairs(definitions.ammo_widget_definitions) do
		local widget = UIWidget.init(definition)
		ammo_widgets[#ammo_widgets + 1] = widget
		ammo_widgets_by_name[name] = widget
	end

	self._widgets = widgets
	self._widgets_by_name = widgets_by_name
	self._ammo_widgets = ammo_widgets
	self._ammo_widgets_by_name = ammo_widgets_by_name
	self._static_widgets = static_widgets
	self._unused_widgets = unused_widgets
	self._slot_widgets = slot_widgets
	widgets_by_name.overcharge_background.style.texture_id.color = {
		100,
		150,
		150,
		150
	}
	widgets_by_name.overcharge.style.texture_id.color = Colors.get_color_table_with_alpha("font_title", 255)
	self._added_items = {}

	UIRenderer.clear_scenegraph_queue(self.ui_renderer)
	self.event_input_changed(self)
	self.set_visible(self, true)
	self.set_dirty(self)

	self._num_added_items = 0

	return 
end
GamePadEquipmentUI.event_input_changed = function (self)
	local inventory_slots = InventorySettings.slots
	local num_inventory_slots = #inventory_slots
	local added_items = self._added_items

	for i = 1, num_inventory_slots, 1 do
		local slot = inventory_slots[i]
		local slot_name = slot.name
		local console_hud_index = slot.console_hud_index

		for k, slot_widget in ipairs(self._slot_widgets) do
			if slot_widget.content.console_hud_index == console_hud_index then
				self._set_slot_input(self, slot_widget, slot_name)
				self._set_widget_dirty(self, slot_widget)
			end
		end
	end

	self.set_dirty(self)

	return 
end
GamePadEquipmentUI._set_slot_input = function (self, widget, slot_name)
	local input_action = input_actions_by_slot[slot_name]
	local texture_data, input_text, prefix_text = self._get_input_texture_data(self, input_action)
	local text_length = (input_text and UTF8Utils.string_length(input_text)) or 0
	local max_length = 40
	local input_style = widget.style.input_text
	local ui_renderer = self.ui_renderer
	input_text = input_text and UIRenderer.crop_text_width(ui_renderer, input_text, max_length, input_style)
	widget.content.input_text = input_text or ""
	widget.content.input_action = input_action

	return 
end
GamePadEquipmentUI._get_input_texture_data = function (self, input_action)
	local input_manager = self.input_manager
	local input_service = input_manager.get_service(input_manager, "Player")
	local gamepad_active = input_manager.is_device_active(input_manager, "gamepad")
	local platform = PLATFORM

	if platform == "win32" and gamepad_active then
		platform = "xb1"
	end

	local keymap_binding = input_service.get_keymapping(input_service, input_action, platform)
	local device_type = keymap_binding[1]
	local key_index = keymap_binding[2]
	local key_action_type = keymap_binding[3]
	local prefix_text = nil

	if key_action_type == "held" then
		prefix_text = "matchmaking_prefix_hold"
	end

	local is_button_unassigned = key_index == UNASSIGNED_KEY
	local button_name = ""

	if device_type == "keyboard" then
		if is_button_unassigned then
			button_name = ""
		else
			button_name = Keyboard.button_locale_name(key_index)
		end

		return nil, button_name, prefix_text
	elseif device_type == "mouse" then
		if is_button_unassigned then
			button_name = ""
		else
			button_name = Mouse.button_name(key_index)
		end

		return nil, button_name, prefix_text
	elseif device_type == "gamepad" then
		if is_button_unassigned then
			button_name = ""
		else
			button_name = Pad1.button_name(key_index)
		end

		local button_texture_data = ButtonTextureByName(button_name, platform)

		return button_texture_data, button_name, prefix_text
	end

	return nil, ""
end
GamePadEquipmentUI._update_widgets = function (self)
	local slot_widgets = self._slot_widgets

	for index, widget in ipairs(slot_widgets) do
		self._set_widget_dirty(self, widget)
	end

	self.set_dirty(self)

	return 
end
GamePadEquipmentUI._get_wield_scroll_input = function (self)
	local player_manager = self.player_manager
	local player = player_manager.local_player(player_manager, 1)
	local player_unit = player.player_unit

	if not player_unit then
		return 
	end

	local peer_id = player.network_id(player)
	local input_extension = ScriptUnit.extension(player_unit, "input_system")

	return input_extension.get_last_scroll_value(input_extension)
end
GamePadEquipmentUI._set_wielded_item = function (self, item_name, force_select)
	local scroll_dir = self._get_wield_scroll_input(self)
	local added_items = self._added_items

	for _, data in ipairs(added_items) do
		local was_wielded = data.item_name == self._wielded_item_name
		local is_wielded = data.item_name == item_name
		local widget = data.widget
		widget.content.selected = is_wielded
		local slot_name = data.slot_name

		if is_wielded then
			local ammo_focus = slot_name == "slot_ranged"

			self._set_ammo_text_focus(self, ammo_focus)
			self._add_animation(self, slot_name .. "_wield_anim", widget, widget, "_animate_slot_wield")
		elseif was_wielded then
			self._add_animation(self, slot_name .. "_wield_anim", widget, widget, "_animate_slot_unwield")
		end

		data.is_wielded = is_wielded
	end

	self._wielded_item_name = item_name

	return 
end
local allowed_equipment_slots = {
	slot_grenade = true,
	slot_healthkit = true,
	slot_potion = true,
	slot_melee = false,
	slot_ranged = false
}
local sorted_buffs = {}
local widgets_to_remove = {}
local verified_widgets = {}
GamePadEquipmentUI._sync_player_equipment = function (self)
	local player_manager = self.player_manager
	local player = player_manager.local_player(player_manager, 1)
	local player_unit = player.player_unit

	if not player_unit then
		return 
	end

	local peer_id = player.network_id(player)
	local inventory_extension = ScriptUnit.extension(player_unit, "inventory_system")
	local equipment = inventory_extension.equipment(inventory_extension)

	if not equipment then
		return 
	end

	table.clear(verified_widgets)

	local inventory_modified = false
	local wielded_item_name = nil
	local equipment_slots = equipment.slots
	local wielded = equipment.wielded
	local inventory_slots = InventorySettings.slots
	local num_inventory_slots = #inventory_slots
	local added_items = self._added_items

	for i = 1, num_inventory_slots, 1 do
		local slot = inventory_slots[i]
		local slot_name = slot.name
		local slot_data = equipment_slots[slot_name]
		local slot_visible = (slot_data and true) or false
		local item_data = slot_data and slot_data.item_data
		local item_name = item_data and item_data.name
		local is_wielded = (item_name and wielded == item_data) or false

		if is_wielded then
			local widget = self._widgets_by_name.weapon_slot
			local content = widget.content
			content.wielded_slot = slot.name
		end

		if allowed_equipment_slots[slot_name] then
			local verified = false

			for j = 1, #added_items, 1 do
				local data = added_items[j]
				local same_item = data.item_name == item_name
				local same_slot = data.slot_name == slot_name

				if same_item then
					if not verified_widgets[j] then
						verified = true
						verified_widgets[j] = true

						break
					end
				elseif item_name and same_slot then
					verified = true
					verified_widgets[j] = true

					self._add_item(self, slot_data, data)

					inventory_modified = true

					break
				end
			end

			if not verified and slot_data ~= nil then
				self._add_item(self, slot_data)

				verified_widgets[#added_items] = true
				inventory_modified = true
			end

			if is_wielded then
				wielded_item_name = item_name
			end
		else
			if slot_name == "slot_ranged" and item_data then
				self._update_ammo_count(self, item_data, slot_data, player_unit)
				self._set_ammo_text_focus(self, is_wielded)
			end

			if is_wielded then
				wielded_item_name = item_name
			end
		end
	end

	table.clear(widgets_to_remove)

	for i = 1, #added_items, 1 do
		if not verified_widgets[i] then
			widgets_to_remove[#widgets_to_remove + 1] = i
		end
	end

	local index_mod = 0

	for i = 1, #widgets_to_remove, 1 do
		local index = widgets_to_remove[i] - index_mod

		self._remove_item(self, index)

		index_mod = index_mod + 1
		inventory_modified = true
	end

	if inventory_modified then
		self._update_widgets(self)
		table.sort(added_items, sort_by_console_hud_index)
	end

	if (wielded_item_name and self._wielded_item_name ~= wielded_item_name) or inventory_modified then
		wielded_item_name = wielded_item_name or self._wielded_item_name

		self._set_wielded_item(self, wielded_item_name, inventory_modified)
	end

	return 
end
GamePadEquipmentUI._update_ammo_count = function (self, item_data, slot_data, player_unit)
	local item_template = BackendUtils.get_item_template(item_data)
	local ammo_widgets_by_name = self._ammo_widgets_by_name
	local draw_overheat = false

	if item_template.ammo_data then
		local ammo_count, remaining_ammo, using_single_clip = self._get_ammunition_count(self, slot_data.left_unit_1p, slot_data.right_unit_1p, item_template)
		local ammo_text_clip_widget = ammo_widgets_by_name.ammo_text_clip
		local content = ammo_text_clip_widget.content
		local ammo_empty = ammo_count + remaining_ammo == 0
		local ammo_changed = false

		if self._ammo_count ~= ammo_count then
			self._ammo_count = ammo_count
			local widget = ammo_widgets_by_name.ammo_text_clip
			local content = widget.content
			content.text = tostring(ammo_count)

			self._set_widget_dirty(self, widget)

			ammo_changed = true
		end

		if self._remaining_ammo ~= remaining_ammo then
			self._remaining_ammo = remaining_ammo
			local widget = ammo_widgets_by_name.ammo_text_remaining
			local content = widget.content
			content.text = tostring(remaining_ammo)

			self._set_widget_dirty(self, widget)

			ammo_changed = true
		end

		if ammo_changed then
			self._ammo_counter_fade_delay = AMMO_PRESENTATION_DURATION
			self._ammo_counter_fade_progress = 1

			self._set_ammo_counter_alpha(self, 255)

			local ammo_text_color = (ammo_empty and ammo_colors.empty) or ammo_colors.normal

			self._set_ammo_counter_color(self, ammo_text_color)
			self.set_dirty(self)
		end
	else
		local has_overcharge, overcharge_fraction, threshold_fraction = self._get_overcharge_amount(self, player_unit)

		if self._overcharge_fraction ~= overcharge_fraction then
			self._overcharge_fraction = overcharge_fraction

			self._set_overheat_fraction(self, overcharge_fraction)
		end

		draw_overheat = true
	end

	if self._draw_overheat ~= draw_overheat then
		self._draw_overheat = draw_overheat

		self._show_overheat_meter(self, draw_overheat)
	end

	return 
end
GamePadEquipmentUI._animate_ammo_counter = function (self, dt)
	local ammo_counter_fade_delay = self._ammo_counter_fade_delay

	if ammo_counter_fade_delay then
		ammo_counter_fade_delay = math.max(ammo_counter_fade_delay - dt, 0)

		if ammo_counter_fade_delay == 0 then
			self._ammo_counter_fade_delay = nil
		else
			self._ammo_counter_fade_delay = ammo_counter_fade_delay
		end

		return 
	end

	local ammo_counter_fade_progress = self._ammo_counter_fade_progress

	if not ammo_counter_fade_progress then
		return 
	end

	ammo_counter_fade_progress = math.max(ammo_counter_fade_progress - 0.01, 0)
	local alpha = ammo_counter_fade_progress*155 + 100

	self._set_ammo_counter_alpha(self, alpha)

	if ammo_counter_fade_progress == 0 then
		self._ammo_counter_fade_progress = nil
	else
		self._ammo_counter_fade_progress = ammo_counter_fade_progress
	end

	return true
end
GamePadEquipmentUI._set_ammo_counter_alpha = function (self, alpha)
	local ammo_widgets_by_name = self._ammo_widgets_by_name
	local ammo_clip_widget = ammo_widgets_by_name.ammo_text_clip
	local ammo_clip_widget_style = ammo_clip_widget.style.text
	local clip_text_color = ammo_clip_widget_style.text_color
	clip_text_color[1] = alpha

	self._set_widget_dirty(self, ammo_clip_widget)

	local ammo_remaining_widget = ammo_widgets_by_name.ammo_text_remaining
	local ammo_remaining_widget_style = ammo_remaining_widget.style.text
	local remaining_text_color = ammo_remaining_widget_style.text_color
	remaining_text_color[1] = alpha

	self._set_widget_dirty(self, ammo_remaining_widget)

	local ammo_center_widget = ammo_widgets_by_name.ammo_text_center
	local ammo_center_widget_style = ammo_center_widget.style.text
	local center_text_color = ammo_center_widget_style.text_color
	center_text_color[1] = alpha

	self._set_widget_dirty(self, ammo_center_widget)
	self.set_dirty(self)

	return 
end
GamePadEquipmentUI._set_ammo_counter_color = function (self, color)
	local ammo_clip_widget = self._ammo_widgets_by_name.ammo_text_clip
	local ammo_clip_widget_style = ammo_clip_widget.style.text
	local clip_text_color = ammo_clip_widget_style.text_color
	clip_text_color[2] = color[2]
	clip_text_color[3] = color[3]
	clip_text_color[4] = color[4]

	self._set_widget_dirty(self, ammo_clip_widget)

	local ammo_remaining_widget = self._ammo_widgets_by_name.ammo_text_remaining
	local ammo_remaining_widget_style = ammo_remaining_widget.style.text
	local remaining_text_color = ammo_remaining_widget_style.text_color
	remaining_text_color[2] = color[2]
	remaining_text_color[3] = color[3]
	remaining_text_color[4] = color[4]

	self._set_widget_dirty(self, ammo_remaining_widget)

	local ammo_center_widget = self._ammo_widgets_by_name.ammo_text_center
	local ammo_center_widget_style = ammo_center_widget.style.text
	local center_text_color = ammo_center_widget_style.text_color
	center_text_color[2] = color[2]
	center_text_color[3] = color[3]
	center_text_color[4] = color[4]

	self._set_widget_dirty(self, ammo_center_widget)
	self.set_dirty(self)

	return 
end
GamePadEquipmentUI._set_ammo_text_focus = function (self, focus)
	if self._draw_overheat then
		if self._overcharge_fraction ~= nil then
			local multiplier = 1
			local color = (focus and ammo_colors.focus) or ammo_colors.unfocused
			local widgets_by_name = self._widgets_by_name
			local fg_widget = widgets_by_name.overcharge
			local bg_widget = widgets_by_name.overcharge_background
			local fg_color = fg_widget.style.texture_id.color
			local bg_color = bg_widget.style.texture_id.color
			fg_color[2] = color[2]*multiplier
			fg_color[3] = color[3]*multiplier
			fg_color[4] = color[4]*multiplier

			self._set_widget_dirty(self, fg_widget)
			self._set_widget_dirty(self, bg_widget)
			self.set_dirty(self)
		end
	else
		local ammo_widgets_by_name = self._ammo_widgets_by_name
		self._ammo_counter_fade_delay = AMMO_PRESENTATION_DURATION
		self._ammo_counter_fade_progress = 1

		self._set_ammo_counter_alpha(self, 255)

		if self._ammo_count ~= nil or self._remaining_ammo ~= nil then
			local multiplier = 1
			local color = (focus and ammo_colors.focus) or ammo_colors.unfocused
			local ammo_background_widget = self._widgets_by_name.ammo_background
			ammo_background_widget.content.visible = focus

			self._set_widget_dirty(self, ammo_background_widget)

			local ammo_clip_widget = ammo_widgets_by_name.ammo_text_clip
			ammo_clip_widget.content.visible = focus

			self._set_widget_dirty(self, ammo_clip_widget)

			local ammo_remaining_widget = ammo_widgets_by_name.ammo_text_remaining
			ammo_remaining_widget.content.visible = focus

			self._set_widget_dirty(self, ammo_remaining_widget)

			local ammo_center_widget = ammo_widgets_by_name.ammo_text_center
			ammo_center_widget.content.visible = focus

			self._set_widget_dirty(self, ammo_center_widget)
			self.set_dirty(self)
		end
	end

	return 
end
GamePadEquipmentUI._get_ammunition_count = function (self, left_hand_wielded_unit, right_hand_wielded_unit, item_template)
	local ammo_extension = nil

	if not item_template.ammo_data then
		return 
	end

	local ammo_unit_hand = item_template.ammo_data.ammo_hand

	if ammo_unit_hand == "right" then
		ammo_extension = ScriptUnit.extension(right_hand_wielded_unit, "ammo_system")
	elseif ammo_unit_hand == "left" then
		ammo_extension = ScriptUnit.extension(left_hand_wielded_unit, "ammo_system")
	else
		return 
	end

	local ammo_count = ammo_extension.ammo_count(ammo_extension)
	local remaining_ammo = ammo_extension.remaining_ammo(ammo_extension)
	local single_clip = ammo_extension.using_single_clip(ammo_extension)

	return ammo_count, remaining_ammo, single_clip
end
GamePadEquipmentUI._get_overcharge_amount = function (self, player_unit)
	local overcharge_extension = ScriptUnit.extension(player_unit, "overcharge_system")
	local overcharge_fraction = overcharge_extension.overcharge_fraction(overcharge_extension)
	local threshold_fraction = overcharge_extension.threshold_fraction(overcharge_extension)
	local anim_blend_overcharge = overcharge_extension.get_anim_blend_overcharge(overcharge_extension)

	return true, overcharge_fraction, threshold_fraction, anim_blend_overcharge
end
GamePadEquipmentUI._add_animation = function (self, name, widget, style, func_name)
	local animations = self._animations
	local inventory_hud_settings = UISettings.inventory_hud
	local total_time = inventory_hud_settings.equip_animation_duration
	local animation = animations[name]

	if animation then
		animation.total_time = total_time
		animation.time = 0
		animation.func = func_name
	else
		animations[name] = {
			time = 0,
			total_time = total_time,
			style = style,
			widget = widget,
			func = func_name
		}
	end

	return 
end
GamePadEquipmentUI._update_animations = function (self, dt)
	local animations = self._animations
	local dirty = false

	for name, animation_data in pairs(animations) do
		local anim_func_name = animation_data.func
		animations[name] = self[anim_func_name](self, animation_data, dt)
		local widget = animation_data.widget

		self._set_widget_dirty(self, widget)

		dirty = true
	end

	return dirty
end
GamePadEquipmentUI._animate_slot_wield = function (self, animation_data, dt)
	local widget = animation_data.widget
	local total_time = animation_data.total_time
	local time = animation_data.time
	time = time + dt
	local progress = math.min(time/total_time, 1)
	local anim_progress = math.easeOutCubic(progress)
	local anim_progress_input = math.easeInCubic(progress - 1)
	widget.style.texture_selected.color[1] = anim_progress*255
	widget.style.texture_arrow_selected_left.color[1] = anim_progress*255
	widget.style.texture_arrow_selected_up.color[1] = anim_progress*255
	widget.style.texture_arrow_selected_right.color[1] = anim_progress*255
	animation_data.time = time

	return (progress < 1 and animation_data) or nil
end
GamePadEquipmentUI._animate_slot_unwield = function (self, animation_data, dt)
	local widget = animation_data.widget
	local total_time = animation_data.total_time
	local time = animation_data.time
	time = time + dt
	local progress = math.min(time/total_time, 1)
	local anim_progress = math.easeInCubic(progress - 1)
	local anim_progress_input = math.easeOutCubic(progress)
	widget.style.texture_selected.color[1] = anim_progress*255
	widget.style.texture_arrow_selected_left.color[1] = anim_progress*255
	widget.style.texture_arrow_selected_up.color[1] = anim_progress*255
	widget.style.texture_arrow_selected_right.color[1] = anim_progress*255
	animation_data.time = time

	return (progress < 1 and animation_data) or nil
end
GamePadEquipmentUI._animate_slot_equip = function (self, animation_data, dt)
	local style = animation_data.style
	local total_time = animation_data.total_time
	local time = animation_data.time
	time = time + dt
	local progress = math.min(time/total_time, 1)
	local catmullrom_value = math.catmullrom(progress, -10, 0, 0, -4)
	local anim_progress = math.easeOutCubic(progress)
	style.color[1] = anim_progress*255
	animation_data.time = time

	return (progress < 1 and animation_data) or nil
end
GamePadEquipmentUI._add_item = function (self, slot_data, data)
	local num_added_items = self._num_added_items or 0
	local use_exsiting_data = data ~= nil

	if not use_exsiting_data and NUM_SLOTS <= num_added_items then
		return 
	end

	local slot_name = slot_data.id
	local slots_by_name = InventorySettings.slots_by_name
	local slot_settings = slots_by_name[slot_name]
	local console_hud_index = slot_settings.console_hud_index
	local widget = nil

	if use_exsiting_data then
		widget = data.widget
	else
		for i, slot_widget in ipairs(self._slot_widgets) do
			if slot_widget.content.console_hud_index == console_hud_index then
				widget = slot_widget

				break
			end
		end

		UIRenderer.set_element_visible(self.ui_renderer, widget.element, true)
	end

	local widget_content = widget.content
	local widget_style = widget.style
	local color = widget_content.normal_color
	local item_data = slot_data.item_data
	local item_name = item_data.name
	local hud_icon = item_data.hud_icon

	if slot_name == "slot_melee" then
		hud_icon = "hud_inventory_icon_melee"
	elseif slot_name == "slot_ranged" then
		hud_icon = "hud_inventory_icon_ranged"
	end

	local default_background_texture = inventory_slot_backgrounds.default
	widget_content.texture_background = inventory_slot_backgrounds[item_name] or default_background_texture
	widget_content.texture_icon = hud_icon or "icons_placeholder"
	widget_style.texture_icon.color[1] = 255
	widget_style.texture_arrow_left.color[1] = 192
	widget_style.texture_arrow_up.color[1] = 192
	widget_style.texture_arrow_right.color[1] = 192
	data = data or {}
	data.console_hud_index = console_hud_index
	data.slot_name = slot_name
	data.item_name = item_name
	data.widget = widget
	data.wielded = false
	data.icon = hud_icon

	if not use_exsiting_data then
		local added_items = self._added_items

		table.insert(added_items, #added_items + 1, data)

		self._num_added_items = num_added_items + 1
	end

	return 
end
GamePadEquipmentUI._remove_item = function (self, index)
	local num_added_items = self._num_added_items or 0

	if num_added_items <= 0 then
		return 
	end

	local added_items = self._added_items
	local data = table.remove(added_items, index)
	local slot_name = data.slot_name
	local widget = data.widget
	local widget_content = widget.content
	local widget_style = widget.style
	widget_style.texture_icon.color[1] = 0
	widget_style.texture_arrow_left.color[1] = 0
	widget_style.texture_arrow_up.color[1] = 0
	widget_style.texture_arrow_right.color[1] = 0
	local was_selected = widget_content.selected
	widget_content.selected = false
	local default_background_texture = inventory_slot_backgrounds.default
	widget_content.texture_background = default_background_texture
	self._num_added_items = num_added_items - 1

	if was_selected then
		self._add_animation(self, slot_name .. "_wield_anim", widget, widget, "_animate_slot_unwield")
	else
		widget.style.texture_selected.color[1] = 0
	end

	return 
end
GamePadEquipmentUI.set_position = function (self, x, y)
	local position = self.ui_scenegraph.pivot.local_position
	position[1] = x
	position[2] = y

	for _, widget in ipairs(self._widgets) do
		self._set_widget_dirty(self, widget)
	end

	for _, widget in ipairs(self._static_widgets) do
		self._set_widget_dirty(self, widget)
	end

	self.set_dirty(self)

	return 
end
GamePadEquipmentUI.destroy = function (self)
	local event_manager = Managers.state.event

	event_manager.unregister(event_manager, "input_changed", self)
	self.set_visible(self, false)
	rawset(_G, "gamepad_equipment_ui", nil)
	print("[GamePadEquipmentUI] - Destroy")

	return 
end
GamePadEquipmentUI.set_visible = function (self, visible)
	self._is_visible = visible

	self._set_elements_visible(self, visible)

	return 
end
GamePadEquipmentUI._set_elements_visible = function (self, visible)
	local ui_renderer = self.ui_renderer

	for _, widget in ipairs(self._widgets) do
		UIRenderer.set_element_visible(ui_renderer, widget.element, visible)
	end

	for _, widget in ipairs(self._static_widgets) do
		UIRenderer.set_element_visible(ui_renderer, widget.element, visible)
	end

	for _, widget in ipairs(self._ammo_widgets) do
		UIRenderer.set_element_visible(ui_renderer, widget.element, visible)
	end

	self._retained_elements_visible = visible

	self.set_dirty(self)

	return 
end
GamePadEquipmentUI._handle_gamepad = function (self)
	local dirty = false
	local gamepad_active = self.input_manager:is_device_active("gamepad")

	if gamepad_active then
		if not self.gamepad_active_last_frame then
			self.gamepad_active_last_frame = true

			self.on_gamepad_activated(self)

			dirty = true
		end
	elseif self.gamepad_active_last_frame or self.gamepad_active_last_frame == nil then
		self.gamepad_active_last_frame = false

		self.on_gamepad_deactivated(self)

		dirty = true
	end

	return dirty
end
local DO_RELOAD = false
GamePadEquipmentUI.update = function (self, dt, t)
	if DO_RELOAD then
		self.set_visible(self, false)
		self._create_ui_elements(self)

		DO_RELOAD = false
	end

	local dirty = false

	if self._update_animations(self, dt) then
		dirty = true
	end

	if self._animate_ammo_counter(self, dt) then
		dirty = true
	end

	if dirty then
		self.set_dirty(self)
	end

	self._handle_resolution_modified(self)
	self._sync_player_equipment(self)
	self.draw(self, dt)

	return 
end
GamePadEquipmentUI._handle_resolution_modified = function (self)
	if RESOLUTION_LOOKUP.modified then
		self._on_resolution_modified(self)
	end

	return 
end
GamePadEquipmentUI._on_resolution_modified = function (self)
	for _, widget in ipairs(self._widgets) do
		self._set_widget_dirty(self, widget)
	end

	for _, widget in ipairs(self._static_widgets) do
		self._set_widget_dirty(self, widget)
	end

	self.set_dirty(self)

	return 
end
GamePadEquipmentUI._handle_gamepad = function (self)
	local should_render = true
	local gamepad_active = Managers.input:is_device_active("gamepad")

	if not gamepad_active then
		if self._retained_elements_visible then
			self._set_elements_visible(self, false)
		end

		return false
	else
		if not self._retained_elements_visible then
			self._set_elements_visible(self, true)
		end

		return true
	end

	return 
end
GamePadEquipmentUI.draw = function (self, dt)
	if not self._is_visible then
		return 
	end

	local should_render = self._handle_gamepad(self)

	if not should_render then
		return 
	end

	local ui_renderer = self.ui_renderer
	local ui_scenegraph = self.ui_scenegraph
	local input_service = self.input_manager:get_service("ingame_menu")
	local render_settings = self.render_settings
	local alpha_multiplier = render_settings.alpha_multiplier

	UIRenderer.begin_pass(ui_renderer, ui_scenegraph, input_service, dt, nil, render_settings)

	render_settings.snap_pixel_positions = true
	render_settings.alpha_multiplier = self.panel_alpha_multiplier or alpha_multiplier

	for _, widget in ipairs(self._slot_widgets) do
		UIRenderer.draw_widget(ui_renderer, widget)
	end

	render_settings.snap_pixel_positions = true

	for _, widget in ipairs(self._static_widgets) do
		UIRenderer.draw_widget(ui_renderer, widget)
	end

	render_settings.alpha_multiplier = self.ammo_alpha_multiplier or alpha_multiplier
	render_settings.snap_pixel_positions = true

	for _, widget in ipairs(self._ammo_widgets) do
		UIRenderer.draw_widget(ui_renderer, widget)
	end

	UIRenderer.end_pass(ui_renderer)

	self._dirty = false

	return 
end
GamePadEquipmentUI._set_color = function (self, color, new_color, ignore_alpha)
	if not ignore_alpha then
		color[1] = new_color[1]
	end

	color[2] = new_color[2]
	color[3] = new_color[3]
	color[4] = new_color[4]

	return 
end
GamePadEquipmentUI.set_dirty = function (self)
	self._dirty = true

	if self.cleanui then
		self.cleanui.dirty = true
	end

	return 
end
GamePadEquipmentUI._set_widget_dirty = function (self, widget)
	widget.element.dirty = true

	if self.cleanui then
		self.cleanui.dirty = true
	end

	return 
end
GamePadEquipmentUI._set_overheat_fraction = function (self, fraction)
	local widget = self._widgets_by_name.overcharge
	local content = widget.content
	local uvs = content.texture_id.uvs
	uvs[2][1] = fraction
	local scenegraph_id = widget.scenegraph_id
	local scenegraph = self.ui_scenegraph[scenegraph_id]
	local default_scenegraph = scenegraph_definition[scenegraph_id]
	local default_size = default_scenegraph.size
	local size = scenegraph.size
	size[1] = default_size[1]*fraction

	self._set_widget_dirty(self, widget)
	self.set_dirty(self)

	return 
end
GamePadEquipmentUI._show_overheat_meter = function (self, visible)
	local widgets_by_name = self._widgets_by_name
	local ammo_widgets_by_name = self._ammo_widgets_by_name

	self._set_widget_visibility(self, widgets_by_name.overcharge, false)
	self._set_widget_visibility(self, widgets_by_name.overcharge_background, false)
	self._set_widget_visibility(self, ammo_widgets_by_name.ammo_text_clip, not visible)
	self._set_widget_visibility(self, ammo_widgets_by_name.ammo_text_remaining, not visible)
	self._set_widget_visibility(self, ammo_widgets_by_name.ammo_text_center, not visible)
	self._set_widget_visibility(self, widgets_by_name.ammo_background, not visible)
	self.set_dirty(self)

	return 
end
GamePadEquipmentUI._set_widget_visibility = function (self, widget, visible)
	widget.content.visible = visible

	self._set_widget_dirty(self, widget)

	return 
end
GamePadEquipmentUI.set_alpha = function (self, alpha)
	self.render_settings.alpha_multiplier = alpha

	for widget_index, widget in pairs(self._widgets) do
		self._set_widget_dirty(self, widget)
	end

	for widget_index, widget in pairs(self._slot_widgets) do
		self._set_widget_dirty(self, widget)
	end

	for widget_index, widget in pairs(self._static_widgets) do
		self._set_widget_dirty(self, widget)
	end

	for widget_index, widget in pairs(self._ammo_widgets) do
		self._set_widget_dirty(self, widget)
	end

	self.set_dirty(self)

	return 
end
GamePadEquipmentUI.set_ammo_alpha = function (self, alpha)
	self.ammo_alpha_multiplier = alpha

	for widget_index, widget in pairs(self._ammo_widgets) do
		self._set_widget_dirty(self, widget)
	end

	self.set_dirty(self)

	return 
end
GamePadEquipmentUI.set_panel_alpha = function (self, alpha)
	self.panel_alpha_multiplier = alpha

	for widget_index, widget in pairs(self._widgets) do
		self._set_widget_dirty(self, widget)
	end

	for widget_index, widget in pairs(self._slot_widgets) do
		self._set_widget_dirty(self, widget)
	end

	for widget_index, widget in pairs(self._static_widgets) do
		self._set_widget_dirty(self, widget)
	end

	self.set_dirty(self)

	return 
end
GamePadEquipmentUI.apply_crosshair_position = function (self, x, y)
	local scenegraph_id = "screen_bottom_pivot"
	local position = self.ui_scenegraph[scenegraph_id].local_position
	position[1] = x
	position[2] = y
	local widgets_by_name = self._widgets_by_name
	local ammo_widgets_by_name = self._ammo_widgets_by_name

	self._set_widget_dirty(self, ammo_widgets_by_name.ammo_text_clip)
	self._set_widget_dirty(self, ammo_widgets_by_name.ammo_text_remaining)
	self._set_widget_dirty(self, ammo_widgets_by_name.ammo_text_center)
	self._set_widget_dirty(self, widgets_by_name.overcharge)
	self._set_widget_dirty(self, widgets_by_name.overcharge_background)
	self.set_dirty(self)

	return 
end

return 