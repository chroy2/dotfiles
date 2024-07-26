local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("inconsolata Nerd Font Mono", { weight = "Regular" })
config.font_size = 20

config.window_decorations = "RESIZE"
config.color_scheme = "Gruvbox Dark (Gogh)"

config.window_background_opacity = 0.9
config.macos_window_background_blur = 20
return config
