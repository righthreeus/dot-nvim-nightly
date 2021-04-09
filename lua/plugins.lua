vim.cmd('packadd packer.nvim')

return require('packer').startup(function()

  use 'wbthomason/packer.nvim'

  use  { 'junegunn/fzf', run = function() vim.fn['fzf#install'](0) end }
  use 'airblade/vim-rooter'

  use '9mm/vim-closer'
  use 'tpope/vim-endwise'
  use 'tpope/vim-surround'

  -- use 'Yggdroot/indentLine'
  -- use  'lukas-reineke/indent-blankline.nvim'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
  use { 'kyazdani42/nvim-tree.lua', requires = 'kyazdani42/nvim-web-devicons'}
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
  use 'wfxr/minimap.vim'

  use 'neovim/nvim-lspconfig'
  use { 'ojroques/nvim-lspfuzzy', requires = { {'junegunn/fzf'}, {'junegunn/fzf.vim'} }, }
  use 'hrsh7th/nvim-compe'

  use {'dracula/vim', as = 'dracula'}

end)
