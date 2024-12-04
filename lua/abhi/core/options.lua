local opt = vim.opt -- for conciseness

--line numbers
opt.relativenumber = true
opt.number = true

-- tabs & identation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.title = true
vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- disable commenting the next line automatically
vim.cmd([[autocmd FileType * set formatoptions-=ro]])
vim.opt_local.formatoptions:remove({ "r", "o" })

-- for changing the cursor back to normal after quitting nvim
vim.api.nvim_create_autocmd("ExitPre", {
	group = vim.api.nvim_create_augroup("Exit", { clear = true }),
	command = "set guicursor=a:ver10",
	-- command = "set guicursor=a:hor10",
	desc = "Set cursor back to beam when leaving Neovim.",
})

--aditional configuration
opt.cmdheight = 2
opt.laststatus = 2
opt.splitkeep = "cursor"

--line wrapping
-- opt.wrap = false
opt.wrap = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-") -- set cursor to line on insert mode

-- opt.guicursor = "n-v-c:block-Cursor/lCursor,i-cr:ver15,r-cr:ver15,o:ver15"
-- opt.guicursor = "a:block-Cursor/lCursor"
-- opt.guicursor = "n-v-c:block-Cursor/lCursor,i-cr:hor10,r-cr:hor10,o:hor10"
-- opt.guicursor = "a:hor-10/lCursor"
-- opt.guicursor = "n-v-r:block-Cursor/lCursor,i-cr-ci-c:hor10,r-cr:hor10,o:hor10"
-- opt.guicursor = "n-v-r:block-Cursor/lCursor,i-cr-ci-c:hor20,r-cr:hor20,o:hor20"
opt.guicursor = "n-v-r:block-Cursor/lCursor,i-cr-ci-c:ver10,r-cr:ver10,o:ver10"
-- opt.guicursor = "v-i-r-cr-ci-c:block-Cursor/lCursor,n-cr:hor10"
-- opt.guicursor = "n-v-c:blinkon0-Cursor/lCursor,i-cr:block-cursor,r-cr:block-cursor,o:ver20" --
-- cursor line options

-- command to highlight line
vim.o.cursorline = true
-- vim.cmd([[highlight CursorLine guibg=#004080 ctermbg=darkblue]])
vim.cmd(
	[[au CursorMoved * :hi LineNr term=bold cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=#ACAEAF guibg=NONE]]
)

-- for configuring the neovide
-- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
-- vim.g.neovide_scale_factor = 0.9
vim.g.neovide_refresh_rate = 90
-- vim.g.neovide_refresh_rate = 60
vim.g.neovide_cursor_vfx_mode = "pixiedust"
-- vim.g.neovide_floating_blur_amount_x = 10.0
-- vim.g.neovide_floating_blur_amount_y = 10.0
vim.g.neovide_cursor_trail_size = 0.2
vim.g.neovide_cursor_vfx_opacity = 100.0
vim.g.neovide_cursor_animation_length = 0.02
vim.g.neovide_scroll_animation_length = 0.015
vim.g.neovide_no_idle = 1

-- for lsp debug
-- vim.lsp.set_log_level("debug")
vim.lsp.set_log_level("off")

-- for not changing cursor in terminal
-- vim.opt.NVIM_TUI_ENABLE_CURSOR_SHAPE = 0

-- Changing the background color
-- vim.cmd([[hi normal guibg=NONE ctermbg=NONE]])
if vim.g.neovide == true then
	vim.g.neovide_background_color = "#0f1117"
	vim.opt.guifont = { "FiraCode Nerd Font", ":h12" }
	-- opt.guicursor = "n-v-r:block-Cursor/lCursor,i-cr-ci-c:ver10,r-cr:ver10,o:ver10"
	-- opt.guicursor = "n-v-c:block-Cursor/lCursor,i-cr:ver20,r-cr:ver20,o:ver20"
	-- opt.guicursor = "n-v-c:block-Cursor/lCursor,i-cr:hor10,r-cr:hor10,o:hor10"
	opt.guicursor = "a:block-Cursor/lCursor"
	vim.g.neovide_padding_top = 10
	vim.g.neovide_padding_bottom = 10
	vim.g.neovide_padding_right = 10
	vim.g.neovide_padding_left = 10
	-- vim.cmd("highlight Normal guibg=#112233 ctermbg=none")

	-- Set line height
	-- vim.api.nvim_win_set_option(0, "winhl", "Normal:CursorLine:Normal", "winblend=2") -- Adjust the 'winblend' value as needed
	vim.opt.linespace = 2
	-- opt.guicursor = "a:block-Cursor/lCursor"
end
