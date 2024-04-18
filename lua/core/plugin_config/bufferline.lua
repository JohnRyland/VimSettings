vim.opt.termguicolors = true

require("bufferline").setup {
  highlights = { fill = { bg = '#707070' } },
  options =
  {
    offsets = {
      {
        --filetype = "NvimTree",
        filetype = "neo-tree",
        text = "File Explorer",
        padding = 1
      }
    },

    -- left_trunc_marker = "",
    -- right_trunc_marker = "",
    -- always_show_bufferline = true,
    -- indicator = { style = 'underline' },
    show_tab_indicators = true,
    show_buffer_close_icons = false,
    mappings = "true",
    separator_style = "slant"
  }
}

--vim.keymap.set('n', '<TAB>', ':BufferLineCycleNext<CR>')
--vim.keymap.set('n', '<S-TAB>', ':BufferLineCyclePrev<CR>')

