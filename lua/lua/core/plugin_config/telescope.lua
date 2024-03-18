require('telescope').setup({ file_ignore_patterns = { "node%_modules/.*" } })
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
vim.keymap.set('n', '<leader>h', builtin.help_tags, {})
vim.keymap.set('n', '<leader>q', builtin.quickfix, {})
vim.keymap.set('n', '<leader>m', ':Telescope man_pages sections={"ALL"}<CR>')
