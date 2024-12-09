local M = {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			transparent_background = true,
			styles = {
				keywords = { "bold" },
				functions = { "italic" },
			},
			integrations = {
				alpha = false,
				neogit = false,
				nvimtree = false,
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
				all = {
					text = "#ffffff",
				},
				mocha = {
					rosewater = "#F5B8AB",
					flamingo = "#F29D9D",
					pink = "#AD6FF7",
					mauve = "#FF8F40",
					red = "#E66767",
					maroon = "#EB788B",
					peach = "#FAB770",
					yellow = "#FACA64",
					green = "#70CF67",
					teal = "#4CD4BD",
					sky = "#61BDFF",
					sapphire = "#4BA8FA",
					blue = "#00BFFF",
					lavender = "#00BBCC",
					text = "#C2C9E6",
					subtext1 = "#A3AAC2",
					subtext0 = "#8E94AB",
					overlay2 = "#7D8296",
					overlay1 = "#676B80",
					overlay0 = "#464957",
					surface2 = "#3A3D4A",
					surface1 = "#2F313D",
					surface0 = "#1D1E29",
					base = "#0b0b12",
					mantle = "#11111a",
					crust = "#191926",
				},
				frappe = {
					rosewater = "#F5B8AB",
					flamingo = "#F29D9D",
					pink = "#AD6FF7",
					mauve = "#FF8F40",
					red = "#E66767",
					maroon = "#EB788B",
					peach = "#FAB770",
					yellow = "#FACA64",
					green = "#70CF67",
					teal = "#4CD4BD",
					sky = "#61BDFF",
					sapphire = "#4BA8FA",
					blue = "#00BFFF",
					lavender = "#00BBCC",
					text = "#C1C9E6",
					subtext1 = "#A3AAC2",
					subtext0 = "#8E94AB",
					overlay2 = "#7D8296",
					overlay1 = "#676B80",
					overlay0 = "#464957",
					surface2 = "#3A3D4A",
					surface1 = "#2F313D",
					surface0 = "#1D1E29",
					base = "#0b0b12",
					mantle = "#11111a",
					crust = "#191926",
				},
				latte = {
					rosewater = "#ffc9c9",
					flamingo = "#ff9f9a",
					pink = "#ffa9c9",
					mauve = "#df95cf",
					lavender = "#a990c9",
					red = "#ff6960",
					maroon = "#f98080",
					peach = "#f9905f",
					yellow = "#f9bd69",
					green = "#b0d080",
					teal = "#a0dfa0",
					sky = "#a0d0c0",
					sapphire = "#95b9d0",
					blue = "#89a0e0",
					text = "#e0d0b0",
					subtext1 = "#d5c4a1",
					subtext0 = "#bdae93",
					overlay2 = "#928374",
					overlay1 = "#7c6f64",
					overlay0 = "#665c54",
					surface2 = "#504844",
					surface1 = "#3a3634",
					surface0 = "#252525",
					base = "#151515",
					mantle = "#0e0e0e",
					crust = "#080808",
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
		vim.cmd.colorscheme("catppuccin-latte")
	end,
}

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

return M
