return {
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  {
    -- Adds git releated signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      signs_staged_enable = false,
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },

  {
    'NeogitOrg/neogit',
    pin = true,
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
    },
    config = true,
  },
}
