""""""""""""""""""""""""""""""
" => tagbar (ctags)
""""""""""""""""""""""""""""""
nmap <F8> :TagbarToggle<cr>

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


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



let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:instant_markdown_autostart = 0
" let g:UltiSnipsSnippetDirectories = ['UltiSnips']
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
let g:snips_author = 'zigius'
let g:UltiSnipsUsePythonVersion = 3

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
"
" let g:LanguageClient_serverCommands = {
"     \ 'javascript': ['/Users/daniel.zinger/.nvm/versions/node/v8.11.3/lib/node_modules/javascript-typescript-langserver/lib/language-server-stdio.js'],
"     \ 'javascript.jsx': ['/Users/daniel.zinger/.nvm/versions/node/v8.11.3/lib/node_modules/javascript-typescript-langserver/lib/language-server-stdio.js'],
"     \ 'python': ['/Users/daniel.zinger/.pyenv/shims/pyls']
"     \ }
"
" " Automatically start language servers.
" let g:LanguageClient_autoStart = 1
" let g:LanguageClient_devel = 1 " Use rust debug build
" let g:LanguageClient_loggingLevel = 'DEBUG' " Use highest logging level
"
" nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
" autocmd FileType javascript nnoremap <buffer>
"   \ <leader>lf :call LanguageClient_textDocument_documentSymbol()<cr>
" autocmd FileType javascript.jsx nnoremap <buffer>
"   \ <leader>lf :call LanguageClient_textDocument_documentSymbol()<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => coc.nvim recommended config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" if hidden not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gn <Plug>(coc-rename)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
" vmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  " Highlight symbol under cursor on CursorHold
  autocmd CursorHold * silent call CocActionAsync('highlight')

  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd FileType json syntax match Comment +\/\/.\+$+
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)

" Fix autofix problem of current line
" nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` for format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)


" Add diagnostic info for https://github.com/itchyny/lightline.vim
" let g:lightline = {
"       \ 'colorscheme': 'wombat',
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
"       \ },
"       \ 'component_function': {
"       \   'cocstatus': 'coc#status'
"       \ },
"       \ }
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'


" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>


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
