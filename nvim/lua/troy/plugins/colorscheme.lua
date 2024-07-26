return {
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
