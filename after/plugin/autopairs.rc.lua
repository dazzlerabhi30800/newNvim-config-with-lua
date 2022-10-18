
local status, autopairs = pcall(require, "nvim-autopairs")
if (not status) then return end


require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}
autopairs.setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})
