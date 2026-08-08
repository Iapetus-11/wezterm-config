local module = {}

function module.apply_config(config)
	config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
	config.font_size = 12.5
	config.initial_cols = 110
	config.initial_rows = 28
	config.macos_window_background_blur = 20
end

return module
