local client = vim.lsp.start_client {
    name = "Go-Lsp",
    cmd = { "/Users/troywitmer/Documents/Code/Go-Lsp/main" },
}

if not client then
    vim.notify "hey, you didnt do the client thing good"
    return
end

vim.api.nvim_create_autocmd("FileType", {
    pattern = "markdown",
    callback = function()
        vim.lsp.buf_attach_client(0, client)
    end
})

