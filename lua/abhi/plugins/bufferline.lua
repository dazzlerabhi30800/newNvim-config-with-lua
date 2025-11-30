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
		local status, bufferline = pcall(require, "bufferline")
		if not status then
			return
		end

		bufferline.setup({
			options = {
				mode = "tabs",
				-- separator_style = "slant",
				-- separator_style = { "", "" },
				always_show_bufferline = false,
				show_buffer_close_icons = false,
				show_close_icon = false,
				color_icons = true,
			},
			-- highlights = require("gruvbox").bufferline.highlights,
			highlights = {
				separator = {
					fg = "#3c3836", -- Gruvbox dark gray
					bg = "#282828", -- Gruvbox background
				},
				separator_selected = {
					fg = "#fabd2f", -- Gruvbox yellow
				},
				background = {
					fg = "#928374",
					bg = "#282828",
				},
				buffer_selected = {
					fg = "#ebdbb2",
					bg = "#3c3836",
					bold = true,
				},
				fill = {
					bg = "#1d2021",
				},
			},
		})
	end,
}

-- return {
-- 	"willothy/nvim-cokeline",
-- 	dependencies = "kyazdani42/nvim-web-devicons",
-- 	config = function()
-- 		require("cokeline").setup({
-- 			show_if_buffers_are_at_least = 2,
--
-- 			default_hl = {
-- 				fg = function(buffer)
-- 					return buffer.is_focused and "#ffffff" or "#a9b1d6"
-- 				end,
-- 				bg = function(buffer)
-- 					return buffer.is_focused and "#1e2127" or "#2c313a"
-- 				end,
-- 			},
--
-- 			components = {
-- 				{
-- 					text = "  ",
-- 				},
-- 				{
-- 					text = function(buffer)
-- 						local devicon = buffer.devicon.icon or " "
-- 						return devicon .. " "
-- 					end,
-- 					hl = function(buffer)
-- 						return { fg = buffer.devicon.color }
-- 					end,
-- 				},
-- 				{
-- 					text = function(buffer)
-- 						return buffer.filename
-- 					end,
-- 					hl = function(buffer)
-- 						return { fg = buffer.is_focused and "#ffffff" or "#a9b1d6", bold = buffer.is_focused }
-- 					end,
-- 				},
-- 				{
-- 					text = function(buffer)
-- 						return buffer.is_modified and " ●" or ""
-- 					end,
-- 					hl = { fg = "#e5c07b" },
-- 				},
-- 				{
-- 					text = "  ",
-- 				},
-- 				{
-- 					text = "×",
-- 					on_click = function(buffer)
-- 						vim.api.nvim_buf_delete(buffer.id, { force = false })
-- 					end,
-- 					hl = { fg = "#e06c75", bold = true },
-- 					truncation = { priority = 1 },
-- 				},
-- 				{
-- 					text = "  ",
-- 				},
-- 			},
-- 		})
-- 	end,
-- }
