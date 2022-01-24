"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of experiment configs (do not edit)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>e :e! ~/.vim_runtime3/vimrcs/opinionated/experiment.vim<cr>
autocmd! bufwritepost ~/.vim_runtime3/vimrcs/opinionated/experiment.vim source ~/.vim_runtime3/vimrcs/opinionated/experiment.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Edit below here experimental configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" file yank
nmap fy :let @+ = expand("%")<CR>

" file-full yank
nmap ffy :let @+ = expand("%:p")<CR>

set foldmethod=manual
