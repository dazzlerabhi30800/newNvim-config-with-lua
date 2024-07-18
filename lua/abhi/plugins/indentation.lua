return {
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPre", "BufNewFile" },
		main = "ibl",
		opts = {},
		-- opts = {
		-- 	indent = { char = "┊" },
		-- },
		config = function()
			require("ibl").setup({
				indent = {
					char = "┊",
					-- highlight = { "Whitespace", "CursorColumn", "Function", "Label", "NonText" },
					-- highlight = { "Whitespace", "CursorColumn" },
				},
				scope = {
					enabled = true,
				},
				whitespace = {
					highlight = "IblWhitespace",
					remove_blankline_trail = true,
				},
				-- scope = {
				-- 	include = {
				-- 		node_type = {
				-- 			lua = {
				-- 				"*",
				-- 			},
				-- 			css = { "*" },
				-- 		},
				-- 	},
				-- },
			})
		end,
	},
}
