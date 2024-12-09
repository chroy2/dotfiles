local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback({
	"Ubuntu Mono",
	--"MesloLGS Nerd Font",
	--"Hurmit Nerd Font Mono",
	--"JetBrains Mono",
	--"ComicShannsMono Nerd Font",
	"Symbols Nerd Font Mono",
	"Monaco",
})
config.font_size = 20

config.window_decorations = "RESIZE"
config.color_scheme = "Catppucin"

config.window_background_opacity = 0.9
config.macos_window_background_blur = 3

config.colors = {
	tab_bar = {
		background = "rgba(0,0,0,0)",
	},
}

config.enable_tab_bar = false

--[[
wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	-- The filled in variant of the < symbol
	local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider

	-- The filled in variant of the > symbol
	local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider
	local title = tab.active_pane.title
	if tab.tab_title and #tab.tab_title > 0 then
		title = tab.tab_title
	end
	if tab.is_active then
		return {
			{ Background = { Color = "rgba(0,0,0,0)" } },
			{ Foreground = { Color = "#2b2042" } },
			{ Text = SOLID_LEFT_ARROW },
			{ Background = { Color = "#2b2042" } },
			{ Foreground = { Color = "#A9A6AC" } },
			{ Text = (tab.tab_index + 1) .. ": " .. title .. " " },
			{ Background = { Color = "#0b0022" } },
			{ Foreground = { Color = "#2b2042" } },
			{ Text = SOLID_RIGHT_ARROW },
		}
	else
		return {
			{ Background = { Color = "#0b0022" } },
			{ Foreground = { Color = "#1b1032" } },
			{ Text = SOLID_LEFT_ARROW },
			{ Background = { Color = "#1b1032" } },
			{ Foreground = { Color = "#66646C" } },
			{ Text = (tab.tab_index + 1) .. ": " .. title .. " " },
			{ Background = { Color = "#0b0022" } },
			{ Foreground = { Color = "#1b1032" } },
			{ Text = SOLID_RIGHT_ARROW },
		}
	end
end)
]]

return config
