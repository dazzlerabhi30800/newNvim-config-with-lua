return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		config = function()
			require("ibl").setup({
				indent = {
					char = "|",
				},
				whitespace = {
					highlight = "IblWhitespace",
					remove_blankline_trail = false,
				},
				scope = {
					include = {
						node_type = {
							lua = {
								"*",
							},
						},
					},
				},
			})
		end,
	},
}
