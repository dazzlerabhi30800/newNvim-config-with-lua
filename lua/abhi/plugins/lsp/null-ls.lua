return {
	"nvimtools/none-ls.nvim", -- configure formatters & linters
	lazy = true,
	dependencies = {
		"jay-babu/mason-null-ls.nvim",
	},
	config = function()
		local mason_null_ls = require("mason-null-ls")
		local null_ls = require("null-ls")
		local null_ls_utils = require("null-ls.utils")

		mason_null_ls.setup({
			ensure_installed = {
				"prettier",
				"stylua",
				"black",
				"pylint",
				"eslint_d",
			},
			automatic_installation = false, -- or true if you want auto-install
			-- handlers = {}, -- optional, add if you need custom handlers
		})

		local formatting = null_ls.builtins.formatting
		local diagnostics = null_ls.builtins.diagnostics

		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

		null_ls.setup({
			-- add package.json as identifier for root (for typescript monorepos)
			root_dir = null_ls_utils.root_pattern(".null-ls-root", "Makefile", ".git", "package.json"),

			sources = {
				formatting.prettier.with({
					extra_filetypes = { "svelte" },
				}),
				formatting.stylua,
				formatting.isort,
				formatting.black,
				diagnostics.pylint,
				diagnostics.eslint_d.with({
					-- js/ts linter - enable only if project has flat ESLint config
					condition = function(utils)
						return utils.root_has_file({
							"eslint.config.js",
							"eslint.config.cjs",
							"eslint.config.mjs",
							"eslint.config.ts",
						})
					end,
				}),
			},

			on_attach = function(current_client, bufnr)
				if current_client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({
								filter = function(client)
									return client.name == "null-ls"
								end,
								bufnr = bufnr,
							})
						end,
					})
				end
			end,
		})
	end,
}
