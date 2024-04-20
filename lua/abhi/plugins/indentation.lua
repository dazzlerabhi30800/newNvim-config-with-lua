return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
		config = function()
			require("ibl").setup({
				indent = {
					-- char = "|",
					char = "▏",

					-- highlight = { "Whitespace", "CursorColumn", "Function", "Label" },
				},
				-- whitespace = {
				-- 	highlight = "IblWhitespace",
				-- 	remove_blankline_trail = true,
				-- },
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
