"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of experiment configs (do not edit)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>e :e! ~/.vim_runtime3/vimrcs/opinionated/experiment.vim<cr>
autocmd! bufwritepost ~/.vim_runtime3/vimrcs/opinionated/experiment.vim source ~/.vim_runtime3/vimrcs/opinionated/experiment.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Edit below here experimental configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap $1 ()<esc>i

" file yank
nmap fy :let @+ = expand("%")<CR>

" file-full yank
nmap ffy :let @+ = expand("%:p")<CR>

" Control syntastic log level
" let g:syntastic_debug = 0

" comment to enable YCM
let g:loaded_youcompleteme = 1

" comment to disable jedi
let g:jedi#auto_initialization = 0

" let g:jedi#force_py_version = 3
let g:python3_host_prog='/usr/local/bin/python3'


""""""""""""""""""""""""""""""
" => jedi-vim
""""""""""""""""""""""""""""""

autocmd BufRead,BufNewFile   *.py let g:jedi#usages_command = "<leader>gr"
autocmd BufRead,BufNewFile   *.py let g:jedi#goto_command = "<leader>gd"

" au FileType python let g:jedi#goto_command = "<leader>gd"
" au FileType python let g:jedi#usages_command = "<leader>gr"

" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_definitions_command = ""
" let g:jedi#documentation_command = "K"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#rename_command = "<leader>r"

""""""""""""""""""""""""""""""
" => vim-go
""""""""""""""""""""""""""""""
autocmd BufRead,BufNewFile   *.go nnoremap gr :GoReferrers<cr>
autocmd BufRead,BufNewFile   *.go nnoremap gd :GoDef<cr>

autocmd FileType python map <leader>y :call Flake8()<CR>


""""""""""""""""""""""""""""""
" => type-script
""""""""""""""""""""""""""""""
let g:typescript_indent_disable = 1


""""""""""""""""""""""""""""""
let syntastic_mode_map = { 'passive_filetypes': ['html'] }


" Python note:
" pip3 install pylint flake8 pyflakes --user

function! CleanNoNameEmptyBuffers()
    let buffers = filter(range(1, bufnr('$')), 'buflisted(v:val) && empty(bufname(v:val)) && bufwinnr(v:val) < 0 && (getbufline(v:val, 1, "$") == [""])')
    if !empty(buffers)
        exe 'bd '.join(buffers, ' ')
    else
        echo 'No buffer deleted'
    endif
endfunction

nnoremap <silent> ,C :call CleanNoNameEmptyBuffers()<CR>

"Disables new line insertions
"set textwidth=0 wrapmargin=0

echom "Successfully applied experiment.vim"

""""""""""""""""""""

augroup twig_ft
  au!
  au BufRead,BufNewFile *.qtpl set filetype=qtpl
  au BufNewFile,BufRead *.qtpl set syntax=html
augroup END
