return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  version = false, -- Set to "*" for latest release, or false for latest code
  build = "make",  -- If you want to build from source: make BUILD_FROM_SOURCE=true
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    -- Optional dependencies for enhanced features:
    -- "echasnovski/mini.pick",          -- For file_selector provider mini.pick
    -- "nvim-telescope/telescope.nvim",  -- For file_selector provider telescope
    -- "hrsh7th/nvim-cmp",               -- Autocompletion for Avante commands
    "ibhagwan/fzf-lua",               -- For file_selector provider fzf
    "nvim-tree/nvim-web-devicons",    -- Or echasnovski/mini.icons
    -- "zbirenbaum/copilot.lua",         -- For Copilot provider (optional)
    -- Support for image pasting
    {
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          use_absolute_path = true, -- Required for Windows users
        },
      },
    },
    -- Render markdown in chat
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
  opts = {
    provider = "perplexity",
    auto_suggestions_provider = "perplexity",
    providers = {
      gemini = {
        -- See https://ai.google.dev/gemini-api/docs/models/gemini for available models
        model = "gemini-2.0-flash", -- Or "gemini-1.5-pro-exp-0827", etc.
        timeout = 30000,            -- Timeout in milliseconds
        extra_request_body = {
          temperature = 0,
          max_tokens = 8192,
        },
      },
      perplexity = {
        __inherited_from = "openai",
        endpoint = "https://api.perplexity.ai",
        api_key_name = "PERPLEXITY_API_KEY", -- or use another key management method
        model = "llama-3.1-sonar-large-128k-online", -- or another supported model
        extra_request_body = {
          temperature = 0.3,  -- Controls randomness (0 = deterministic, 1 = creative)
          max_tokens = 8192,  -- Maximum response length
          top_p = 0.9,       -- Nucleus sampling threshold
          frequency_penalty = 0.2,  -- Reduce repetition
          timeout = 30000    -- 30 second timeout
        },
      },
    },
    behaviour = {
      auto_apply_diff_after_generation = false,  -- Disable auto-apply
      show_confirmation_before_apply = true,     -- Show diff preview
      diff_view = {
        style = "git",          -- Force git-style +/- diffs
        split = "vertical",     -- Show changes side-by-side
        wrap = true,            -- Preserve line wrapping
        context = 3             -- Show 3 lines around changes
      }
    },
    mappings = {
      --- @class AvanteConflictMappings
      diff = {
        ours = "co",
        theirs = "ct",
        all_theirs = "ca",
        both = "cb",
        cursor = "cc",
        next = "]x",
        previous = "[x",
      },
      suggestion = {
        accept = "",
        next = "",
        previous = "]s",
        dismiss = "[s"
      },
      jump = {
        next = "]]",
        previous = "[[",
      },
      submit = {
        normal = "<CR>",
        insert = "<C-s>"
      },
      sidebar = {
        apply_all = "A",
        apply_cursor = "a",
        switch_windows = "<Tab>",
        reverse_switch_windows = "<S-Tab>"
      }
    },
    hints = {
      enabled = true,
    },
    windows = {
      --- @type "right" | "left" | "top" | "bottom"
      position = "right",
      wrap = true, --- similar to vim.o.wrap
      width = 50,
      sidebar_header = {
        enabled = true,
        align = "center"

      },
    }
  },
}
