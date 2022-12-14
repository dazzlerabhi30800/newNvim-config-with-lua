local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- Autcommand that reloads neovim whenever you save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
	return
end

return packer.startup(function(use)
	use("wbthomason/packer.nvim")

	use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	use("bluz71/vim-nightfly-guicolors")
	use({
		"svrana/neosolarized.nvim",
		requires = { "tjdevries/colorbuddy.nvim" },
	})

	use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

	use("szw/vim-maximizer") -- maximizes and restores current window

	-- essential plugins
	use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
	use("vim-scripts/ReplaceWithRegister") -- replace with register contents using motion (gr + motion)

	-- commenting with gc
	use("numToStr/Comment.nvim")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use("lvimuser/lsp-inlayhints.nvim")

	-- vs-code like icons
	use("kyazdani42/nvim-web-devicons")

	-- statusline
	use("nvim-lualine/lualine.nvim")

	-- fuzzy finding w/ telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("nvim-telescope/telescope-file-browser.nvim")

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim")

	-- configuring lsp servers
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- formatting and linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- for emmet
	use("mattn/emmet-vim")

	-- for colorizer
	use("norcalli/nvim-colorizer.lua")

	--for zen mode / centered layout
	-- Lua
	-- use({
	-- 	"folke/zen-mode.nvim",
	-- 	config = function()
	-- 		require("zen-mode").setup({
	-- 			-- your configuration comes here
	-- 			-- or leave it empty to use the default settings
	-- 			-- refer to the configuration section below
	-- 		})
	-- 	end,
	-- })
	--theme
	use("ellisonleao/gruvbox.nvim")
	use("audibleblink/hackthebox.vim")
	use({ "catppuccin/nvim", as = "catppuccin" })

	--for zoom in neovide
	use("drzel/vim-gui-zoom")
	use("Xh4H/hackthebox-1")
	use("EdenEast/nightfox.nvim")
	-- Lua
	use({
		"olimorris/persisted.nvim",
		--module = "persisted", -- For lazy loading
		config = function()
			require("persisted").setup()
			require("telescope").load_extension("persisted") -- To load the telescope extension
		end,
	})
	use("navarasu/onedark.nvim")
	use("folke/lazy.nvim")
	use("Shatur/neovim-ayu")
	use("folke/tokyonight.nvim")

	-- for the changing root dir
	-- use("https://gitlab.com/__tpb/monokai-pro.nvim")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
