local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback({
	"MesloLGS Nerd Font",
	"Symbols Nerd Font Mono",
})
config.font_size = 18

config.window_decorations = "RESIZE"
config.color_scheme = "Catppucin"

config.window_background_opacity = 0.9
config.macos_window_background_blur = 20
return config
