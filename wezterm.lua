local wezterm = require 'wezterm'
local theming = require 'theming'
local platform = require 'platform'

local config = wezterm.config_builder()

-- carbonfox
-- Breath Darker (Gogh)
-- ChallengerDeep
-- Cloud (terminal.sexy)
-- cyberpunk
theming.apply_color_scheme(config, 'ChallengerDeep')
platform.apply_platform_config(config)

return config
