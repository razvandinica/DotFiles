return {
  -- https://github.com/ahmedkhalf/project.nvim
  "ahmedkhalf/project.nvim",
  opts = {},
  config = function(_, opts)
    require("project_nvim").setup(opts)
  end,
}
