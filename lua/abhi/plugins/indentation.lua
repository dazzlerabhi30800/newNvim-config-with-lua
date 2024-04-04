return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		config = function()
			require("ibl").setup({
				indent = {
					char = "|",
					-- highlight = { "Whitespace", "CursorColumn" },
				},
				whitespace = {
					highlight = "IblWhitespace",
					remove_blankline_trail = true,
				},
				scope = {
					include = {
						node_type = {
							lua = {
								"*",
							},
							css = { "*" },
						},
					},
				},
			})
		end,
	},
}
