return {
	"rebelot/kanagawa.nvim",
	-- opt = {
	-- 	compile = true,
	-- 	theme = "lotus"
	-- },
	config = function()
		require("kanagawa").setup({
			compile = true,
			transparent = true,
			overrides = function (colors)
				return {
					["@markup.link.url.markdown_inline"] = { link = "Special" },
					["@markup.link.label.markdown_inline"] = { link = "WarningMsg" },
					["@markup.italic.markdown_inline"] = { link = "Exception" },
					["@markup.raw.markdown_inline"] = { link = "String" },
					["@markup.list.markdown"] = { link = "Function" },
					["@markup.quote.markdown"] = { link = "Error" },
				}
			end,
			-- terminalColors = true,
			-- theme = "wave",
			-- background = {
			-- 	dark = "dragon",
			-- 	light = "lotus",
			-- },
		})
	end,
	build = function()
		vim.o.background = "dark"
		vim.cmd("KanagawaCompile")
		vim.cmd("colorscheme kanagawa")
	end,
}
