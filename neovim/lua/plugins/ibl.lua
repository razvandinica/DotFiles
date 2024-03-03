-- local highlight = {
--     "RainbowRed",
--     "RainbowYellow",
--     "RainbowBlue",
--     "RainbowOrange",
--     "RainbowGreen",
--     "RainbowViolet",
--     "RainbowCyan",
-- }

local highlight = {
    -- "Title",
    -- "WarningMsg"
    "MyOrange",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowRed", {
        fg = "#E06C75"
    })
    vim.api.nvim_set_hl(0, "RainbowYellow", {
        fg = "#E5C07B"
    })
    vim.api.nvim_set_hl(0, "RainbowBlue", {
        fg = "#61AFEF"
    })
    vim.api.nvim_set_hl(0, "RainbowOrange", {
        fg = "#D19A66"
    })
    vim.api.nvim_set_hl(0, "RainbowGreen", {
        fg = "#98C379"
    })
    vim.api.nvim_set_hl(0, "RainbowViolet", {
        fg = "#C678DD"
    })
    vim.api.nvim_set_hl(0, "RainbowCyan", {
        fg = "#56B6C2"
    })

    vim.api.nvim_set_hl(0, "MyOrange", {
        fg = "#742b0c",
        --bg = "#002b36"
    })

    vim.api.nvim_set_hl(0, "MyViolet", {
        fg = "#3d4070",
        --bg = "#002b36"
    })
end)

require("ibl").setup {
    indent = {
        highlight = highlight,
        char = "▏",
    },
    whitespace = {
        --highlight = highlight,
        remove_blankline_trail = true,
    },
    scope = {
        enabled = false
    }
}
