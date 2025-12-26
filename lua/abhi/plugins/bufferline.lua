return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			mode = "tabs",
			separator_style = "slant",
		},
	},
	config = function()
		require("bufferline").setup({
			options = {
				mode = "tabs",
				-- separator_style = "slant",
				-- separator_style = { "", "" },
				-- always_show_bufferline = false,
				-- show_buffer_close_icons = false,
				-- show_close_icon = false,
				color_icons = true,
				always_show_bufferline = true,
				show_buffer_close_icons = false,
				show_close_icon = false,
				separator_style = "thin",
			},
			-- highlights = require("solarized-osaka").bufferline.highlights,
			-- highlights = require("gruvbox").bufferline.highlights,
			-- highlights = {
			-- 	fill = {
			-- 		bg = {
			-- 			attribute = "fg",
			-- 			highlight = "Pmenu",
			-- 		},
			-- 	},
			-- 	background = {
			-- 		fg = "#000000",
			-- 		bg = "#ffffff",
			-- 	},
			--
			-- 	tab = {
			-- 		fg = "#000000",
			-- 		bg = "#ffffff",
			-- 	},
			-- },
		})
	end,
}
