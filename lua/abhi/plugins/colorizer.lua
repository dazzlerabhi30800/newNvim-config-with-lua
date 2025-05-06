return {
	-- "NvChad/nvim-colorizer.lua",
	-- event = { "BufReadPre", "BufNewFile" },
	-- "catgoose/nvim-colorizer.lua",
	-- event = "BufReadPre",
	-- config = function()
	-- 	require("colorizer").setup({
	-- 		RRGGBBAA = true, -- #RRGGBBAA hex codes
	-- 		AARRGGBB = true, -- 0xAARRGGBB hex codes
	-- 		rgb_fn = true, -- CSS rgb() and rgba() functions
	-- 		hsl_fn = true,
	-- 	})
	-- end,
	"norcalli/nvim-colorizer.lua",
	priority = 1000,
	event = "BufReadPre",
	config = function()
		require("colorizer").setup({
			"*", -- Highlight all files, but customize some others.
			css = { rgb_fn = true, hsl_fn = true }, -- Enable parsing rgb(...) functions in css.
			html = { names = false }, -- Disable parsing "names" like Blue or Gray
			md = { hsl_fn = true },
		})

		require("colorizer").setup({ "*" }, {
			RGB = true, -- #RGB hex codes
			RRGGBB = true, -- #RRGGBB hex codes
			names = false, -- "Name" codes like Blue
			RRGGBBAA = true, -- #RRGGBBAA hex codes
			rgb_fn = true, -- CSS rgb() and rgba() functions
			hsl_fn = true, -- CSS hsl() and hsla() functions
			css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
			css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
		})
	end,
}
