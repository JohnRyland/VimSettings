
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "asm", "c", "cpp", "lua", "rust", "ruby", "vim", "html" },

  -- Install parsers synchronously (only applied to 'ensure_installed')
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
    use_languagetree = false,
    disable = function(_, bufnr)
       local buf_name = vim.api.nvim_buf_get_name(bufnr)
       local file_size = vim.api.nvim_call_function("getfsize", { buf_name })
       return file_size > 256 * 1024
    end,
  },
  indent = {
    enable = true,
  },
}

