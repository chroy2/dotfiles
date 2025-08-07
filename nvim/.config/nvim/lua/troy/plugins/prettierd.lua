return {}
-- ~/.config/nvim/lua/troy/plugins/prettierd.lua
--[[
return {

	{
		-- We still need a “dummy” repo or path here so Lazy.nvim doesn’t complain.
		-- Use any real plugin you already have, or a no-op plugin, e.g.:
		"nvim-lua/plenary.nvim",

		-- But override its config so that we run our prettierd autocmd:
		config = function()
			local function format_with_prettierd()
				local bufnr = vim.api.nvim_get_current_buf()
				local ft = vim.bo[bufnr].filetype
				local supported = {
					javascript = true,
					javascriptreact = true,
					typescript = true,
					typescriptreact = true,
					css = true,
					scss = true,
					less = true,
					html = true,
					json = true,
					markdown = true,
				}
				if not supported[ft] then
					return
				end

				local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
				local input = table.concat(lines, "\n")
				local filename = vim.api.nvim_buf_get_name(bufnr)
				if filename == "" then
					return
				end

				local view = vim.fn.winsaveview()
				local cmd = { "prettierd", "--stdin-filepath", filename }
				local ok, result = pcall(vim.fn.systemlist, cmd, input)

				if ok and vim.v.shell_error == 0 then
					vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, result)
					vim.fn.winrestview(view)
				end
			end

			local aug = vim.api.nvim_create_augroup("TroyPrettierdFormat", { clear = true })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = aug,
				pattern = {
					"*.js",
					"*.jsx",
					"*.ts",
					"*.tsx",
					"*.css",
					"*.scss",
					"*.less",
					"*.html",
					"*.json",
					"*.md",
				},
				callback = format_with_prettierd,
			})
		end,
	},
}]]
