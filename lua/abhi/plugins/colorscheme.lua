return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme solarized-osaka]])
			require("solarized-osaka").setup({
				transparent = true,
			})
			if vim.g.neovide == true then
				require("solarized-osaka").setup({
					transparent = false,
				})
			end
			require("solarized-osaka").load()
			vim.cmd([[highlight CursorLine  guibg=#222A2E ctermbg=darkblue]])
		end,
	},
}
