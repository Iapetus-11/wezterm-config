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

	config.mouse_bindings = config.mouse_bindings or {}

	-- ctrl+click opens the hyperlink under the mouse. The Nop on the down event
	-- keeps the click from reaching the program, and mouse_reporting = true makes
	-- it work inside apps that grab the mouse themselves (vim, tmux, ...).
	for _, mouse_reporting in ipairs({ false, true }) do
		table.insert(config.mouse_bindings, {
			event = { Up = { streak = 1, button = 'Left' } },
			mods = 'CTRL',
			mouse_reporting = mouse_reporting,
			action = act.OpenLinkAtMouseCursor,
		})
		table.insert(config.mouse_bindings, {
			event = { Down = { streak = 1, button = 'Left' } },
			mods = 'CTRL',
			mouse_reporting = mouse_reporting,
			action = act.Nop,
		})
	end
end

return module
