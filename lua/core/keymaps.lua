vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.number = true

vim.opt.showtabline = 2
-- vim.opt.sessionoptions = { "buffers", "tabpages", "globals", }
vim.opt.sessionoptions = 'buffers,curdir,folds,globals,help,tabpages,terminal,winsize'

vim.api.nvim_set_option("clipboard", "unnamed")

vim.keymap.set('n', 'q', ':q<CR>')
vim.keymap.set('n', '<S-q>q', ':qa!<CR>')
vim.keymap.set('n', '<leader>/', ':nohlsearch<CR>')

--vim.keymap.set('n', '<tab>', ':BufferLineCycleNext<CR>')
--vim.keymap.set('n', '<s-tab>', ':BufferLineCyclePrev<CR>')
--vim.keymap.set("n", "<s-tab>", ":WindowPick<CR>")
--vim.keymap.set('n', '<s-tab>', ":lua require('nvim-window').pick()<CR>")

vim.keymap.set("n", "<tab>", ":CybuNext<CR>")
vim.keymap.set("n", "<c-tab>", ":tabnext<CR>")
vim.keymap.set("n", "<s-tab>", ":wincmd w<CR>")

-- Close current buffer
vim.keymap.set("n", "<c-d>", ":set invbuflisted<CR>:bnext<CR>")

-- In terminal, press ESC to exit insert mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])
vim.keymap.set("t", "<c-tab>", [[<C-\><C-n>:tabnext<CR>]])
vim.keymap.set("t", "<s-tab>", [[<C-\><C-n>:wincmd w<CR>]])

-- Open a new terminal
--vim.keymap.set('n', '~', ':split<CR>:wincmd w<CR>:resize 20<CR>:term<CR>:set invbuflisted<CR>')
vim.keymap.set('n', '~', ':lua NTGlobal["terminal"]:toggle()<CR>') --:set invbuflisted<CR>')

-- Run make
--vim.keymap.set("n", "<s-m>", ":make<CR>:copen<CR>")
vim.keymap.set("n", "<s-m>", ":make<CR>:cw<CR>")

-- Cycle through quick fix list
vim.keymap.set("n", "<c-n>", ":cn<CR>")
vim.keymap.set("n", "<c-p>", ":cp<CR>")
vim.keymap.set("n", ">", ":cn<CR>")
vim.keymap.set("n", "<", ":cp<CR>")

--vim.keymap.set("qf", "<s-tab>", [[:wincmd w<CR>]])

