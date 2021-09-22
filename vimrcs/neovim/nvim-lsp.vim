lua <<EOF
require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.pyright.setup{on_attach=require'completion'.on_attach}
vim.lsp.handlers["textDocument/references"] = require("telescope.builtin").lsp_references
vim.lsp.handlers["textDocument/documentSymbol"] = require("telescope.builtin").lsp_document_symbols
EOF

" require'lspconfig'.pyls.setup{on_attach=require'completion'.on_attach}

nnoremap <silent>gd    <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent>gD    <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent><c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent>K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent>gr     <cmd>lua vim.lsp.buf.references()<CR>

