return {
    "lervag/vimtex",
    lazy = false,
    config = function()
        vim.cmd("let g:vimtex_view_general_viewer = 'zathura'")
        vim.cmd("let g:vimtex_view_zathura_options = '-reuse-instance'")
        vim.cmd("let g:tex_flavor = 'latex'")
    end
}
