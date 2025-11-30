-- return {
--   "neovim/nvim-lspconfig",
--   event = { "BufReadPre", "BufNewFile" },
--   dependencies = {
--     "hrsh7th/cmp-nvim-lsp",
--     { "antosha417/nvim-lsp-file-operations", config = true },
--     "jose-elias-alvarez/typescript.nvim",
--   },
--   config = function()
--     local cmp_nvim_lsp = require("cmp_nvim_lsp")
--     local ok_typescript, typescript = pcall(require, "typescript")
--     if not ok_typescript then
--       return
--     end
--
--     ------------------------------------------------------------------
--     -- capabilities
--     ------------------------------------------------------------------
--     local capabilities = vim.lsp.protocol.make_client_capabilities()
--     capabilities.textDocument.hover.contentFormat = { "plaintext" }
--     capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
--
--     ------------------------------------------------------------------
--     -- diagnostics signs
--     ------------------------------------------------------------------
--     local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
--     for type, icon in pairs(signs) do
--       local hl = "DiagnosticSign" .. type
--       vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
--     end
--
--     ------------------------------------------------------------------
--     -- on_attach via LspAttach is recommended, but you can keep this
--     ------------------------------------------------------------------
--     local function on_attach(client, bufnr)
--       local map = function(mode, lhs, rhs, desc)
--         vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, noremap = true, silent = true, desc = desc })
--       end
--
--       map("n", "gR", "<cmd>Telescope lsp_references<CR>", "LSP references")
--       map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
--       map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", "LSP definitions")
--       map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", "LSP implementations")
--       map("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", "LSP type definitions")
--
--       map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code actions")
--       map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
--
--       map("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", "Buffer diagnostics")
--       map("n", "<leader>d", vim.diagnostic.open_float, "Line diagnostics")
--       map("n", "[d", vim.diagnostic.goto_prev, "Prev diagnostic")
--       map("n", "]d", vim.diagnostic.goto_next, "Next diagnostic")
--
--       map("n", "K", vim.lsp.buf.hover, "Hover")
--       map("n", "<leader>K", vim.lsp.buf.type_definition, "Type definition")
--
--       map("n", "<leader>rs", "<cmd>LspRestart<CR>", "Restart LSP")
--     end
--
--     ------------------------------------------------------------------
--     -- NEW: define configs with vim.lsp.config(...)
--     ------------------------------------------------------------------
--
--     vim.lsp.config.html = vim.lsp.config({
--       name = "html",
--       cmd = { "vscode-html-language-server", "--stdio" },
--       filetypes = { "html" },
--       root_markers = { "package.json", ".git" },
--       capabilities = capabilities,
--       on_attach = on_attach,
--     })
--
--     vim.lsp.config.tsserver = vim.lsp.config({
--       name = "tsserver",
--       cmd = { "typescript-language-server", "--stdio" },
--       filetypes = { "typescript", "typescriptreact", "typescript.tsx", "javascript", "javascriptreact" },
--       root_markers = { "package.json", "tsconfig.json", "jsconfig.json", ".git" },
--       capabilities = capabilities,
--       on_attach = on_attach,
--     })
--
--     typescript.setup({
--       disable_commands = false,
--       debug = false,
--       server = {
--         capabilities = capabilities,
--         on_attach = on_attach,
--         filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
--         root_dir = vim.fs.root(0, { "package.json", "tsconfig.json", "jsconfig.json", ".git" }),
--       },
--     })
--
--     vim.lsp.config.cssls = vim.lsp.config({
--       name = "cssls",
--       cmd = { "vscode-css-language-server", "--stdio" },
--       filetypes = { "css", "scss", "less" },
--       root_markers = { "package.json", ".git" },
--       capabilities = capabilities,
--       on_attach = on_attach,
--     })
--
--     vim.lsp.config.lua_ls = vim.lsp.config({
--       name = "lua_ls",
--       cmd = { "lua-language-server" },
--       filetypes = { "lua" },
--       root_markers = { ".luarc.json", ".luacheckrc", ".git" },
--       capabilities = capabilities,
--       on_attach = on_attach,
--       settings = {
--         Lua = {
--           diagnostics = { globals = { "vim" } },
--           workspace = {
--             library = {
--               [vim.fn.expand("$VIMRUNTIME/lua")] = true,
--               [vim.fn.stdpath("config") .. "/lua"] = true,
--             },
--           },
--         },
--       },
--     })
--
--     ------------------------------------------------------------------
--     -- enable servers
--     ------------------------------------------------------------------
--     vim.lsp.enable({
--       "html",
--       "tsserver",
--       "cssls",
--       "lua_ls",
--     })
--   end,
-- }
return {
  "hrsh7th/cmp-nvim-lsp",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    { "antosha417/nvim-lsp-file-operations", config = true },
    { "folke/lazydev.nvim", opts = {} },
  },
  config = function()
    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    vim.lsp.config("*", {
      capabilities = capabilities,
    })
  end,
}
