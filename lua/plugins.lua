-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use 'tpope/vim-endwise'

  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'}

  -- Post-install/update hook with call of vimscript function with argument
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  -- Use specific branch, dependency and run lua file after load
  use {
    'glepnir/galaxyline.nvim', branch = 'main', config = function() require'spaceline' end,
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- Use dependency and run lua function after load
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  -- server settings
  use 'neovim/nvim-lspconfig'
  use 'mfussenegger/nvim-lint'

  -- code completition
  -- main one
  use {'ms-jpq/coq_nvim', branch = 'coq'}
  -- 9000+ Snippets
  use {'ms-jpq/coq.artifacts', branch = 'artifacts'}

  -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
  -- Need to **configure separately**

  use {'ms-jpq/coq.thirdparty', branch = '3p'}
  --[[
  - shell repl
  - nvim lua api
  - scientific calculator
  - comment banner
  - etc
  --]]
  
  -- dir traversal
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- formating
  use 'sbdchd/neoformat'

  -- colors
  use 'tomasiser/vim-code-dark'
end)
