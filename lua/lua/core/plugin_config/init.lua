require("core.plugin_config.gruvbox")
require("core.plugin_config.lualine")
require("core.plugin_config.nvim-tree")
require("core.plugin_config.treesitter")
require("core.plugin_config.telescope")
require("core.plugin_config.bufferline")

require('dashboard').setup{
  config = {
    shortcut = {
      { desc = 'File Explorer',   key = '<Sp>-T' },
      { desc = 'Toggle Explorer', key = '<Sp>-N' },
      { desc = 'Recent',          key = '<Sp><Sp>' },
      { desc = 'Grep',            key = '<Sp>-G' },
      { desc = 'Find',            key = '<Sp>-F' },
      { desc = 'Man',             key = '<Sp>-M' },
      { desc = 'Help',            key = '<Sp>-H' },
      { desc = 'Next',            key = '<Tab>' },
      { desc = 'Prev',            key = '<Shift><Tab>' },
      { desc = 'Close',           key = 'Q' }
    }
  }
}

require('vgit').setup({

})

-- require('lspconfig')
-- require('nvim-lspconfig')
-- require('lspsaga').setup{}

local nvim_lsp = require "lspconfig"
local lsp_status = require("lsp-status")

-- function to attach completion when setting up lsp
local on_attach = function(client)
    lsp_status.register_progress()
    lsp_status.config(
        {
            status_symbol = "LSP ",
            indicator_errors = "E",
            indicator_warnings = "W",
            indicator_info = "I",
            indicator_hint = "H",
            indicator_ok = "ok"
        }
    )

    require "completion".on_attach(client)
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end

--    buf_set_keymap("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
--    buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
--    buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
--    buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
--    buf_set_keymap("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
--    buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
--    buf_set_keymap("n", "<space>e", "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", opts)
--    buf_set_keymap("n", "[d", "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", opts)
--    buf_set_keymap("n", "]d", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
--    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
--    buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
end

-- Use a loop to conveniently both setup defined servers
-- and map buffer local keybindings when the language server attaches
local servers = {
    "clangd"
}
for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
        on_attach = on_attach,
        capabilities = lsp_status.capabilities
    }
end
-- Enable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics,
    {
        underline = true,
        virtual_text = false,
        signs = true,
        update_in_insert = true
    }
)

