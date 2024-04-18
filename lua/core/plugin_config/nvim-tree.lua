vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1


-- require("nvim-tree").setup()
require("neo-tree").setup({})


--vim.keymap.set('n', '<leader>t', ':NvimTreeFocus<CR>')
--vim.keymap.set('n', '<leader>n', ':NvimTreeFindFileToggle<CR>')

vim.keymap.set('n', '<leader>t', ':Neotree toggle<CR>')

