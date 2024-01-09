return {
  -- { "rebelot/kanagawa.nvim" },
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    opts = {
      term_color = true,
      transparen_background = false,
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
      },
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
      integrations = {
        alpha = true,
        cmp = true,
        flash = true,
        gitsigns = true,
        illuminate = true,
        indent_blankline = {
          enabled = true,
          scope_color = "green",
        },
        lsp_trouble = true,
        mason = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        noice = true,
        notify = true,
        neotree = true,
        semantic_tokens = true,
        -- telescope = true,
        telescope = {
          enabled = true,
          style = "nvchad",
        },
        dropbar = {
          enabled = true,
          color_mode = true,
        },
        treesitter = true,
        which_key = true,
      },
    },
  },

  {
    "sainnhe/everforest",
    lazy = true,
  },

  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      style = "night",
      transparent = true,
    },
  },

  -- fix notify on transparent
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "#000000",
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
