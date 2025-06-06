return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "→",
					pakage_uninstalled = "✗",
				},
			},
		})
		mason_lspconfig.setup({
			-- list of servers for mason to install
			ensure_installed = {
				"clangd",
				"css-lsp",
				"gopls",
				"html-lsp",
				"jinja-lsp",
				"lua-language-server",
				"prettierd",
				"pylint",
				"pyright",
				"ruff",
				"stylua",
				"svelte-language-server",
				"tailwindcss-language-server",
				"svelte",
				"graphql",
				"emmet_ls",
				"lua_ls",
				"eslint",
			},

			automatic_installation = true,
		})
	end,
}
