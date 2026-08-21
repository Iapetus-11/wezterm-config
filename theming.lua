local wezterm = require 'wezterm'


local module = {}

function module.apply_color_scheme(config, color_scheme_name)
	config.color_scheme = color_scheme_name

	local color_scheme = wezterm.get_builtin_color_schemes()[color_scheme_name]

	local background = wezterm.color.parse(color_scheme.background):darken(0.25)
	local bar_bg = background:darken(0.15)
	local faded_fg = wezterm.color.parse(color_scheme.foreground):desaturate(0.5):darken(0.25)

	config.integrated_title_button_color = color_scheme.foreground

	config.window_frame = {
		active_titlebar_bg = bar_bg,
		inactive_titlebar_bg = background,
		active_titlebar_fg = color_scheme.foreground,
		inactive_titlebar_fg = faded_fg,
		button_fg = color_scheme.foreground,
		button_bg = background,
		button_hover_fg = background,
		button_hover_bg = color_scheme.foreground,
	}

	config.window_background_opacity = 0.9

	config.colors = {
		background = background,

		tab_bar = {
			background = bar_bg,
			active_tab = {
				bg_color = color_scheme.foreground,
				fg_color = background,
			},
			inactive_tab = {
				bg_color = background,
				fg_color = faded_fg,
			},
			inactive_tab_hover = {
				bg_color = background,
				fg_color = color_scheme.foreground,
			},
			new_tab = {
				bg_color = bar_bg,
				fg_color = faded_fg,
			},
			new_tab_hover = {
				bg_color = color_scheme.foreground,
				fg_color = background,
			},
		},
	}
end

return module
