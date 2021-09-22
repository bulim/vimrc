autocmd BufEnter * lua require'completion'.on_attach()

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
" set shortmess+=c
let g:completion_chain_complete_list = {
    \ 'default': [
    \    {'complete_items': ['tabnine', 'lsp']},
    \    {'mode': '<c-p>'},
    \    {'mode': '<c-n>'}
    \]
\}

let g:completion_matching_smart_case = 1
