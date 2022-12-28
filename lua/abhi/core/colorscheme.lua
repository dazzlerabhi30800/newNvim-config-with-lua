vim.cmd("colorscheme neosolarized")

local status, _ = pcall(vim.cmd, "colorscheme neosolarized")
if not status then
	print("Colorscheme not found")
end
