return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "javascript", "html", "go", "python" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			disable = { "tex" },
			auto_install = true,
			ignore_install = {},
		})
	end,
}
