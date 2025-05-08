return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({

			actions = {
				open_file = {
					quit_on_open = true,
				},
			},
		})

		local keymap = vim.keymap
		keymap.set("n", "<leader>ft", "<cmd>NvimTreeToggle<cr>", { desc = "Open File Tree" })
	end,
}
