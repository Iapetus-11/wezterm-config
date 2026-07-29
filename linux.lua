local wezterm = require 'wezterm'


local module = {}

function module.apply_config(config)
	config.enable_wayland = true
	config.font_size = 11
	-- config.wayland_window_background_blur = true
	config.initial_cols = 90
	config.initial_rows = 24
end

return module
