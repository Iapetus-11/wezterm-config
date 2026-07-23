local wezterm = require 'wezterm'
local linux = require 'linux'
local macos = require 'macos'


local module = {}

function module.apply_platform_config(config)
	if wezterm.target_triple:find('linux') then
		linux.apply_config(config)
	elseif wezterm.target_triple:find('darwin') then
		macos.apply_config(config)
	end
end

return module
