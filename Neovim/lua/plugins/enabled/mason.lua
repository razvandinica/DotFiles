return {
	-- https://github.com/williamboman/mason.nvim
	"williamboman/mason.nvim",
	opts = {
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
			height = 0.78,
			width = 0.58,
			border = "rounded",
		},
	},
	config = function(_, opts)
		local plugin = require("mason")
		plugin.setup(opts)
	end,
}
