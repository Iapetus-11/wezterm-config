local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.initial_cols = 90
config.initial_rows = 24

-- carbonfox
-- Breath Darker (Gogh)
-- ChallengerDeep
-- Cloud (terminal.sexy)
-- cyberpunk
local color_scheme_name = 'ChallengerDeep'
config.color_scheme = color_scheme_name

local color_scheme = wezterm.get_builtin_color_schemes()[color_scheme_name]

config.window_decorations = 'INTEGRATED_BUTTONS|RESIZE'
config.integrated_title_button_color = color_scheme.foreground

config.window_frame = {
  active_titlebar_bg = wezterm.color.parse(color_scheme.background):darken(0.4),
  inactive_titlebar_bg = color_scheme.background,
  active_titlebar_fg = color_scheme.foreground,
  inactive_titlebar_fg = color_scheme.brights[1],
  button_fg = color_scheme.foreground,
  button_bg = color_scheme.background,
  button_hover_fg = color_scheme.background,
  button_hover_bg = color_scheme.foreground,
}

config.colors = {
  tab_bar = {
    background = color_scheme.background,
    active_tab = {
      bg_color = color_scheme.foreground,
      fg_color = color_scheme.background,
    },
    inactive_tab = {
      bg_color = color_scheme.ansi[1],
      fg_color = color_scheme.brights[1],
    },
    inactive_tab_hover = {
      bg_color = color_scheme.ansi[1],
      fg_color = color_scheme.ansi[8],
    },
    new_tab = {
      bg_color = color_scheme.ansi[1],
      fg_color = color_scheme.brights[1],
    },
    new_tab_hover = {
      bg_color = color_scheme.foreground,
      fg_color = color_scheme.background,
    },
  },
}

return config
