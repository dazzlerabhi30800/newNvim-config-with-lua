return {
	{
		"catppuccin/nvim",
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme catppuccin]])
			require("catppuccin").setup({
				flavour = "mocha",
				transparent_background = true,
			})
			if vim.g.neovide == true then
				require("catppuccin").setup({
					flavour = "mocha",
					-- transparent_background = false,
				})
			end
			require("catppuccin").load()
		end,
	},
}
