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
		})
		vim.cmd.colorscheme("catppuccin-mocha")
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
