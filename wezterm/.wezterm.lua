-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 14
config.color_scheme = 'Kanagawa (Gogh)'
config.font = wezterm.font 'Maple Mono NF CN'

-- remove tabs and title
config.enable_tab_bar = false
config.window_decorations = 'RESIZE'

-- make background transparent with blur
config.window_background_opacity = 0.8
config.macos_window_background_blur = 20

-- Spawn a fish shell in login mode
config.default_prog = { '/bin/zsh' }

-- Finally, return the configuration to wezterm:
return config
