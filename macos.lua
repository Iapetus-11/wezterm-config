local wezterm = require 'wezterm'


local module = {}

function module.apply_config(config)
	config.font_size = 12
	config.initial_cols = 110
	config.initial_rows = 28
end

return module
