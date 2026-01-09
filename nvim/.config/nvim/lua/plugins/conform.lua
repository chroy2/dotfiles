return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			-- Customize or remove this keymap to your liking
			"<leader>-",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	-- Everything in opts will be passed to setup()
	opts = {
		-- Define your formatters
		formatters_by_ft = {
			nix = { "nixpkgs_fmt" },
			lua = { "stylua" },
			javascript = { "prettierd" },
			javascriptreact = { "prettierd" },
			typescript = { "prettierd" },
			typescriptreact = { "prettierd" },
			html = { "djlint" },
			django = { "djlint" },
			htmldjango = { "djlint" },
			jinja = { "djlint" },
			markdown = { "prettier" },
			jsx = { "prettierd" },
			tsx = { "prettierd" },
			markdown = { "prettierd" },
			go = { "gofmt" },
			gohtmltmpl = { "djlint" },
			template = { "djlint" },
			tmpl = { "djlint" },
			rust = { "rustfmt" },
			bash = { "shfmt" },
			c = { "clang-format" },
		},
		-- Set up format-on-save
		format_on_save = { timeout_ms = 500, lsp_fallback = true },
		-- Customize formatters
		formatters = {
			shfmt = {
				prepend_args = { "-i", "2" },
			},
			djlint = {
				command = "djlint",
				prepend_args = { "--reformat", "--profile", "jinja", "--indent", "2" },
			},
		},
	},
	init = function()
		-- If you want the formatexpr, here is the place to set it
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
