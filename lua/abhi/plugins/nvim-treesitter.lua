return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPre", "BufNewFile" },
		build = ":TSUpdate",
		dependencies = {
			"windwp/nvim-ts-autotag",
		},
		config = function()
			-- import nvim-treesitter plugin
			local treesitter = require("nvim-treesitter.configs")

			-- configure treesitter
			treesitter.setup({ -- enable syntax highlighting
				highlight = {
					enable = true,
					use_languagetree = true,
				},

				-- enable indentation
				indent = { enable = true },

				-- enable autotagging (w/ nvim-ts-autotag plugin)
				require("nvim-ts-autotag").setup({
					enable = true,
				}),
				-- autotag = {
				-- },

				-- ensure these language parsers are installed
				ensure_installed = {
					"json",
					"javascript",
					"typescript",
					"tsx",
					"yaml",
					"bash",
					"html",
					"css",
					"astro",
					"prisma",
					"markdown",
					"markdown_inline",
					"svelte",
					"graphql",
					"lua",
					"vim",
					"dockerfile",
					"gitignore",
				},
				-- autotag = { enable = true },
				-- ensure these language parsers are installed
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "<C-space>",
						node_incremental = "<C-space>",
						scope_incremental = false,
						node_decremental = "<bs>",
					},
				},
				-- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
				ts_context_commentstring = {
					enable = true,
					enable_autocmd = false,
				},
				-- auto install above language parsers
				auto_install = true,
			})
		end,
	},
}
