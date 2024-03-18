vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.opt.number = true

vim.api.nvim_set_option("clipboard", "unnamed")

vim.keymap.set('n', '<leader>/', ':nohlsearch<CR>')
vim.keymap.set('n', 'q', ':q<CR>')
vim.keymap.set('n', '<S-q>', ':q!<CR>')
