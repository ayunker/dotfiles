source ~/.vimrc

lua << EOF
require'lspconfig'.denols.setup{}
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]

vim.cmd[[colorscheme tokyonight]]
EOF

au BufRead,BufNewFile *.md setlocal textwidth=80
