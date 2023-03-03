source ~/.vimrc

lua << EOF
-- LSP SETUP
require'lspconfig'.denols.setup{}
require'lspconfig'.gopls.setup{}
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]

vim.opt.signcolumn = "yes" -- otherwise it bounces in and out, not strictly needed though
vim.api.nvim_create_autocmd("FileType", {
  pattern = "ruby",
  group = vim.api.nvim_create_augroup("RubyLSP", { clear = true }), -- also this is not /needed/ but it's good practice
  callback = function()
    vim.lsp.start {
      name = "standard",
      cmd = { "standardrb", "--lsp" },
    }
  end,
})
-- END LSP SETUP

-- TROUBLE
require("trouble").setup {
  icons = false,
  signs = {
    -- icons / text used for a diagnostic
    error = "E",
    warning = "W",
    hint = "H",
    information = "I"
    }
}

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)
-- END TROUBLE

-- LUALINE
require('lualine').setup {
  options = {
    theme = 'solarized_light',
    -- section_separators = '',
    -- component_separators = ''
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', {'diagnostics', symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'}}},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'},
  }
}
-- END LUALINE
EOF
au TextYankPost * silent! lua vim.highlight.on_yank()

au BufRead,BufNewFile *.md setlocal textwidth=80
