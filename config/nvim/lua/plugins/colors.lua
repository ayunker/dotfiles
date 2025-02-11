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
    opts = {},
    config = function(_, opts)
      vim.o.termguicolors = true
      vim.o.background = 'dark'
      require('solarized').setup(opts)
      vim.cmd.colorscheme('solarized')
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
    -- config = function()
    --   vim.cmd.colorscheme 'catppuccin-macchiato'
    -- end,
  },

  {
    'rose-pine/neovim',
    priority = 1000,
    name = 'rose-pine',
  },
}
