
require('lualine').setup {
  options = {
    icons_enabled = true,
    -- theme = 'gruvbox',
    -- theme = 'onedark',
    theme = 'nord',
    -- theme = 'onenord',
  },
  sections = {
    lualine_a = { {
        'filename',
        path = 1,
    } }
  }
}

