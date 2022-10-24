local function error_prone_clone(value)
	if not value then
		return {}
	end

	return table.clone(value)
end

UIWidget = UIWidget or {}

UIWidget.init = function (widget_definition)
	Profiler.start("UIWidget.init")

	local content = error_prone_clone(widget_definition.content)
	local style = error_prone_clone(widget_definition.style)
	local style_global = error_prone_clone(widget_definition.style_global)
	local offset = widget_definition.offset and error_prone_clone(widget_definition.offset)
	local passes = widget_definition.element.passes
	local num_passes = #passes
	local pass_data = Script.new_array(num_passes)

	for i = 1, num_passes, 1 do
		local pass = passes[i]
		local pass_type = pass.pass_type
		local ui_pass = UIPasses[pass_type]

		Profiler.start("UIPasses init " .. pass_type)

		pass_data[i] = ui_pass.init(pass, content, style, style_global)

		Profiler.stop("UIPasses init " .. pass_type)
	end

	local widget = {
		scenegraph_id = widget_definition.scenegraph_id,
		offset = offset or false,
		element = {
			passes = passes,
			pass_data = pass_data
		},
		content = content,
		style = style,
		animations = {},
		style_global = style_global
	}

	Profiler.stop("UIWidget.init")

	return widget
end

UIWidget.destroy = function (ui_renderer, widget)
	local element = widget.element
	local pass_data = element.pass_data
	local passes = element.passes

	for i = 1, #passes, 1 do
		local pass = passes[i]
		local pass_type = pass.pass_type
		local ui_pass = UIPasses[pass_type]

		fassert(ui_pass, "No such pass-type: %s", pass_type)

		if ui_pass.destroy then
			ui_pass.destroy(ui_renderer, pass_data[i], pass)
		end
	end
end

UIWidget.animate = function (widget, animation)
	widget.animations[animation] = true
end

UIWidget.stop_animations = function (widget)
	table.clear(widget.animations)
end

UIWidget.has_animation = function (widget)
	return (next(widget.animations) and true) or false
end

return
