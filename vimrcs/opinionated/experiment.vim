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

" omment to disable jedi
let g:jedi#auto_initialization = 0

" let g:jedi#force_py_version = 3
"
"
"

let g:python3_host_prog='/Users/moezamski/.virtualenvs/ce/bin/python3'


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



" debugging.... python.vim
autocmd BufNewFile,BufRead *.py
    \ set expandtab           " enter spaces when tab is pressed
    \ set textwidth=120       " break lines when line length increases
    \ set tabstop=4           " use 4 spaces to represent tab
    \ set softtabstop=4
    \ set shiftwidth=4        " number of spaces to use for auto indent
    \ set autoindent          " copy indent from current line when starting a new line
    \ setlocal noautoindent
    \ setlocal nocindent
    \ setlocal nosmartindent
    \ setlocal indentexpr=

