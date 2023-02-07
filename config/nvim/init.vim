source ~/.vimrc

lua << EOF
require'lspconfig'.denols.setup{}
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]

vim.cmd[[colorscheme tokyonight]]

require('lualine').setup {
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', {'diagnostics', symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'}}},
    lualine_c = {'filename'},
    lualine_x = {'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'},
  }
}
EOF
au TextYankPost * silent! lua vim.highlight.on_yank()

au BufRead,BufNewFile *.md setlocal textwidth=80
