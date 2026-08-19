local wezterm = require 'wezterm'
local theming = require 'theming'
local platform = require 'platform'
local keybinds = require 'keybinds'


local config = wezterm.config_builder()

theming.apply_color_scheme(config, 'carbonfox')
platform.apply_platform_config(config)
keybinds.apply_config(config)

return config
