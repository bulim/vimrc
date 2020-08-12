"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup hidefugitivebuffers
    autocmd!
    autocmd BufReadPost fugitive://* set bufhidden=delete
augroup END
nmap <leader>gp :Gpush<cr>
nmap <leader>gs :Gstatus<cr>
