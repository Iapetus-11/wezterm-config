local wezterm = require 'wezterm'
local act = wezterm.action


local module = {}

function module.apply_config(config)
	config.keys = config.keys or {}

	-- ctrl+1..8 select a tab, ctrl+9 selects the last one.
	for i = 1, 8 do
		table.insert(config.keys, {
			key = tostring(i),
			mods = 'CTRL',
			action = act.ActivateTab(i - 1),
		})
	end

	table.insert(config.keys, {
		key = '9',
		mods = 'CTRL',
		action = act.ActivateTab(-1),
	})
end

return module
