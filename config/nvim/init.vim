source ~/.vimrc

lua << EOF
-- LSP SETUP
--require'lspconfig'.denols.setup{}
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
