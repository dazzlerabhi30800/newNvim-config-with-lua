local opt = vim.opt -- for conciseness

--line numbers
--opt.relativenumber = true
opt.number = true

-- tabs & identation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

--line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
--opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

-- set cursor to line on insert mode
opt.guicursor = "a:block-Cursor/lCursor"
-- opt.guicursor = "n-v-c:block-Cursor/lCursor,i-cr:hor20,r-cr:hor40,o:hor50"
-- opt.guicursor = "n-v-c:block-Cursor/lCursor,i-cr:ver10,r-cr:ver10,o:ver10"

-- for the emmet
vim.g.user_emmet_leader_key = "<Tab>"

-- cursor line options
-- vim.o.cursorline = true
-- vim.api.nvim_set_hl(0, "CursorLine", { underline = true })
vim.api.nvim_command("hi CursorLine guifg=NONE guibg=#653328")

-- for configuring the neovide
vim.g.neovide_transparency = 0.91
-- vim.g.neovide_background_color = "#0f1117"
vim.g.neovide_scale_factor = 0.9
vim.g.neovide_refresh_rate = 100
vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_floating_blur_amount_x = 10.0
vim.g.neovide_floating_blur_amount_y = 10.0
vim.g.neovide_cursor_trail_size = 0.4
vim.opt.guifont = { "Hack NFM", ":h12" }
vim.g.neovide_cursor_vfx_opacity = 100.0
vim.g.neovide_cursor_animation_length = 0.024
vim.g.neovide_scroll_animation_length = 0.2
vim.g.neovide_remember_window_size = true

-- Changing the background color
-- vim.cmd([[hi normal guibg=NONE ctermbg=NONE]])

if vim.g.neovide == true then
	-- opt.guicursor = "n-v-c:block-Cursor/lCursor,i-cr:hor20,r-cr:hor20,o:hor50"
	opt.guicursor = "n-v-c:block-Cursor/lCursor,i-cr:ver10,r-cr:ver10,o:ver10"
end
