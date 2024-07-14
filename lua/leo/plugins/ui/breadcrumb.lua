return {
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		theme = "tokyonight",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		opts = {
			-- configurations go here
		},
		conifg = function()
			require("barbecue.ui").toggle()
		end,
	},
}
