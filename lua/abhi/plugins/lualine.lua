return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		local colors = {
			blue = "#65D1FF",
			green = "#3EFFDC",
			violet = "#FF61EF",
			yellow = "#FFDA7B",
			red = "#FF4A4A",
			fg = "#c3ccdc",
			bg = "#112638",
			inactive_bg = "#2c3043",
			black = "#101010",
		}
		local my_lualine_theme = {
			normal = {
				a = { bg = colors.inactive_bg, fg = colors.fg, gui = "bold" },
				b = { bg = colors.black, fg = colors.blue },
				c = { bg = colors.black, fg = colors.fg },
			},
			insert = {
				a = { bg = colors.fg, fg = colors.inactive_bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.red },
				c = { bg = colors.black, fg = colors.fg },
			},
			visual = {
				a = { bg = colors.violet, fg = colors.bg, gui = "bold" },
				b = { bg = colors.black, fg = colors.fg },
				c = { bg = colors.black, fg = colors.fg },
			},
			command = {
				a = { bg = colors.yellow, fg = colors.bg, gui = "bold" },
				b = { bg = colors.black, fg = colors.fg },
				c = { bg = colors.black, fg = colors.fg },
			},
			replace = {
				a = { bg = colors.red, fg = colors.bg, gui = "bold" },
				b = { bg = colors.inactive_bg, fg = colors.fg },
				c = { bg = colors.inactive_bg, fg = colors.fg },
			},
			inactive = {
				a = { bg = colors.inactive_bg, fg = colors.semilightgray, gui = "bold" },
				b = { bg = colors.inactive_bg, fg = colors.semilightgray },
				c = { bg = colors.inactive_bg, fg = colors.semilightgray },
			},
		}

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				theme = my_lualine_theme,
				-- theme = "auto",
				-- section_separators = "",
				section_separators = { left = "", right = "" },
				-- section_separators = { left = "", right = "" },
				-- component_separators = { left = "", right = "" },
				-- component_separators = { left = "", right = "" },
				component_separators = "",
			},
			sections = {

				lualine_a = {
					{
						"datetime",
						style = "%H:%M",
					},
				},
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = "#ff9e64" },
					},
					-- { "encoding" },
					-- { "fileformat" },
					{ "filetype" },
				},
			},
		})
	end,
}
