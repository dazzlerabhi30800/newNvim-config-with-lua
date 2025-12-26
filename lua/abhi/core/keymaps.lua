vim.g.leader = " "

local keymap = vim.keymap --for conciseness
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
--general keymaps

-- keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally

-- Move to previous/next tabs
-- map("n", "<A-p>", "<Cmd>BufferPrevious<CR>", opts)
-- map("n", "<A-n>", "<Cmd>BufferNext<CR>", opts)

-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<A-n>", ":tabn<CR>") --  go to next tab
keymap.set("n", "<A-p>", ":tabp<CR>") --  go to previous tab

-- Jump to previous buffer
-- keymap.set('n', '<A-p>', '<cmd>bprevious<CR>', { noremap = true, silent = true })

-- Jump to next buffer
-- keymap.set('n', '<A-n>', '<cmd>bnext<CR>', { noremap = true, silent = true })

-- Close current buffer
keymap.set("n", "<leader>c", "<cmd>bd<CR>", { noremap = true, silent = true })

-- for the moving line up and down
vim.api.nvim_set_keymap("n", "<M-k>", ':echo "Alt + k pressed"<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<M-j>", ':echo "Alt + j pressed"<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<M-k>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<M-j>", ":m .+1<CR>==", { noremap = true, silent = true })
--
vim.api.nvim_set_keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true })
vim.api.nvim_set_keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true })

keymap.set("n", "j", "gj")
keymap.set("v", "j", "gj")
keymap.set("n", "k", "gk")
keymap.set("v", "k", "gk")

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- for neovide zoom
local mapKey = vim.api.nvim_set_keymap
mapKey("n", "<C-p>", ":ZoomIn<CR>", { noremap = true, silent = true })
mapKey("n", "<C-m>", ":ZoomOut<CR>", { noremap = true, silent = true })

-- for colorizer
mapKey("n", "<C-w>", ":ColorizerToggle<CR>", { noremap = true, silent = true })
--for save file
mapKey("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })

-- for resizing tabs
mapKey("n", "<C-Up>", ":resize -2<CR>", { noremap = true, silent = true })
mapKey("n", "<C-Down>", ":resize +2<CR>", { noremap = true, silent = true })
mapKey("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
mapKey("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })

--select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- New tab
keymap.set("n", "te", ":tabedit")
-- Split window
-- keymap.set("n", "ss", ":split<Return><C-w>w")
-- keymap.set("n", "sv", ":vsplit<Return><C-w>w")

-- keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
-- keymap.set("n", "dw", 'vb"_d')

--keymaps for bufferline
mapKey("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>", { noremap = true, silent = true })
mapKey("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>", { noremap = true, silent = true })
mapKey("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>", { noremap = true, silent = true })
mapKey("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>", { noremap = true, silent = true })
mapKey("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>", { noremap = true, silent = true })
mapKey("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>", { noremap = true, silent = true })
mapKey("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>", { noremap = true, silent = true })

-- for the emmet
-- vim.g.user_emmet_mode = "a"
vim.g.user_emmet_leader_key = "<tab>"

vim.api.nvim_set_keymap("i", "<tab>", "<Plug>(emmet-expand-abbr)", {})
vim.api.nvim_set_keymap("n", "<tab>", "<Plug>(emmet-expand-abbr)", {})
-- vim.api.nvim_set_keymap("i", "<C-y>", "<Plug>(emmet-update-abbr)", {})
-- vim.api.nvim_set_keymap("i", "<C-j>", "<Plug>(emmet-next-edit-point)", {})
-- vim.api.nvim_set_keymap("i", "<C-k>", "<Plug>(emmet-prev-edit-point)", {})

-- additional config for emmet
mapKey("v", "<A-f-o>", ":foldclose<CR>", { noremap = true, silent = true })
mapKey("v", "<A-F>", ":fold<CR>", { noremap = true, silent = true })

--open terminal
-- keymap.set("n", "<leader>t", ":terminal<CR>")

-- keys for auto pairs
-- vim.api.nvim_set_keymap("i", "<C-Space>", "<Plug>(CompletionAutoPairs)", { noremap = true, silent = true })

--terminal keybinds

-- Move to the terminal above the current split
vim.api.nvim_set_keymap("t", "<C-h>", "<C-\\><C-N><C-w>k", { noremap = true, silent = true })

-- Move to the terminal below the current split
vim.api.nvim_set_keymap("t", "<C-l>", "<C-\\><C-N><C-w>j", { noremap = true, silent = true })

-- Move to the terminal on the left of the current split
vim.api.nvim_set_keymap("t", "<C-j>", "<C-\\><C-N><C-w>h", { noremap = true, silent = true })

-- Move to the terminal on the right of the current split
vim.api.nvim_set_keymap("t", "<C-k>", "<C-\\><C-N><C-w>l", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>t", ":tabedit %<CR>", { noremap = true, silent = true })

local function hex_to_rgba(hex, alpha)
	if type(hex) ~= "string" then
		return nil
	end

	hex = hex:gsub("#", "")
	if #hex ~= 6 then
		return nil
	end

	local r = tonumber(hex:sub(1, 2), 16)
	local g = tonumber(hex:sub(3, 4), 16)
	local b = tonumber(hex:sub(5, 6), 16)
	alpha = alpha or 1

	return string.format("rgba(%d, %d, %d, %.2f)", r, g, b, alpha)
end

local function rgba_to_hex(rgba)
	if type(rgba) ~= "string" then
		return nil
	end

	local r, g, b = rgba:match("rgba?%s*%(%s*(%d+)%s*,%s*(%d+)%s*,%s*(%d+)")
	if not r then
		return nil
	end

	return string.format("#%02x%02x%02x", tonumber(r), tonumber(g), tonumber(b))
end

function ToggleColorUnderCursor()
	local pos = vim.api.nvim_win_get_cursor(0)
	local line = vim.api.nvim_get_current_line()
	local cursor_col = pos[2] + 1

	-- try hex under cursor
	local hs, he, hex = line:find("#[%da-fA-F][%da-fA-F][%da-fA-F][%da-fA-F][%da-fA-F][%da-fA-F]")
	if hs and cursor_col >= hs and cursor_col <= he then
		local rgba = hex_to_rgba(hex, 1)
		if rgba then
			vim.api.nvim_set_current_line(line:sub(1, hs - 1) .. rgba .. line:sub(he + 1))
		end
		return
	end

	-- try rgba(...) under cursor
	local rs, re = line:find("rgba?%b()")
	if rs and cursor_col >= rs and cursor_col <= re then
		local rgba = line:sub(rs, re)
		local new_hex = rgba_to_hex(rgba)
		if new_hex then
			vim.api.nvim_set_current_line(line:sub(1, rs - 1) .. new_hex .. line:sub(re + 1))
		end
		return
	end
end

-- vim.keymap.set("n", "<leader>cr", ToggleColorUnderCursor, { desc = "Toggle hex/rgba" })

vim.keymap.set("n", "<A-c>", ToggleColorUnderCursor, { desc = "Toggle hex/rgba" })

-- keymap.set("n", "<leader>r", function()
-- 	-- require("abhi.hsl").replaceHexWithHSL()
-- 	-- require("abhi.hsl").hex_to_rgb()
-- 	require("abhi.hsl").hex_to_rgb()
-- end)
