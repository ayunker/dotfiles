-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

-- vim-test mappings
vim.keymap.set('n', '<leader>tt', ':TestFile<CR>', { desc = '[T]es[T] File' })
vim.keymap.set('n', '<leader>ts', ':TestNearest<CR>', { desc = '[T]est Neare[S]t' })
vim.keymap.set('n', '<leader>tl', ':TestLast<CR>', { desc = '[T]est [L]ast' })

vim.keymap.set('n', '<leader>so', ':source %<CR>:lua vim.notify("File sourced!")<CR>', { noremap = true, silent = true })


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
