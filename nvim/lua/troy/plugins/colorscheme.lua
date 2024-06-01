return {
--    "bluz71/vim-nightfly-guicolors",
--   		priority = 1000,
--   		config = function()
--   		--load colorcheme here
--   		vim.cmd([[colorscheme nightfly]])
--   	end,
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
        vim.g.gruvbox_material_background = "hard"
        vim.g.gruvbox_material_foreground = "original"
        vim.cmd.colorscheme('gruvbox-material')
    end,
}
