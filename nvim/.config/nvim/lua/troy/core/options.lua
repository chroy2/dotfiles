vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

--- ft plugins

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.list = true
opt.listchars = { tab = "··", space = "·" }
opt.cursorline = false

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.swapfile = false

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
	-- disable virtual text
	virtual_text = true,

	-- show signs
	signs = true,

	-- delay update diagnostics
	update_in_insert = true,
	-- display_diagnostic_autocmds = { "InsertLeave" },
})
