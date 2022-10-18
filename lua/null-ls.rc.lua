local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup({
  sources = {
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    null_ls.builtins.diagnostics.fish
  }
})

require("null-ls").config({
  debug = false,
  sources = {
    require("null-ls").builtins.formatting.prettier,
    require("null-ls").builtins.formatting.eslint_d,
    require("null-ls").builtins.formatting.mix,
    require("null-ls").builtins.diagnostics.write_good,
    require("null-ls").builtins.diagnostics.eslint.with({command = "eslint_d"}),
    require("null-ls").builtins.code_actions.gitsigns,
  }
})
