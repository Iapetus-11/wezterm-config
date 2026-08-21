local module = {}

function module.apply_config(config)
	config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
	config.window_background_opacity = 0.975
	config.font_size = 11
	config.initial_cols = 90
	config.initial_rows = 24
end

return module
