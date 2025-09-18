-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- telescope mappings
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({
    winblend = 10,
    previewer = false,
  }))
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- vim-test mappings
vim.keymap.set('n', '<leader>tt', ':TestFile<CR>', { desc = '[T]es[T] File' })
vim.keymap.set('n', '<leader>ts', ':TestNearest<CR>', { desc = '[T]est Neare[S]t' })
vim.keymap.set('n', '<leader>tl', ':TestLast<CR>', { desc = '[T]est [L]ast' })

vim.keymap.set(
  'n',
  '<leader>so',
  ':source %<CR>:lua vim.notify("File sourced!")<CR>',
  { noremap = true, silent = true }
)

-- chainsaw mappings
vim.keymap.set('n', '<leader>lb', require('chainsaw').beepLog, { desc = 'BeEP' })
vim.keymap.set('n', '<leader>lt', require('chainsaw').timeLog, { desc = 'Log Time' })
vim.keymap.set('n', '<leader>lm', require('chainsaw').messageLog, { desc = 'Log Message' })
vim.keymap.set('n', '<leader>lo', require('chainsaw').objectLog, { desc = 'Log Object' })
vim.keymap.set('n', '<leader>lv', require('chainsaw').variableLog, { desc = 'Log Variable' })
vim.keymap.set('n', '<leader>lr', require('chainsaw').removeLogs, { desc = 'Remove Chainsaw Logs' })

-- neogit mappings
vim.keymap.set('n', '<leader>nn', require('neogit').open, { desc = 'Neogit' })
vim.keymap.set('n', '<leader>vv', require('neogit').open, { desc = 'Neogit' })

-- gitsigns mappings
vim.keymap.set('n', ']c', require('gitsigns').next_hunk, { desc = 'Next Hunk' })
vim.keymap.set('n', '[c', require('gitsigns').prev_hunk, { desc = 'Previous Hunk' })
vim.keymap.set('n', '<leader>gs', require('gitsigns').stage_hunk, { desc = 'Stage Hunk' })

-- misc mappings
vim.keymap.set('n', 'gb', '<cmd>Git blame<cr>', { silent = true, noremap = true })

vim.keymap.set('n', '<leader>ll', ':e #<CR>')

vim.keymap.set('n', '<leader>yp', function()
  vim.fn.setreg(vim.v.register, vim.fn.expand('%'))
end, { desc = "Yank file path" })

vim.keymap.set('n', '<leader>yP', function()
  vim.fn.setreg(vim.v.register, vim.fn.expand('%:p'))
end, { desc = "Yank file path" })

-- try out these from helix, t.y. pirj
vim.keymap.set('n', 'gh', '^')
vim.keymap.set('n', 'gl', '$')
