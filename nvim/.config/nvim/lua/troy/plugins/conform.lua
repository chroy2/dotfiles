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
			javascript = { "prettierd" },
			javascriptreact = { "prettierd" },
			typescript = { "prettierd" },
			typescriptreact = { "prettierd" },
			css = { "prettierd" },
			scss = { "prettierd" },
			html = { "prettierd", "djlint" },
			json = { "prettierd" },
			markdown = { "prettierd" },
			lua = { "stylua" },
			python = { "black" },
			jsx = { "prettierd" },
			go = { "gofmt" },
			jinja = { "djlint" },
			jinja2 = { "djlint" },
			htmldjango = { "djlint" },
		},
		-- Set up format-on-save
		format_on_save = { timeout_ms = 500, lsp_fallback = true },
		-- Customize formatters
		formatters = {
			shfmt = {
				prepend_args = { "-i", "2" },
			},
			djlint = {
				timeout_ms = 3000, -- Increase timeout for djlint
				prepend_args = { "--reformat", "--indent", "2" }, -- Ensure reformat mode
			},
		},
	},
	init = function()
		-- If you want the formatexpr, here is the place to set it
		vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
	end,
}
