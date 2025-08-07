return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		-- 1) Register the Jinja2 parser
		local parser_cfg = require("nvim-treesitter.parsers").get_parser_configs()
		parser_cfg.jinja2 = {
			install_info = {
				-- tree-sitter grammar for Jinja2
				url = "https://github.com/theHamsta/tree-sitter-jinja2.git",
				files = { "src/parser.c" },
				branch = "master",
			},
			filetype = "htmldjango", -- use Django/Jinja filetype
		}

		-- 2) Setup nvim-treesitter with Jinja2
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"javascript",
				"html",
				"go",
				"python",
				"jinja2",
			},
			sync_install = false,
			auto_install = true,
			ignore_install = {},
			highlight = {
				enable = true,
				-- keep regex-based HTML highlighting alongside Treesitter
				additional_vim_regex_highlighting = { "html" },
			},
			indent = { enable = true },
			disable = { "tex" },
			modules = {}, -- satisfy TSConfig signature
		})

		-- 3) Filetype detection for Jinja2 templates
		vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
			pattern = { "*.j2", "*.jinja2" },
			callback = function()
				vim.opt.filetype = "htmldjango"
			end,
		})
		vim.api.nvim_create_autocmd("BufRead", {
			pattern = "*.html",
			callback = function()
				if vim.fn.search("{%%", "nw") > 0 then
					vim.opt.filetype = "htmldjango"
				end
			end,
		})
	end,
}
