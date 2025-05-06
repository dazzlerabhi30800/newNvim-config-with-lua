return {
	"folke/todo-comments.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local todo_comments = require("todo-comments")
		-- set keymaps
		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "]t", function()
			todo_comments.jump_next()
		end, { desc = "Next todo comment" })

		keymap.set("n", "[t", function()
			todo_comments.jump_prev()
		end, { desc = "Previous todo comment" })

		todo_comments.setup({
			keywords = {
				NOTE = { icon = " ", color = "#10B981" },
			},
			colors = {
				info = { "DiagnosticInfo", "#2563EB" },
				-- error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
				-- warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
				-- hint = { "DiagnosticHint", "#10B981" },
				-- default = { "Identifier", "#7C3AED" },
				-- test = { "Identifier", "#FF00FF" },
			},
		})
	end,
}
