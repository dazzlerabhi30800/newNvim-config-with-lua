return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"sharkdp/fd",
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope-file-browser.nvim",
	},
	config = function()
		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "ff", builtin.find_files, {})
		vim.keymap.set("n", "fg", builtin.live_grep, {})
		vim.keymap.set("n", "fb", builtin.buffers, {})
		vim.keymap.set("n", "fh", builtin.help_tags, {})

		local status, telescope = pcall(require, "telescope")
		if not status then
			return
		end
		local actions = require("telescope.actions")
		-- local builtin = require("telescope.builtin")

		local function telescope_buffer_dir()
			return vim.fn.expand("%:p:h")
		end

		local fb_actions = require("telescope").extensions.file_browser.actions
		-- local action_state = require("telescope.actions.state")

		require("telescope").load_extension("fzf")

		telescope.setup({
			defaults = {
				file_ignore_patterns = { "node_modules", ".git" },
				-- mappings = {
				-- 	n = {
				-- 		["q"] = actions.close,
				-- 	},
				-- 	i = {
				-- 		["<CR>"] = function(prompt_bufnr)
				-- 			local selection = action_state.get_selected_entry()
				-- 			local raw_path = selection[1] -- Use the raw entry value
				-- 			print("Selected path: " .. raw_path) -- Debug output
				-- 			actions.close(prompt_bufnr)
				-- 			vim.cmd("edit " .. vim.fn.fnameescape(raw_path)) -- Open the raw path
				-- 		end,
				-- 	},
				-- },
				find_command = { "rg", "--files", "--no-ignore", "--hidden", "--" },
				-- find_command = { "fd", "--type", "f", "--hidden", "--follow" },
				-- path_display = function(_, path)
				-- 	return string.gsub(path, "[(]", "\\("):gsub("[)]", "\\)")
				-- end,
				path_display = { "truncate" },

				vimgrep_arguements = {
					"rg",
					"--color=never",
					"--no-heading",
					"--with-filename",
					"--line-number",
					"--column",
					"--smart-case",
					"--",
				},
			},
			pickers = {
				find_files = {
					-- Use ripgrep with proper path handling for parentheses
					find_command = { "rg", "--files", "--glob", "!{.git/*,node_modules/*}", "--path-separator", "/" },
					hidden = true, -- Include hidden files if needed
				},
				live_grep = {
					-- Ensure live_grep also handles paths correctly
					vimgrep_arguments = {
						"rg",
						"--color=never",
						"--no-heading",
						"--with-filename",
						"--line-number",
						"--column",
						"--smart-case",
						"--path-separator",
						"/",
					},
				},
			},
			extensions = {
				file_browser = {
					theme = "dropdown",
					-- disables netrw and use telescope-file-browser in its place
					hijack_netrw = true,
					mappings = {
						-- your custom insert mode mappings
						["i"] = {
							["<C-w>"] = function()
								vim.cmd("normal vbd")
							end,
						},
						["n"] = {
							-- your custom normal mode mappings
							["N"] = fb_actions.create,
							["h"] = fb_actions.goto_parent_dir,
							["/"] = function()
								vim.cmd("startinsert")
							end,
						},
					},
				},
			},
		})

		telescope.load_extension("file_browser")

		vim.keymap.set("n", ",f", function()
			builtin.find_files({
				no_ignore = true,
				hidden = true,
			})
		end)
		vim.keymap.set("n", ",r", function()
			builtin.live_grep()
		end)
		vim.keymap.set("n", "\\\\", function()
			builtin.buffers()
		end)
		vim.keymap.set("n", ",t", function()
			builtin.help_tags()
		end)
		vim.keymap.set("n", "<leader>;", function()
			builtin.resume()
		end)
		vim.keymap.set("n", ",e", function()
			builtin.diagnostics()
		end)
		vim.keymap.set("n", "s;", function()
			telescope.extensions.file_browser.file_browser({
				path = "%:p:h",
				cwd = telescope_buffer_dir(),
				respect_gitignore = false,
				hidden = true,
				grouped = true,
				previewer = false,
				initial_mode = "normal",
				layout_config = { height = 40 },
			})
		end)

		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")
		pcall(require("telescope").load_extension, "live_grep_args")
	end,
}
