vim.opt.termguicolors = true

require("bufferline").setup {
  options =
  {
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        separator = true,
        highlight = "Directory",
        text_align = "left"
      }
    },
    indicator = {
      style = 'underline'
    },
    always_show_bufferline = true,
    show_tab_indicators = true,    
    separator_style = "slant"
  }
}

vim.keymap.set('n', '<TAB>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<S-TAB>', ':BufferLineCyclePrev<CR>')
