return {
	{
		"craftzdog/solarized-osaka.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme solarized-osaka]])
			vim.cmd[[highlight CursorLine  guibg=#222A2E ctermbg=darkblue]]
			require("solarized-osaka").setup({
				transparent = true,
			})
		end,
		-- require("solarized-osaka").load(),
	},
}
