local module = {}

function module.apply_config(config)
	-- Wayland support is busted: wezterm/wezterm#5332
	config.enable_wayland = false

	config.window_decorations = 'TITLE|RESIZE'
	config.window_background_opacity = 0.95
	config.font_size = 11
	config.initial_cols = 90
	config.initial_rows = 24
end

return module
