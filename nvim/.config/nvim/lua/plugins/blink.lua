return {
	"saghen/blink.cmp",
	version = "1.*",
	dependencies = {
		{ "L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp" },
		"rafamadriz/friendly-snippets",
	},
	opts = {
		keymap = {
			preset = "default",
			["<C-k>"] = { "select_prev", "fallback" },
			["<C-j>"] = { "select_next", "fallback" },
		},
		appearance = { nerd_font_variant = "mono" },
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		snippets = { preset = "luasnip" },
		completion = {
			documentation = { auto_show = true },
		},
	},
}
