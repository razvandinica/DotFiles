return {
  -- https://github.com/ibhagwan/fzf-lua
  "ibhagwan/fzf-lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
  },
  keys = {
    {
      "<Leader>ff",
      function() require'fzf-lua'.files() end,
      desc = "Find files in current working directory."
    },
    {
      "<Leader>fg",
      function() require'fzf-lua'.live_grep() end,
      desc = "Find by grepping files in current working directory."
    },
    {
      "<Leader>fw",
      function() require'fzf-lua'.grep_cword() end,
      desc = "[F]ind current [W]ord."
    },
    {
      "<Leader>gb",
      function() require'fzf-lua'.git_branches() end,
      desc = "Find branches in current working project."
    },
    {
      "<Leader>bi",
      function() require'fzf-lua'.builtin() end,
      desc = "Show FZF builtin available commands."
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
      desc = "[F][R]esume to last find."
    },
    {
      "<Leader><Leader>",
      function() require'fzf-lua'.buffers() end,
      desc = "[F]ind [B]uffers."
    },
  },
}
