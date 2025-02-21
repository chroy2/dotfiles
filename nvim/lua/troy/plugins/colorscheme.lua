local M = {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			transparent_background = false,
			styles = {
				keywords = { "bold" },
				functions = { "italic" },
			},
			integrations = {
				alpha = false,
				neogit = false,
				nvimtree = true,
				treesitter_context = false,
				rainbow_delimiters = false,
				mini = { enabled = false },
				dropbar = { enabled = false },
				illuminate = { enabled = false },
				mason = true,
				noice = true,
				notify = true,
				neotest = true,
				which_key = true,
				nvim_surround = true,
			},
			color_overrides = {
				mocha = { -- custom
					rosewater = "#ffc6be",
					flamingo = "#fb4934",
					pink = "#ff75a0",
					mauve = "#d3869b",
					red = "#ff5d62", -- "#f2594b",
					maroon = "#fe8019",
					peach = "#e6c384", -- "#FFAD7D",
					yellow = "#d79921", -- "#DEB22C",
					green = "#a9b665",
					teal = "#8ec07c",
					sky = "#a3d4d5", -- #7daea3",
					sapphire = "#689d6a",
					blue = "#7fb4ca", -- "#6d8dad",
					lavender = "#b16286",
					text = "#fbf1c7", -- #D4BE98  #C6D0F5
					subtext1 = "#d5c4a1", -- #BDAE8B  #B3BCDF
					subtext0 = "#a89984", -- #A69372  #A1A8C9
					overlay2 = "#8C7A58", -- #8E95B3
					overlay1 = "#735F3F", -- #7B819D
					overlay0 = "#806234", -- #696D86
					surface2 = "#665c54", -- #6E7477  #4B4F51  #565970
					surface1 = "#3c3836", -- #2A2D2E           #43465A
					surface0 = "#32302f", -- #232728           #313244
					base = "#282828", -- #1D2021           #1E1E2E
					mantle = "#1d2021", -- #191C1D           #181825
					crust = "#1b1b1b", --                   #11111B
				},
				frappe = {
					-- custom everforest dark hard port
					rosewater = "#fed1cb",
					flamingo = "#ff9185",
					pink = "#d699b6",
					mauve = "#cb7ec8",
					red = "#e06062",
					maroon = "#e67e80",
					peach = "#e69875",
					yellow = "#d3ad63",
					green = "#b0cc76",
					teal = "#6db57f",
					sky = "#7fbbb3",
					sapphire = "#60aaa0",
					blue = "#59a6c3",
					lavender = "#e0d3d4",
					text = "#e8e1bf",
					subtext1 = "#e0d7c3",
					subtext0 = "#d3c6aa",
					overlay2 = "#9da9a0",
					overlay1 = "#859289",
					overlay0 = "#6d6649",
					surface2 = "#585c4a",
					surface1 = "#414b50",
					surface0 = "#374145",
					base = "#1f2428",
					mantle = "#161b1d",
					crust = "#14181a",
				},
				latte = {
					-- custom everforest light hard port
					rosewater = "#a43b35",
					flamingo = "#da3537",
					pink = "#d332a1",
					mauve = "#aa3685",
					red = "#ff3532",
					maroon = "#de3631",
					peach = "#f36c0b",
					yellow = "#bd8800",
					green = "#596600",
					teal = "#287e5e",
					sky = "#52b1c7",
					sapphire = "#3fb4b8",
					blue = "#317da7",
					lavender = "#474155",
					text = "#4d4742",
					subtext1 = "#5b5549",
					subtext0 = "#6d6655",
					overlay2 = "#786d5a",
					overlay1 = "#8c7c62",
					overlay0 = "#a18d66",
					surface2 = "#c9bea5",
					surface1 = "#d8d3ba",
					surface0 = "#e8e2c8",
					base = "#ebe4c8",
					mantle = "#e1dab5",
					crust = "#bdc0a0",
				},
				macchiato = {
					rosewater = "#ffffff",
					flamingo = "#ffffff",
					red = "#ffdd33",
					maroon = "#ffffff",
					pink = "#ffdd33",
					mauve = "#ffdd33",
					peach = "#96a6c8",
					yellow = "#899b92",
					green = "#73c936",
					teal = "#88b992",
					sky = "#cc8c3c",
					sapphire = "#96a6c8",
					blue = "#778899",
					lavender = "#778899",
					text = "#eae3d5",
					subtext1 = "#d5c9b7",
					subtext0 = "#bfb3a5",
					overlay2 = "#aca195",
					overlay1 = "#958b7e",
					overlay0 = "#6f6660",
					surface2 = "#585858",
					surface1 = "#4b4b4b",
					surface0 = "#353535",
					base = "#181818",
					mantle = "#1d2021",
					crust = "#1d2021",
				},
			},
		})
		vim.cmd.colorscheme("catppuccin-frappe")
	end,
}

return M

--[[
    {
	"scottmckendry/cyberdream.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("cyberdream")
	end,
}
]]

--[[
{
	"sainnhe/gruvbox-material",
	lazy = false,
	priority = 1000,
	config = function()
		local transparent = true
		vim.g.gruvbox_material_background = "hard"
		vim.g.gruvbox_material_foreground = "original"
		vim.g.gruvbox_material_transparent_background = transparent
		vim.cmd.colorscheme("gruvbox-material")
	end,
}
    ]]
