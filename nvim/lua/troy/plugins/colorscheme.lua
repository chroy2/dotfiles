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
			},
		})
		vim.cmd.colorscheme("catppuccin-mocha")
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
