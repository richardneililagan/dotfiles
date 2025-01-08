return {
  -- configure theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "sonokai",
    },
  },
  {
    "vague2k/vague.nvim",
    opts = {
      transparent = true,
    },
  },

  -- :: Add themes
  { "sainnhe/edge" },
  { "sainnhe/everforest" },
  { "sainnhe/gruvbox-material" },
  {
    "sainnhe/sonokai",
    config = function()
      vim.g.sonokai_style = "shusia"
      vim.g.sonokai_transparent_background = 2
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      contrast = "soft",
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = true,
        floats = true,
      },
    },
  },
  -- :: /

  -- use go-to preview panes
  {
    "rmagatti/goto-preview",
    event = "BufEnter",
    config = true,
    opts = {
      default_mappings = true,
    },
  },

  -- custom telescope settings
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = {
          "node_modules/",
          ".git/",
          ".cdk/",
          "dist/",
          "out/",
        },
      },
    },
  },

  -- add telescope-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },
}
