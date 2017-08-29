let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return
au FileType python inoremap <buffer> $i import
au FileType python inoremap <buffer> $p print
au FileType python inoremap <buffer> $f #--- PH ----------------------------------------------<esc>FP2xi
au FileType python map <buffer> <leader>1 /class
au FileType python map <buffer> <leader>2 /def
au FileType python map <buffer> <leader>C ?class
au FileType python map <buffer> <leader>D ?def

autocmd BufNewFile,BufRead *.py set expandtab           " enter spaces when tab is pressed
autocmd BufNewFile,BufRead *.py set textwidth=120       " break lines when line length increases
autocmd BufNewFile,BufRead *.py set tabstop=4           " use 4 spaces to represent tab
autocmd BufNewFile,BufRead *.py set softtabstop=4
autocmd BufNewFile,BufRead *.py set shiftwidth=4        " number of spaces to use for auto indent
autocmd BufNewFile,BufRead *.py set autoindent          " copy indent from current line when starting a new line
