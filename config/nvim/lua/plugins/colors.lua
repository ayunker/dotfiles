return {
  {
    'lifepillar/vim-solarized8',
    branch = 'neovim',
    config = function()
      -- vim.o.background = 'dark'
      -- vim.cmd.colorscheme 'solarized8'
    end,
  },

  {
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 1000,
    ---@type solarized.config
    opts = {
      variant = "autumn",
      -- transparent = {
      --   enabled = true,
      -- },
      styles = {
        comments = { italic = true, bold = false },
        functions = { italic = false },
        keywords = { italic = true },
        variables = { italic = false },
      }
    },
    config = function(_, opts)
      vim.o.termguicolors = true
      vim.o.background = 'dark'
      require('solarized').setup(opts)
      vim.cmd.colorscheme('solarized')
    end,
  },

  {
    'savq/melange-nvim',
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'melange'
    end,
  },

  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'kanagawa-wave'
    end,
  },

  {
    'EdenEast/nightfox.nvim',
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'nightfox'
    end,
  },

  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'tokyonight-night'
    end,
  },

  {
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'catppuccin-mocha'
    end,
  },

  {
    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    priority = 1000,
    -- you can set set configuration options here
    -- config = function()
    --     vim.g.zenbones_darken_comments = 45
    --     vim.cmd.colorscheme('zenbones')
    -- end
  },

  {
    'rose-pine/neovim',
    priority = 1000,
    name = 'rose-pine',
  },
}
