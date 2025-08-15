return {
	"nvim-treesitter/nvim-treesitter",
	-- use latest; or set `version` to a tag if you prefer pinning
	build = ":TSUpdate",
	lazy = false, -- load at startup; or use events if you want lazy-loading
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
		highlight = { enable = true, additional_vim_regex_highlighting = false },
	},
}
