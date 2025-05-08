return {
	-- https://github com/akinsho/bufferline.nvim
	"akinsho/bufferline.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = {
		options = {
			always_show_bufferline = true,
			mode = "buffers",
			themable = true,
			show_buffer_icons = false, --true | false, -- disable filetype icons for buffers
			-- color_icons = false,
			show_buffer_close_icons = false, -- true | false,
			-- separator_style = {'◣','◢'},

			show_tab_indicators = true,
			indicator = {
				style = "icon", -- icon | underline | none,
				icon = "\u{2591}"
				-- icon = "▎", -- this should be omitted if indicator style is not 'icon'
				-- icon = "\u{e0c6}"
				-- icon = "\u{300B}"
			},
			modified_icon = "\u{eade}",
			separator_style = {'',''},
			-- numbers = "ordinal",
			offsets = {
				{
					filetype = "NvimTree",
					text = " \u{f0645} ",
					-- text = function()
					--   return vim fn getcwd()
					-- end,
					text_align = "right", -- | "center" | "right"
					separator = true, -- "|",
					highlight = {},
				},
			},
			custom_areas = {
				left = function()
					local result = {}
					table.insert(result, {
						text = " \u{e6ae}      "
					})
					return result
				end,
				right = function()
					local result = {}
					table.insert(result, {
						text = " \u{f04e9} "
					})
					return result
				end,
			},
		},
		palette = {
			base4 = "#fbf3db",
			base2 = "#eee8d5", -- background highlight (light)
			base3 = "#fdf6e3", -- background (light)
			base01 = "#586E75", -- comments (dark)
			mix_red = "#422D33",
			mix_orange = "#3C342C",
			red = "#DC322F",
			base00 = "#657B83", -- foreground (light)
			mix_blue = "#0B4764",
			mix_magenta = "#3F2E4C",
			magenta = "#D33682",
			base04 = "#002731",
			diag_error = "#DC322F",
			green = "#859900",
			git_delete = "#DC322F",
			git_modify = "#B58900",
			cyan = "#2AA198",
			blue = "#268BD2",
			violet = "#6C71C4",
			base0 = "#839496", -- foreground (dark)
			base03 = "#002B36", -- background (dark)
			base02 = "#073642", -- background highlight (dark)
			diag_ok = "#859900",
			diag_warning = "#B58900",
			diag_hint = "#268BD2",
			mix_base01 = "#CCCDC2",
			mix_violet = "#204060",
			mix_base1 = "#2C4E56",
			mix_yellow = "#364725",
			diag_info = "#268BD2",
			mix_cyan = "#0C4E53",
			base1 = "#93A1A1", -- comments (light)
			mix_green = "#274C25",
			yellow = "#B58900",
			orange = "#CB4B16",
			git_add = "#268BD2",
		},
	},
	config = function(_, opts)
		vim.opt.termguicolors = true
		local tabColor = opts.palette.magenta
		local tabMixColor = opts.palette.mix_magenta
		require("bufferline").setup({
			highlights = {
				background = {
					bg = opts.palette.base03,
				},
				fill = {
					bg = opts.palette.base03,
				},
				buffer_visible = {
					fg = tabColor,
					bold = false,
				},
				buffer_selected = {
					bg = tabMixColor,
					fg = tabColor,
				},
				indicator_selected = {
					bg = tabMixColor,
					fg = tabColor,
				},

				modified = {
					bg = opts.palette.base03,
					fg = opts.palette.base01,
				},
				modified_selected = {
					bg = tabMixColor,
					fg = tabColor,
				},
				modified_visible = {
					fg = tabColor,
				},
			},
			options = opts.options,
		})
		vim.api.nvim_set_hl(0, "BufferlineBufferSelected", {
			bg = tabMixColor,
			fg = tabColor,
			bold = true,
		})
		vim.api.nvim_set_hl(0, "BufferlineBufferSeparator", {
			bg = opts.palette.base03,
			fg = opts.palette.base03,
		})
		vim.api.nvim_set_hl(0, "BufferlineBufferSeparatorVisible", {
			bg = opts.palette.yellow,
			fg = opts.palette.yellow,
		})
	end,
}
