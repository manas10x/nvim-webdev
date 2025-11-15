local null_ls = require("null-ls")
local formatting = require("null-ls.formatting")

null_ls.setup({
    sources = {
        formatting.prettier,
    },

    on_attach = function(client, bufnr)
        -- Create augroup properly
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({
                group = augroup,
                buffer = bufnr,
            })

            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,
})
