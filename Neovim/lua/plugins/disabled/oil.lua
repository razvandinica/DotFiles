return {
  -- https://github.com/stevearc/oil.nvim
  "stevearc/oil.nvim",
  -- -@module 'oil',
  -- -@type oil.SetupOpts,
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  opts = {
    default_file_explorer = false,
    columns = {
      "icon",
      "permissions",
      "size",
      "mtime",
    },
    -- Keymaps in oil buffer. Can be any value that `vim.keymap.set` accepts OR a table of keymap
    -- options with a `callback` (e.g. { callback = function() ... end, desc = "", mode = "n" })
    -- Additionally, if it is a string that matches "actions.<name>",
    -- it will use the mapping at require("oil.actions").<name>
    -- Set to `false` to remove a keymap
    -- See :help oil-actions for a list of all available actions
    keymaps = {
      ["g?"] = { "actions.show_help", mode = "n" },
      ["<CR>"] = "actions.select",
      ["<C-s>"] = { "actions.select", opts = { vertical = true } },
      ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
      ["<C-t>"] = { "actions.select", opts = { tab = true } },
      ["<C-p>"] = "actions.preview",
      ["<C-c>"] = { "actions.close", mode = "n" },
      ["<C-l>"] = "actions.refresh",
      ["-"] = { "actions.parent", mode = "n" },
      ["_"] = { "actions.open_cwd", mode = "n" },
      ["`"] = { "actions.cd", mode = "n" },
      ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
      ["gs"] = { "actions.change_sort", mode = "n" },
      ["gx"] = "actions.open_external",
      ["g."] = { "actions.toggle_hidden", mode = "n" },
      ["g\\"] = { "actions.toggle_trash", mode = "n" },
    },
    -- Set to false to disable all of the above keymaps
    use_default_keymaps = true,
  },
  config = function (_, opt)
    require("oil").setup(opt)
    -- Oper parent directory in Oil
    vim.keymap.set("n", "-", "<Cmd>Oil --float<CR>", { desc = "Open parent directory in Oil." })
  end,
  build = function (_, config)
    config()
  end,
}
