if vim.g.vscode then
	-- vim.cmd([[source $HOME/.config/nvim/vscode/settings.vim]])
	vim.cmd([[source $HOME/AppData/Local/nvim/vscode/plugins.lua]])
	-- vim.cmd([[source $HOME/AppData/Local/nvim/vscode/settings.vim]])
	vim.cmd([[source $HOME/AppData/Local//nvim/vscode/init2.lua]])

	-- Optional plugin
	-- vim.cmd([[source $HOME/.config/nvim/vscode/easymotion-config.vim]])
else
	-- vim.g.mapleader = " "
	require("abhi.core")
	require("abhi.lazy")
end
