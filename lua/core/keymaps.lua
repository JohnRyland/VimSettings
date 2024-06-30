
-- Quit
vim.keymap.set('n', 'q', ':q<CR>')
vim.keymap.set('n', '<S-q>q', ':qa!<CR>')

-- Search
vim.keymap.set('n', '<leader>/', ':nohlsearch<CR>')

-- Toggle buffers
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
vim.keymap.set('n', '~', ':lua NTGlobal["terminal"]:toggle()<CR>') --:set invbuflisted<CR>')

-- Searching
vim.keymap.set('n', '<leader>f', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader><Space>', ':Telescope oldfiles<CR>')
vim.keymap.set('n', '<leader>g', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>h', ':Telescope help_tags<CR>')
vim.keymap.set('n', '<leader>q', ':Telescope quickfix<CR>')
vim.keymap.set('n', '<leader>m', ':Telescope man_pages sections={"ALL"}<CR>')

-- Run make
vim.keymap.set("n", "<s-m>", ":make debug<CR>:cw<CR>")

-- Cycle through quick fix list
vim.keymap.set("n", "<c-n>", ":cn<CR>")
vim.keymap.set("n", "<c-p>", ":cp<CR>")
vim.keymap.set("n", ">", ":cn<CR>")
vim.keymap.set("n", "<", ":cp<CR>")

-- Keys help
vim.keymap.set("n", "?", ":WhichKey<CR>")

-- File explorer
vim.keymap.set('n', '<leader>t', ':Neotree toggle<CR>')

--vim.keymap.set('n', '~', ':split<CR>:wincmd w<CR>:resize 20<CR>:term<CR>:set invbuflisted<CR>')
--vim.keymap.set("n", "<s-m>", ":make<CR>:copen<CR>")
--vim.keymap.set('n', '<tab>', ':BufferLineCycleNext<CR>')
--vim.keymap.set('n', '<s-tab>', ':BufferLineCyclePrev<CR>')
--vim.keymap.set("n", "<s-tab>", ":WindowPick<CR>")
--vim.keymap.set('n', '<s-tab>', ":lua require('nvim-window').pick()<CR>")
--vim.keymap.set('n', '<leader>t', ':NvimTreeFocus<CR>')
--vim.keymap.set('n', '<leader>n', ':NvimTreeFindFileToggle<CR>')
--vim.keymap.set("qf", "<s-tab>", [[:wincmd w<CR>]])

vim.keymap.set('n', '<ScrollWheelDown>', ':call comfortable_motion#flick(40)<CR>')
vim.keymap.set('n', '<ScrollWheelUp>',   ':call comfortable_motion#flick(-40)<CR>')


