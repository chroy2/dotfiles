return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false,
	main = "nvim-treesitter", -- use the new module
	opts = {
		ensure_installed = {
			"c",
			"lua",
			"vim",
			"vimdoc",
			"query",
			"markdown",
			"markdown_inline",
			"rust",
			"python",
		},
		auto_install = true,
		highlight = {
			enable = true,
			disable = { "html", "jinja", "htmldjango", "django" },
			additional_vim_regex_highlighting = false,
		},
	},
}
