local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'akinsho/bufferline.nvim'
  use 'nvimdev/dashboard-nvim'

  -- use 'adelarsq/neoline.vim'

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'

  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion.nvim'
  use 'nvim-lua/lsp-status.nvim'
  -- use 'nvimdev/lspsaga.nvim'
  use ({
    'nvimdev/lspsaga.nvim',
    after = 'nvim-lspconfig',
    config = function()
        require('lspsaga').setup({})
    end,
  })

  use {
    'tanvirtin/vgit.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  use 'nvim-telescope/telescope-file-browser.nvim'
  -- use 'glepnir/lspsaga.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'

  -- color schemes
  use 'shaunsingh/nord.nvim'
  use 'AlexvZyl/nordic.nvim'
  use 'sainnhe/everforest'
  use 'sainnhe/edge'
  use 'savq/melange-nvim'
  use 'svrana/neosolarized.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
