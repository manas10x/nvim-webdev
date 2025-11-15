local lsp = require('lsp-zero')

lsp.preset('recommended')

-- List of servers
local servers = { 'pyright', 'ts_ls', 'gleam', 'ocamllsp', 'intelephense' }

for _, server in ipairs(servers) do
    lsp.configure(server, {})
end

-- Add emmet-ls for web development
lsp.configure('emmet_ls', {
    filetypes = { "html", "css", "scss", "javascriptreact", "typescriptreact", "vue", "svelte", "less" },
    init_options = {
        html = {
            options = {
                ["bem.enabled"] = true
            }
        }
    }
})

-- Setup keymaps on attach
lsp.on_attach(function(_, bufnr)
    local opts = { buffer = bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<F3>', function() vim.lsp.buf.format({ async = true }) end, opts)
    vim.keymap.set('n', '<F4>', vim.lsp.buf.code_action, opts)
end)

-- Setup completion capabilities
lsp.setup_nvim_cmp()

-- Initialize LSP
lsp.setup()

