return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme solarized-osaka]])
			require("solarized-osaka").setup({
        style="night",
				transparent = true,
				lualine_bold = true,
			})
			if vim.g.neovide == true then
				require("solarized-osaka").setup({
					transparent = false,
					day_brightness = 0.9,
				})
			end
			require("solarized-osaka").load()
			vim.cmd([[highlight CursorLine  guibg=#222A2E ctermbg=darkblue]])
		end,
	},
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "mocha",
	-- 			transparent_background = true,
	-- 		})
	-- 		if vim.g.neovide == true then
	-- 			require("catppuccin").setup({
	-- 				transparent_background = false,
	-- 			})
	-- 		end
	-- 		require("catppuccin").load()
	--      vim.cmd([[colorscheme catppuccin]])
	-- 	end,
	-- },
}
