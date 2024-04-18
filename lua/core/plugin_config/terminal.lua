
vim.o.hidden = true

require('nvim-terminal').setup({
    window = {
        position = 'botright',
        split = 'sp',
        width = 50,
        height = 20
    },
    disable_default_keymaps = true
})

