return {
	-- {
	-- 	"craftzdog/solarized-osaka.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme solarized-osaka]])
	-- 		require("solarized-osaka").setup({
	-- 			style = "night",
	-- 			transparent = true,
	-- 			lualine_bold = true,
	-- 		})
	-- 		if vim.g.neovide == true then
	-- 			require("solarized-osaka").setup({
	-- 				transparent = false,
	-- 				day_brightness = 0.9,
	-- 			})
	-- 		end
	-- 		require("solarized-osaka").load()
	-- 		vim.cmd([[highlight CursorLine  guibg=#222A2E ctermbg=darkblue]])
	-- 		-- 		vim.cmd([[highlight CursorLine  guibg=#30333B ctermbg=darkblue]])
	-- 	end,
	-- },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
				styles = {
					-- functions = { "italic" },
					-- types = { "italic" },
				},
			})
			if vim.g.neovide == true then
				require("catppuccin").setup({
					transparent_background = false,
					background = {
						dark = "mocha",
					},
					color_overrides = {
						all = {
							-- base = "#181A27",
							base = "#232639",
						},
					},
				})
			end
			require("catppuccin").load()
			vim.cmd([[colorscheme catppuccin]])
			vim.cmd([[highlight CursorLine  guibg=#2e2e41 ctermbg=darkblue]])
		end,
	},
	-- {
	--   "rebelot/kanagawa.nvim",
	--   name = "kanagawa",
	--   lazy = false,
	--   priority = 1000,
	--   config = function()
	--     require('kanagawa').setup({
	--       compile = true,
	--       transparent = true,
	--       theme = 'wave'
	--     })
	--     require('kanagawa').load()
	-- 	vim.cmd([[colorscheme kanagawa]])
	-- 	vim.cmd([[highlight CursorLine  guibg=#30333B ctermbg=darkblue]])
	-- 	vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#30333B", fg = "#F9BF40" })
	--   end
	-- },
	-- {
	-- 	"bluz71/vim-nightfly-colors",
	-- 	name = "nightfly",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.nightflyCursor = true
	-- 		vim.g.nightflyTransparent = true
	-- 		if vim.g.neovide == true then
	-- 			vim.g.nightflyTransparent = false
	-- 		end
	-- 		vim.cmd([[colorscheme nightfly]])
	-- 		vim.cmd([[highlight CursorLine  guibg=#30333B ctermbg=darkblue]])
	-- 		vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#30333B", fg = "#F9BF40" })
	-- 	end,
	-- },
	-- {
	-- 	"Mofiqul/vscode.nvim",
	-- 	priority = 1000,
	-- 	lazy = false,
	-- 	config = function()
	-- 		require("vscode").setup({
	-- 			transparent = true,
	-- 			italic_comments = true,
	-- 			color_overrides = {
	-- 				vscGreen = "#69696B",
	-- 			},
	-- 		})
	-- 		if vim.g.neovide == true then
	-- 			require("vscode").setup({
	-- 				transparent = false,
	-- 			})
	-- 		end
	-- 		require("vscode").load()
	-- 		-- vim.cmd([[highlight CursorLine  guibg="none" ctermbg=darkblue]])
	-- 		-- vim.cmd([[highlight CursorLine  guibg=none ctermbg=darkblue]])
	-- 		vim.cmd([[highlight CursorLine  guibg=#30333B ctermbg=darkblue]])
 --      vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#30333B", fg = "#F9BF40" })
	--      -- vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none", fg = "#F9BF40", bold = true, italic = true })
	-- 	end,
	-- },
	-- {
	-- 	"nyoom-engineering/oxocarbon.nvim",
	-- 	priority = 1000,
	-- 	lazy = false,
	-- 	config = function()
	-- 		vim.cmd("colorscheme oxocarbon")
	-- 		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- 		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- 		vim.cmd([[highlight CursorLine  guibg=none ctermbg=darkblue]])
	--      vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none", fg = "#F9BF40", bold = true, italic = true })
	-- 	end,
	-- },
	-- {
	-- 	"EdenEast/nightfox.nvim",
	-- 	priority = 1000,
	-- 	lazy = false,
	-- 	config = function()
	-- 		require("nightfox").setup({
	-- 			options = {
	-- 				transparent = true,
	-- 				comments = "italic",
	-- 				keywords = "bold",
	-- 				types = "italic,bold",
	-- 			},
	-- 		})
	-- 		require("nightfox").load()
	-- 		vim.cmd("colorscheme nightfox")
	-- 		vim.cmd([[highlight CursorLine  guibg=#30333B ctermbg=darkblue]])
	-- 		vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#30333B", fg = "#F9BF40", bold = true, italic = true })
	-- 	end,
	-- },
	-- {
	-- 	"ellisonleao/gruvbox.nvim",
	-- 	priority = 1000,
	-- 	lazy = false,
	-- 	config = function()
	-- 		require("gruvbox").setup({
	-- 			italics = {
	-- 				operators = true,
	-- 			},
	-- 			transparent_mode = true,
	-- 		})
	--      vim.cmd("colorscheme gruvbox")
	-- 		vim.cmd([[highlight CursorLine  guibg=#30333B ctermbg=darkblue]])
	-- 		vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#30333B", fg = "#F9BF40" })
	-- 	end,
	-- },
	-- {
	-- 	"slugbyte/lackluster.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	init = function()
	-- 		require("lackluster").setup({
	-- 			tweak_background = {
	-- 				normal = "none",
	-- 			},
	-- 		})
	-- 		require("lackluster").load()
	-- 		vim.cmd([[highlight CursorLine  guibg=#222A2E ctermbg=darkblue]])
 --      vim.cmd.colorscheme("lackluster-night")
	-- 	end,
	-- },
	-- {
 --    "AmberLehmann/candyland.nvim",
 --    priority = 1000,
 --    config = function()
	-- 		vim.cmd.colorscheme("candyland")
 --    end
 --  },
}
