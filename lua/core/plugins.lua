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
  -- this plugin system
  use 'wbthomason/packer.nvim'
  -- themes
  use 'ellisonleao/gruvbox.nvim'
  -- icons  
  use 'nvim-tree/nvim-web-devicons'
  -- status bar
  use 'nvim-lualine/lualine.nvim'
  -- syntax highlighting
  use 'nvim-treesitter/nvim-treesitter'
  -- dependancy - async library
  use 'nvim-lua/plenary.nvim'
  -- searching
  use 'nvim-telescope/telescope.nvim'
  -- start page
  use 'nvimdev/dashboard-nvim'
  -- dependancy - ui library
  use 'MunifTanjim/nui.nvim'
  -- file explorer side-view
  use 'nvim-neo-tree/neo-tree.nvim'
  -- tabbed open buffers
  use 'akinsho/bufferline.nvim'
  -- cycle between buffers
  use 'ghillb/cybu.nvim'
  -- terminal
  use 's1n7ax/nvim-terminal'
  -- show key-mappings
  use 'folke/which-key.nvim'
  -- smooth scolling
  use 'yuttie/comfortable-motion.vim'

  -- lsp - language support package
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/lsp-status.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'nvimdev/lspsaga.nvim'

  -- git
  use 'tanvirtin/vgit.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'dinhhuy258/git.nvim'
  use 'lewis6991/gitsigns.nvim'
  
  -- alternatives / other plugins tried
  --use 'nvim-tree/nvim-tree.lua'
  --use 'ten3roberts/qf.nvim'
  --use 'yorickpeterse/nvim-window'
  --use 'ten3roberts/window-picker.nvim'
  --use 'nanozuki/tabby.nvim'
  --use 'backdround/tabscope.nvim'
  --use 'tiagovla/scope.nvim'
  --use 'adelarsq/neoline.vim'
  --use 'nvim-lua/completion.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

