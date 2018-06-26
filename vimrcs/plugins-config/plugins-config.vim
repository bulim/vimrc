""""""""""""""""""""""""""""""
" => FZF
""""""""""""""""""""""""""""""
map <leader>o :Buffers<cr>
map <leader>m :Files ~/compliance/<cr>
map <leader>f :Files<cr>
map <leader>a :Ag<cr>
nnoremap <leader>h :History<cr>

""""""""""""""""""""""""""""""
" => tagbar (ctags)
""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<cr>

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH

""""""""""""""""""""""""""""""
" => ack with silver searcher (ag)
""""""""""""""""""""""""""""""
if executable('rg')
  let g:ackprg = 'rg -S --vimgrep'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline_section_c = '%<%F%m %#__accent_red#%{airline#util#wrap(airline#parts#readonly(),0)}%#__restore__#'
" let g:airline_section_c = '%t'
let g:airline_powerline_fonts=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=240
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2

nnoremap <silent> <leader>z :Goyo<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale linters
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_fixers = {
\   'javascript': ['prettier', 'eslint'], 
\   'python': ['autopep8', 'yapf']
\}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['autopep8', 'flake8', 'isort', 'yapf']
\}
let g:ale_fix_on_save=1
let g:ale_javascript_prettier_options = '--single-quote'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git Fugitive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup hidefugitivebuffers
    autocmd!
    autocmd BufReadPost fugitive://* set bufhidden=delete
augroup END

let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:instant_markdown_autostart = 0
" let g:UltiSnipsSnippetDirectories = ['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'

let g:sneak#use_ic_scs = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => emmet expand snippet with tab
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_leader_key='<C-Z>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-jsx on regular js files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => editorconfig key bindings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim language server protocol
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'javascript': ['~/.config/yarn/global/node_modules/javascript-typescript-langserver/lib/language-server-stdio.js'],
    \ 'javascript.jsx': ['~/.config/yarn/global/node_modules/javascript-typescript-langserver/lib/language-server-stdio.js'],
    \ 'python': ['~/.pyenv/shims/pyls'],
    \ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
autocmd FileType javascript nnoremap <buffer>
  \ <leader>lf :call LanguageClient_textDocument_documentSymbol()<cr>
autocmd FileType javascript.jsx nnoremap <buffer>
  \ <leader>lf :call LanguageClient_textDocument_documentSymbol()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Inc search 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" Farewell, nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>! This feature turns 'hlsearch' off automatically after searching-related motions.
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
augroup incsearch-keymap
    autocmd!
    autocmd VimEnter call s:incsearch_keymap()
augroup END
function! s:incsearch_keymap()
    " IncSearchNoreMap <Right> <Over>(incsearch-next)
    " IncSearchNoreMap <Left>  <Over>(incsearch-prev)
    " IncSearchNoreMap <Down>  <Over>(incsearch-scroll-f)
    " IncSearchNoreMap <Up>    <Over>(incsearch-scroll-b)
endfunction
