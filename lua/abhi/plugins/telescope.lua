return {
	"nvim-telescope/telescope.nvim",
	branch = "master",
	dependencies = {
		"sharkdp/fd",
		"nvim-lua/plenary.nvim",
		"dharmx/telescope-media.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		{ "nvim-telescope/telescope-ui-select.nvim" },
		"nvim-tree/nvim-web-devicons",
		{ "nvim-telescope/telescope-frecency.nvim" },
		{ "nvim-telescope/telescope-file-browser.nvim", branch = "master" },
	},
	config = function()
		local builtin = require("telescope.builtin")
		-- local actions = require("telescope.actions")
		local fb_actions = require("telescope").extensions.file_browser.actions

		-- Basic keymaps
		vim.keymap.set("n", "ff", builtin.find_files, {})
		vim.keymap.set("n", "fg", builtin.live_grep, {})
		vim.keymap.set("n", "fb", builtin.buffers, {})
		vim.keymap.set("n", "fh", builtin.help_tags, {})

		local function telescope_buffer_dir()
			return vim.fn.expand("%:p:h")
		end

		require("telescope").setup({
			defaults = {
				preview = { treesitter = false },
				file_ignore_patterns = { "node_modules", ".git" },
				find_command = { "rg", "--files", "--no-ignore", "--hidden", "--" },
				path_display = { "truncate" },
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = { preview_width = 0.6 },
				},
				vimgrep_arguments = {
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
					no_ignore = true,
					find_command = { "rg", "--files", "--glob", "!{.git/*,node_modules/*}" },
					hidden = true,
				},
				live_grep = {
					vimgrep_arguments = {
						"rg",
						"--color=never",
						"--no-heading",
						"--with-filename",
						"--line-number",
						"--column",
						"--smart-case",
					},
				},
			},
			extensions = {
				fzf = {},
				media_files = {
					filetypes = { "png", "jpg", "jpeg", "gif", "webp" },
					find_cmd = "rg",
					previewer = {
						["png"] = { "chafa", "--format=symbols", "--size=40x8", "%s" },
						["jpg"] = { "chafa", "--format=symbols", "--size=40x8", "%s" },
						["jpeg"] = { "chafa", "--format=symbols", "--size=40x8", "%s" },
						["gif"] = { "chafa", "--format=symbols", "--size=40x8", "%s" },
						["webp"] = { "chafa", "--format=symbols", "--size=40x8", "%s" },
					},
				},
				file_browser = {
					theme = "dropdown",
					hijack_netrw = false, -- Disable to avoid window conflicts
					previewer = false, -- No preview = no window invalidation
					mappings = {
						["i"] = {
							["<C-w>"] = function()
								vim.cmd("normal vbd")
							end, -- Keep your word delete
						},
						["n"] = {
							["N"] = fb_actions.create, -- Create file/folder
							["R"] = fb_actions.rename, -- Rename
							["D"] = fb_actions.remove, -- Delete
							["M"] = fb_actions.move, -- Move (multi-select)
							["C"] = fb_actions.copy, -- Copy
							["h"] = fb_actions.goto_parent_dir, -- Parent dir
							["l"] = fb_actions.open, -- Open/select
							["-"] = fb_actions.goto_cwd, -- Go to cwd
						},
					},
				},
			},
		})

		-- Load extensions
		require("telescope").load_extension("fzf")
		-- require("telescope").load_extension("media_files")
		require("telescope").load_extension("file_browser")
		require("telescope").load_extension("ui-select")
		require("telescope").load_extension("frecency")

		-- Your custom keymaps
		vim.keymap.set("n", ",f", function()
			builtin.find_files({ no_ignore = true, hidden = true })
		end)
		vim.keymap.set("n", ",r", builtin.live_grep)
		vim.keymap.set("n", "\\\\", builtin.buffers)
		vim.keymap.set("n", ",t", builtin.help_tags)
		vim.keymap.set("n", "<leader>;", builtin.resume)
		vim.keymap.set("n", ",e", builtin.diagnostics)
		-- vim.keymap.set("n", "<leader>fm", "<cmd>Telescope media_files<CR>")

		-- File browser WITHOUT attach_mappings/custom overrides (uses global mappings)
		vim.keymap.set("n", "s;", function()
			require("telescope").extensions.file_browser.file_browser({
				path = "%:p:h",
				cwd = telescope_buffer_dir(),
				respect_gitignore = false,
				hidden = true,
				grouped = true,
				initial_mode = "normal",
			})
		end)

		pcall(require("telescope").load_extension, "ui-select")
		pcall(require("telescope").load_extension, "live_grep_args")
	end,
}
