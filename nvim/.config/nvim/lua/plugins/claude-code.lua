return {
	"greggh/claude-code.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Required for git operations
	},
	config = function()
		require("claude-code").setup()
	end,

	keys = {
		{ "<leader>mm", "<cmd>terminal claude-code<cr>", mode = "n", desc = "Open Claude Code" },
	},
}
