return {
	"lervag/vimtex",
	lazy = false,
	config = function()
		vim.cmd("let g:tex_flavor = 'latex'")
		vim.cmd("let g:vimtex_view_method = 'zathura'")
	end,
}
