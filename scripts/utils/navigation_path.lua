﻿-- chunkname: @scripts/utils/navigation_path.lua

NavigationPath = class(NavigationPath)

NavigationPath.init = function (self, path, callback)
	self._path = {}
	self._current_index = 1
	self._callback = callback

	for i = 1, #path do
		self._path[i] = Vector3Box(path[i])
	end
end

NavigationPath.current = function (self)
	return self._path[self._current_index]:unbox()
end

NavigationPath.last = function (self)
	return self._path[#self._path]:unbox()
end

NavigationPath.advance = function (self)
	self._current_index = self._current_index + 1
end

NavigationPath.is_last = function (self)
	return self._current_index == #self._path
end

NavigationPath.reset = function (self)
	self._current_index = 1
end

NavigationPath.reverse = function (self)
	table.reverse(self._path)
end

NavigationPath.callback = function (self)
	return self._callback
end

NavigationPath.path = function (self)
	return self._path
end

NavigationPath.draw = function (self, color, offset)
	local drawer = Managers.state.debug:drawer({
		mode = "immediate",
		name = "nav_path",
	})
	local offset = offset or Vector3(0, 0, 0)
	local previous_node

	for _, node in ipairs(self._path) do
		drawer:sphere(node:unbox() + Vector3.up() * 0.05 + offset, 0.05, color)
	end
end
