local wezterm = require 'wezterm'


local module = {}

function module.apply_config(config)
	config.font_size = 11
	config.initial_cols = 90
	config.initial_rows = 24
end

return module
