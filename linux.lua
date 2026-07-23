local wezterm = require 'wezterm'


local module = {}

function module.apply_config(config)
	config.initial_cols = 90
	config.initial_rows = 24
end

return module
