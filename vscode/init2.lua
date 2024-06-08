vim.g.mapleader = " "



local menuBar = {
	sideBar = function()
		vim.fn.VSCodeNotify("workbench.action.toggleSidebarVisibility")
	end,
}

local comment = {
	commentLine = function()
		vim.fn.VSCodeNotify("editor.action.commentLine")
	end,
}

local files = {
	definitionHover = function()
		vim.fn.VSCodeNotify("editor.action.showDefinitionPreviewHover")
	end,

	quickOpen = function()
		vim.fn.VSCodeNotify("workbench.action.quickOpen")
	end,

	fileEntries = function()
		vim.fn.VSCodeNotify("welcome.showNewFileEntries")
	end,

	openFileExplorer = function()
		vim.fn.VSCodeNotify("revealInExplorer")
	end,

	formatDocument = function()
		vim.fn.VSCodeNotify("editor.action.formatDocument")
	end,
}

local navigation = {
	navigationUp = function()
		vim.fn.VSCodeNotify("workbench.action.navigateUp")
	end,
	navigationDown = function()
		vim.fn.VSCodeNotify("workbench.action.navigateDown")
	end,
	navigationLeft = function()
		vim.fn.VSCodeNotify("workbench.action.navigateLeft")
	end,
	navigationRight = function()
		vim.fn.VSCodeNotify("workbench.action.navigateRight")
	end,
	moveLinesDown = function()
		vim.fn.VSCodeNotify("editor.action.moveLinesDownAction")
	end,
	moveLinesUp = function()
		vim.fn.VSCodeNotify("editor.action.moveLinesUpAction")
	end,

	focusLeftGroup = function()
		vim.fn.VSCodeNotify("workbench.action.focusNextGroup")
	end,
}

local changeWidthHeight = {
	decreaseWidth = function()
		vim.fn.VSCodeNotify("workbench.action.decreaseViewWidth")
	end,
	increaseWidth = function()
		vim.fn.VSCodeNotify("workbench.action.increaseViewWidth")
	end,
	decreaseHeight = function()
		vim.fn.VSCodeNotify("workbench.action.decreaseViewHeight")
	end,
	increaseHeight = function()
		vim.fn.VSCodeNotify("workbench.action.increaseViewHeight")
	end,
}

local tabs = {
	tab1 = function()
		vim.fn.VSCodeNotify("workbench.action.openEditorAtIndex1")
	end,

	tab2 = function()
		vim.fn.VSCodeNotify("workbench.action.openEditorAtIndex2")
	end,

	tab3 = function()
		vim.fn.VSCodeNotify("workbench.action.openEditorAtIndex3")
	end,

	tab4 = function()
		vim.fn.VSCodeNotify("workbench.action.openEditorAtIndex4")
	end,

	tab5 = function()
		vim.fn.VSCodeNotify("workbench.action.openEditorAtIndex5")
	end,

	tab6 = function()
		vim.fn.VSCodeNotify("workbench.action.openEditorAtIndex6")
	end,

	tab7 = function()
		vim.fn.VSCodeNotify("workbench.action.openEditorAtIndex7")
	end,
}

vim.keymap.set({ "n" }, "<leader>b", menuBar.sideBar)
vim.keymap.set({ "n" }, "gcc", comment.commentLine)
vim.keymap.set({ "v" }, "gcc", comment.commentLine)
vim.keymap.set({ "n" }, "K", files.definitionHover)
vim.keymap.set({ "n" }, "<leader>f", files.quickOpen)
vim.keymap.set({ "n" }, "<leader>n", files.fileEntries)
vim.keymap.set({ "n" }, "<leader>r", files.openFileExplorer)
vim.keymap.set({ "n" }, "<leader>w", files.formatDocument)

vim.keymap.set({ "n" }, "<C-k>", navigation.navigationUp)
vim.keymap.set({ "n" }, "<C-j>", navigation.navigationDown)
vim.keymap.set({ "n" }, "<C-h>", navigation.navigationLeft)
vim.keymap.set({ "n" }, "<C-l>", navigation.navigationRight)
-- vim.keymap.set({ "n", "i" }, "<C-K>", navigation.focusLeftGroup)
-- vim.keymap.set({ "n" }, "<A-j>", navigation.moveLinesDown)
-- vim.keymap.set({ "n" }, "<A-k>", navigation.moveLinesUp)

vim.keymap.set({ "n" }, "<C-up>", changeWidthHeight.increaseHeight)
vim.keymap.set({ "n" }, "<C-down>", changeWidthHeight.decreaseHeight)
vim.keymap.set({ "n" }, "<C-left>", changeWidthHeight.decreaseWidth)
vim.keymap.set({ "n" }, "<C-right>", changeWidthHeight.increaseWidth)

vim.keymap.set({ "n" }, "<leader>1", tabs.tab1)
vim.keymap.set({ "n" }, "<leader>2", tabs.tab2)
vim.keymap.set({ "n" }, "<leader>3", tabs.tab3)
vim.keymap.set({ "n" }, "<leader>4", tabs.tab4)
vim.keymap.set({ "n" }, "<leader>5", tabs.tab5)
vim.keymap.set({ "n" }, "<leader>6", tabs.tab6)
vim.keymap.set({ "n" }, "<leader>7", tabs.tab7)

vim.opt.clipboard:append("unnamedplus")

vim.opt_local.formatoptions:remove({ "r", "o" })
vim.cmd([[autocmd FileType * set formatoptions-=ro]])


vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- vim.keymap.set("n", "k", "gk", { noremap = true, silent = true })
-- vim.keymap.set("n", "j", "gj", { noremap = true, silent = true })

-- vim.keymap.set("n", "k", "gk")
-- vim.keymap.set("v", "k", "gk")
-- vim.keymap.set("n", "j", "gj")
-- vim.keymap.set("v", "j", "gj")

-- vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true })
-- vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true })

-- for the moving line up and down
-- vim.keymap.set("n", "<M-k>", ':echo "Alt + k pressed"<CR>', { noremap = true, silent = true })
-- vim.keymap.set("n", "<M-j>", ':echo "Alt + j pressed"<CR>', { noremap = true, silent = true })
--
-- vim.keymap.set("n", "<leader>up", ":m .-2<CR>==", { noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>down", ":m .+1<CR>==", { noremap = true, silent = true })
