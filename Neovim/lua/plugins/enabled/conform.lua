return {
	-- https://github.com/stevearc/conform.nvim
	"stevearc/conform.nvim",
	opts = {
		-- format_on_save = {
		-- 	timeout_ms = 500,
		-- 	lsp_format = "fallback",
		-- },
		formatters_by_ft = {
			lua = {
				"stylua",
				stop_after_first = true,
			},
			html = {
				"prettierd",
			},
			javascript = {
				"prettierd",
				stop_after_first = true,
				lsp_format = "fallback",
			},
			php = {
				"phpcbf",
			},
		},
	},
	config = function(_, opts)
		local plugin = require("conform")

		plugin.setup(opts)

		vim.keymap.set("n", "<Leader>cf", function()
			plugin.format({ lsp_format = "fallback" })
		end, { desc = "[Code] [F]ormat." })
	end
}
