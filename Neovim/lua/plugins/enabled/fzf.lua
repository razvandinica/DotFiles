return {
  -- https://github.com/ibhagwan/fzf-lua
  "ibhagwan/fzf-lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    ui = {
      height = 0.5,
      border = "single",
    }
  },
  keys = {
    {
      "<Leader>ff",
      function() require'fzf-lua'.files() end,
      desc = "[F]ind [F]iles in current working directory."
    },
    {
      "<Leader>fg",
      function() require'fzf-lua'.live_grep() end,
      desc = "[F]ind by [G]repping files in current working directory."
    },
    {
      "<Leader>fw",
      function() require'fzf-lua'.grep_cword() end,
      desc = "[F]ind current [W]ord."
    },
    {
      "<Leader>gb",
      function() require'fzf-lua'.git_branches() end,
      desc = "Find [G]it [B]ranches in current working project."
    },
    {
      "<Leader>bi",
      function() require'fzf-lua'.builtin() end,
      desc = "Show FZF [B]uilt[I]n available commands."
    },
    {
      "<Leader>fb",
      function() require'fzf-lua'.buffers() end,
      desc = "[F]ind [B]ufferrs."
    },
    {
      "<Leader>fh",
      function() require'fzf-lua'.helptags() end,
      desc = "[F]ind [H]elp."
    },
    {
      "<Leader>fk",
      function() require'fzf-lua'.keymaps() end,
      desc = "[F]ind [K]eymaps."
    },
    {
      "<Leader>fd",
      function() require'fzf-lua'.diagnostics_document() end,
      desc = "[F]ind [D]iagnostics."
    },
    {
      "<Leader>fr",
      function() require'fzf-lua'.resume() end,
      desc = "[Find] [R]esume."
    },
  },
}
