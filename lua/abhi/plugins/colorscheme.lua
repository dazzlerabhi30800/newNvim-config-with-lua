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
	-- 			night_brightness = 0.9,
	-- 			styles = {
	-- 				functions = { italic = false, underdotted = true },
	-- 				variables = { italic = false },
	-- 				comments = { italic = false },
	-- 				keywords = { italic = false, underdotted = true },
	--
	-- 				sidebars = "transparent",
	-- 				floats = "transparent",
	-- 			},
	-- 		})
	-- 		if vim.g.neovide == true then
	-- 			require("solarized-osaka").setup({
	-- 				-- transparent = true,
	-- 				transparent = false,
	-- 				day_brightness = 0.9,
	-- 			})
	-- 		end
	-- 		require("solarized-osaka").load()
	-- 		vim.cmd([[highlight CursorLine  guibg=#222A2E ctermbg=darkblue]])
	-- 		vim.api.nvim_set_hl(0, "Cursor", { bg = "#e80674", fg = "none" })
	-- 		-- 		vim.cmd([[highlight CursorLine  guibg=#30333B ctermbg=darkblue]])
	-- 	end,
	-- },
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "mocha",
	-- 			transparent_background = true,
	-- 			no_italic = false,
	-- 			styles = {
	-- 				comments = { "bold", "italic" },
	-- 				conditionals = { "italic" },
	-- 				loops = {},
	-- 				functions = { "italic" },
	-- 				keywords = {},
	-- 				strings = { "italic" },
	-- 				variables = {},
	-- 				numbers = {},
	-- 				booleans = {},
	-- 				properties = {},
	-- 				types = { "italic" },
	-- 				operators = {},
	-- 			},
	-- 		})
	-- 		if vim.g.neovide == true then
	-- 			require("catppuccin").setup({
	-- 				transparent_background = false,
	-- 				background = {
	-- 					dark = "mocha",
	-- 				},
	-- 				color_overrides = {
	-- 					all = {
	-- 						-- base = "#1E1F29",
	-- 						base = "#151517",
	-- 					},
	-- 				},
	-- 			})
	-- 		end
	-- 		require("catppuccin").load()
	-- 		vim.cmd([[colorscheme catppuccin]])
	-- 		vim.cmd([[highlight CursorLine  guibg=#2a2a41 ctermbg=darkblue]])
	-- 	end,
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
	-- 				vscGreen = "#5a7e4e",
	-- 			},
	-- 		})
	-- 		if vim.g.neovide == true then
	-- 			require("vscode").setup({
	-- 				transparent = false,
	-- 			})
	-- 		end
	-- 		require("vscode").load()
	--
	-- 		-- vim.cmd("colorscheme wildcharm")
	-- 		-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- 		vim.api.nvim_set_hl(0, "Cursor", { bg = "#8740f8", fg = "#ffffff" })
	-- 		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- 		vim.cmd([[highlight CursorLine  guibg=#30333B ctermbg=darkblue]])
	-- 		vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#30333B", fg = "#F9BF40", bold = true })
	-- 		-- vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none", fg = "#F9BF40", bold = true, italic = true })
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
	-- 	"diegoulloao/neofusion.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("neofusion").setup({
	-- 			transparent_mode = true,
	-- 		})
	-- 		vim.cmd([[ colorscheme neofusion ]])
	-- 		vim.cmd([[highlight CursorLine  guibg=#222A2E ctermbg=darkblue]])
	-- 	end,
	-- },
	-- {
	-- 	"chriskempson/base16-vim",
	-- 	lazy = false,
	-- 	priority = 10000,
	-- 	config = function()
	-- 		vim.cmd([[ colorscheme base16-default-dark]])
	-- 		vim.cmd([[highlight CursorLine  guibg=#2e2d2d ctermbg=darkblue]])
	-- 		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- 		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- 		vim.api.nvim_set_hl(0, "StartifyHeader", { bg = "none" })
	-- 		vim.cmd("highlight SignColumn guibg=none")
	-- 	end,
	-- },
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {},
	-- 	config = function()
	-- 		require("tokyonight").setup({
	-- 			style = "night",
	-- 			transparent = true,
	-- 			styles = {
	-- 				functions = {},
	-- 				keywords = { italic = false },
	-- 				comments = { italic = false },
	-- 			},
	-- 		})
	-- 		vim.cmd([[colorscheme tokyonight-moon]])
	-- 		if vim.g.neovide == true then
	-- 			vim.api.nvim_set_hl(0, "Normal", { bg = "#1E1C24" })
	-- 		end
	-- 	end,
	-- },
	-- {
	-- 	"projekt0n/github-nvim-theme",
	-- 	name = "github-theme",
	-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		require("github-theme").setup({
	-- 			options = {
	-- 				transparent = true,
	-- 				styles = {
	-- 					comments = "italic,bold",
	-- 					functions = "italic",
	-- 				},
	-- 			},
	-- 		})
	-- 		vim.cmd("colorscheme github_dark")
	-- 	end,
	-- },
	-- {
	-- 	"datsfilipe/vesper.nvim",
	-- 	name = "vesper",
	-- 	config = function()
	-- 		require("vesper").setup({
	-- 			transparent = false,
	-- 			italics = {
	-- 				comments = true, -- Boolean: Italicizes comments
	-- 				keywords = true, -- Boolean: Italicizes keywords
	-- 				functions = true, -- Boolean: Italicizes functions
	-- 				strings = true, -- Boolean: Italicizes strings
	-- 				variables = false, -- Boolean: Italicizes variables
	-- 			},
	-- 		})
	-- 		vim.cmd.colorscheme("vesper")
	-- 		if vim.g.neovide == true then
	-- 			require("vesper").setup({
	-- 				transparent = false,
	-- 			})
	-- 			vim.api.nvim_set_hl(0, "Normal", { bg = "#121212" })
	-- 		end
	-- 	end,
	-- },
	-- {
	-- 	"rose-pine/neovim",
	-- 	name = "rose-pine",
	-- 	config = function()
	-- 		require("rose-pine").setup({
	-- 			styles = {
	-- 				transparency = true,
	-- 			},
	-- 		})
	-- 		vim.cmd("colorscheme rose-pine")
	-- 		vim.cmd([[highlight CursorLine  guibg=#2e2d2d ctermbg=darkblue]])
	-- 	end,
	-- },
	-- {
	-- 	"olimorris/onedarkpro.nvim",
	-- 	priority = 1000, -- Ensure it loads first
	-- 	config = function()
	-- 		require("onedarkpro").setup({
	-- 			options = {
	-- 				transparency = true,
	-- 			},
	-- 			styles = {
	-- 				types = "NONE",
	-- 				methods = "NONE",
	-- 				numbers = "NONE",
	-- 				strings = "NONE",
	-- 				comments = "italic",
	-- 				keywords = "NONE",
	-- 				constants = "NONE",
	-- 				functions = "italic",
	-- 				operators = "NONE",
	-- 				variables = "NONE",
	-- 				parameters = "NONE",
	-- 				conditionals = "italic",
	-- 				virtual_text = "NONE",
	-- 			},
	-- 		})
	-- 		require("onedarkpro").load()
	-- 		vim.cmd("colorscheme onedark")
	-- 		vim.cmd([[highlight CursorLine  guibg=#30333B ctermbg=darkblue]])
	-- 	end,
	-- },
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			-- Default options:
			require("gruvbox").setup({
				terminal_colors = true, -- add neovim terminal colors
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = true,
					emphasis = true,
					comments = true,
					operators = false,
					folds = true,
				},
				strikethrough = true,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = true,
				inverse = true, -- invert background for search, diffs, statuslines and errors
				contrast = "", -- can be "hard", "soft" or empty string
				palette_overrides = {},
				overrides = {},
				dim_inactive = false,
				transparent_mode = true,
			})
			vim.cmd("colorscheme gruvbox")
			vim.api.nvim_create_autocmd("ColorScheme", {
				pattern = "gruvbox",
				callback = function()
					local hooks = require("ibl.hooks")
					hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
						vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#fb4934" })
						vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#fabd2f" })
						vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#83a598" })
						vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#fe8019" })
						vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#b8bb26" })
						vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#d3869b" })
						vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#8ec07c" })
					end)
				end,
			})
		end,
	},
}
