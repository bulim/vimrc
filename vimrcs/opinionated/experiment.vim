"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of experiment configs (do not edit)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>e :e! ~/.vim_runtime3/vimrcs/opinionated/experiment.vim<cr>
autocmd! bufwritepost ~/.vim_runtime3/opinionated/vimrcs/experiment.vim source ~/.vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Edit below here experimental configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" noremap <silent> <leader>a :call CmdLineNew()<CR>
" 
" function! CmdLineNew()
"     " exe "menu Foo.zigi :" . "hello world"
"     exe "hello world" . "normal! "
"     emenu Foo.zigi
"     unmenu Foo
" endfunction 
