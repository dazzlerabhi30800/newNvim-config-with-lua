return {
	-- {
	-- 	"craftzdog/solarized-osaka.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme solarized-osaka]])
	-- 		require("solarized-osaka").setup({
	--        style="night",
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
					functions = { "italic" },
					types = { "italic" },
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
		end,
	},
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
}
