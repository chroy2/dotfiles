return {
	"lervag/vimtex",
	lazy = false,
	config = function()
		vim.cmd("let g:tex_flavor = 'latex'")
		vim.cmd("let g:vimtex_view_general_viewer = 'zathura'")
		vim.cmd("let g:vimtex_view_zathura_options = '-reuse-instance'")
	end,
}
