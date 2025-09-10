return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = false, -- load at startup
	main = "nvim-treesitter.configs",
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
