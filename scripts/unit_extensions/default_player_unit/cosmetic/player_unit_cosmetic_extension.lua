require("scripts/helpers/cosmetic_utils")

PlayerUnitCosmeticExtension = class(PlayerUnitCosmeticExtension)

PlayerUnitCosmeticExtension.init = function (self, extension_init_context, unit, extension_init_data)
	self._world = extension_init_context.world
	self._unit = unit
	self._profile = extension_init_data.profile
	self._is_server = extension_init_data.is_server
	self._player = extension_init_data.player
	self._cosmetics = {}
	self._skin_material_changes = {}
	self._tp_mesh_visible = true
	local skin_name = extension_init_data.skin_name
	local frame_name = extension_init_data.frame_name
	local profile = extension_init_data.profile

	fassert(skin_name, "No skin name passed to CosmeticExtension, somthing went wrong!")

	local skin_data = Cosmetics[skin_name]
	self._cosmetics.skin = skin_data

	if frame_name then
		self._cosmetics.frame = Cosmetics[frame_name]
	end

	self._frame_name = frame_name

	CosmeticUtils.update_cosmetic_slot(self._player, "slot_frame", frame_name)
	CosmeticUtils.update_cosmetic_slot(self._player, "slot_skin", skin_name)

	local hero_attributes = Managers.backend:get_interface("hero_attributes")
	local career_index = hero_attributes:get(profile.display_name, "career") or 1
	local career = profile.careers[career_index]

	self:_init_mesh_attachment(self._world, unit, skin_name, profile, career)
end

PlayerUnitCosmeticExtension.destroy = function (self)
	if self._tp_unit_mesh then
		local unit_spawner = Managers.state.unit_spawner

		unit_spawner:mark_for_deletion(self._tp_unit_mesh)

		self._tp_unit_mesh = nil
	end
end

PlayerUnitCosmeticExtension.extensions_ready = function (self, world, unit)
	local hero_name = self._profile.display_name
	local skin_data = self._cosmetics.skin
	local material_changes = skin_data.material_changes

	if material_changes then
		self:change_skin_materials(material_changes)
	end

	local tint_data = skin_data.color_tint

	if tint_data then
		local gradient_variation = tint_data.gradient_variation
		local gradient_value = tint_data.gradient_value

		CosmeticUtils.color_tint_unit(unit, hero_name, gradient_variation, gradient_value)
	end
end

PlayerUnitCosmeticExtension.get_equipped_skin = function (self)
	return self._cosmetics.skin
end

PlayerUnitCosmeticExtension.get_equipped_frame = function (self)
	return self._cosmetics.frame
end

PlayerUnitCosmeticExtension.set_equipped_frame = function (self, frame_name)
	self._cosmetics.frame = Cosmetics[frame_name]
	self._frame_name = frame_name

	CosmeticUtils.update_cosmetic_slot(self._player, "slot_frame", frame_name)
end

PlayerUnitCosmeticExtension.get_equipped_frame_name = function (self)
	return self._frame_name
end

PlayerUnitCosmeticExtension.change_skin_materials = function (self, material_changes)
	local unit = self._unit
	local mesh_units = self._tp_unit_mesh
	local third_person_changes = material_changes.third_person

	for slot_name, material_name in pairs(third_person_changes) do
		Unit.set_material(mesh_units, slot_name, material_name)
	end

	local first_person_extension = ScriptUnit.has_extension(unit, "first_person_system")

	if first_person_extension then
		local first_person_changes = material_changes.first_person

		if first_person_changes then
			local first_person_unit = first_person_extension:get_first_person_mesh_unit()

			for slot_name, material_name in pairs(first_person_changes) do
				Unit.set_material(first_person_unit, slot_name, material_name)
			end
		end
	end
end

PlayerUnitCosmeticExtension.always_hide_attachment_slot = function (self, slot_name)
	local skin = self._cosmetics.skin

	if not skin then
		return false
	end

	local always_hide_attachment_slots = skin.always_hide_attachment_slots

	if not always_hide_attachment_slots then
		return false
	end

	if not table.contains(always_hide_attachment_slots, slot_name) then
		return false
	end

	return true
end

PlayerUnitCosmeticExtension.hot_join_sync = function (self, sender)
	return
end

PlayerUnitCosmeticExtension._init_mesh_attachment = function (self, world, unit, skin_name, profile, career)
	local third_person_attachment = Cosmetics[skin_name].third_person_attachment or profile.third_person_attachment
	local tp_attachment_unit_name = third_person_attachment.unit
	local tp_attachment_node_linking = third_person_attachment.attachment_node_linking
	local tp_unit_mesh = Managers.state.unit_spawner:spawn_local_unit(tp_attachment_unit_name)
	self._tp_unit_mesh = tp_unit_mesh

	Unit.set_flow_variable(unit, "lua_third_person_mesh_unit", tp_unit_mesh)
	AttachmentUtils.link(world, unit, tp_unit_mesh, tp_attachment_node_linking)
	Unit.set_flow_variable(unit, "character_vo", profile.character_vo)
	Unit.set_flow_variable(unit, "sound_character", career.sound_character)
	Unit.flow_event(unit, "character_vo_set")

	local level_settings = LevelHelper:current_level_settings()
	local climate_type = level_settings.climate_type or "default"

	Unit.set_flow_variable(tp_unit_mesh, "climate_type", climate_type)
	Unit.flow_event(tp_unit_mesh, "climate_type_set")

	if not self._tp_mesh_visible then
		self._tp_mesh_visible = true

		Unit.set_unit_visibility(self._tp_unit_mesh, false)
	end

	if Unit.has_animation_state_machine(self._tp_unit_mesh) and Unit.has_animation_event(self._tp_unit_mesh, "enable") then
		Unit.animation_event(self._tp_unit_mesh, "enable")
	end
end

PlayerUnitCosmeticExtension.get_third_person_mesh_unit = function (self)
	return self._tp_unit_mesh
end

PlayerUnitCosmeticExtension.show_third_person_mesh = function (self, show)
	if self._tp_mesh_visible ~= show then
		self._tp_mesh_visible = show

		if self._tp_unit_mesh then
			Unit.set_unit_visibility(self._tp_unit_mesh, show)

			if show then
				Unit.flow_event(self._unit, "lua_enter_third_person_camera")
				Unit.flow_event(self._tp_unit_mesh, "lua_enter_third_person_camera")
			else
				Unit.flow_event(self._unit, "lua_exit_third_person_camera")
				Unit.flow_event(self._tp_unit_mesh, "lua_exit_third_person_camera")
			end
		end
	end
end

return
