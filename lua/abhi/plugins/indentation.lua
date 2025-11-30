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
			local highlight = {
				"RainbowRed",
				"RainbowYellow",
				"RainbowBlue",
				"RainbowOrange",
				"RainbowGreen",
				"RainbowViolet",
				"RainbowCyan",
			}
			--
			local hooks = require("ibl.hooks")
			local color = "#4F4F4F"
			-- local color = "#373737"

			-- local color = "#000000" -- Gruvbox gray
			-- create the highlight groups in the highlight setup hook, so they are reset
			-- every time the colorscheme changes
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "RainbowRed", { fg = color })
				vim.api.nvim_set_hl(0, "RainbowYellow", { fg = color })
				vim.api.nvim_set_hl(0, "RainbowBlue", { fg = color })
				vim.api.nvim_set_hl(0, "RainbowOrange", { fg = color })
				vim.api.nvim_set_hl(0, "RainbowGreen", { fg = color })
				vim.api.nvim_set_hl(0, "RainbowViolet", { fg = color })
				vim.api.nvim_set_hl(0, "RainbowCyan", { fg = color })
			end)

			require("ibl").setup({
				indent = {
					char = "┊",
					-- highlight = { "Whitespace", "CursorColumn", "Function", "Label", "NonText" },
					-- highlight = { "Whitespace", "CursorColumn" },
					highlight = highlight,
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
			hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
		end,
	},
}
