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
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'onsails/lspkind.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  -- use 'L3MON4D3/LuaSnip'
  use 'glepnir/lspsaga.nvim'
  use 'mattn/emmet-vim'
  -- use 'jiangmiao/auto-pairs'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'nvim-lualine/lualine.nvim' -- StatusLine
  use 'norcalli/nvim-colorizer.lua'

  -- for file finder 
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
   use 'nvim-telescope/telescope-file-browser.nvim'
  -- use 'tiagofumo/vim-nerdtree-syntax-highlight' --Nerd tree syntax highlight
  -- use 'Xuyuanp/nerdtree-git-plugin' --Nerd Tree
  use 'preservim/nerdcommenter' --nerd commenter
  -- use 'preservim/nerdtree'
  use {
    'nvim-treesitter/nvim-treesitter',
     run = ':TSUpdate'
  }

  use 'tpope/vim-commentary' --another commenter for comment toggler

  -- Mason plugin for more language servers
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'


  --Plugins for tab
  use 'kyazdani42/nvim-web-devicons'
  use 'romgrk/barbar.nvim'

  use 'jose-elias-alvarez/null-ls.nvim'

  use('MunifTanjim/prettier.nvim') --Prettier plugin for Neovim's built in 

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

