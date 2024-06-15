return {
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPre", "BufNewFile" },
		main = "ibl",
		opts = {
			indent = { char = "┊" },
		},
		-- config = function()
		-- 	require("ibl").setup({
		-- 		indent = {
		-- 			-- char = "|",
		-- 			char = "▏",
		--
		-- 			-- highlight = { "Whitespace", "CursorColumn", "Function", "Label" },
		-- 			highlight = { "Whitespace", "CursorColumn" },
		-- 		},
		-- 		-- whitespace = {
		-- 		-- 	highlight = "IblWhitespace",
		-- 		-- 	remove_blankline_trail = true,
		-- 		-- },
		-- 		-- scope = {
		-- 		-- 	include = {
		-- 		-- 		node_type = {
		-- 		-- 			lua = {
		-- 		-- 				"*",
		-- 		-- 			},
		-- 		-- 			css = { "*" },
		-- 		-- 		},
		-- 		-- 	},
		-- 		-- },
		-- 	})
		-- end,
	},
}
