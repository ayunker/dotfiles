-- [[ Setting options ]]
-- See `:help vim.o`

vim.o.termguicolors = true

vim.o.hlsearch = true

vim.o.cursorline = true

vim.wo.number = true

vim.o.mouse = 'a'

vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

vim.o.swapfile = false

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.colorcolumn = '80'

-- Folding
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
-- i don't want anything folded by default
vim.o.foldlevel = 99
