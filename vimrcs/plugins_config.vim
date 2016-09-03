""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
call pathogen#infect('~/.vim_runtime2/sources/include/core/{}')
call pathogen#infect('~/.vim_runtime2/sources/include/snippets/{}')
call pathogen#infect('~/.vim_runtime2/sources/include/languages/{}')
call pathogen#infect('~/.vim_runtime2/sources/include/color-schemes/{}')
call pathogen#helptags()


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>
map <leader>m :CtrlPMixed<cr>
let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

""""""""""""""""""""""""""""""
" => MRU via CTRL-P plugin
""""""""""""""""""""""""""""""
map <leader>f :CtrlPMRU<cr>


""""""""""""""""""""""""""""""
" => buffer explorer via CTRL-P plugin
""""""""""""""""""""""""""""""
map <leader>o :CtrlPBuffer<cr>

""""""""""""""""""""""""""""""
" => tags explorer via CTRL-P plugin
""""""""""""""""""""""""""""""
nnoremap <leader>h :CtrlPTag<cr>

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
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeTabsToggle<cr>
map <leader>nf :NERDTreeTabsFind<cr>

" equivalent to <ALT-SHIFT-L> in macs
nmap Ò :NERDTreeFind<CR>
nmap <A-L> :NERDTreeFind<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="molokai"
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=240
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_javascript_checkers = ['jshint']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_html_tidy_ignore_errors=[
    \'proprietary attribute "ng-',
    \'proprietary attribute "bs-',
    \'proprietary attribute "nv-'
\]
" Custom CoffeeScript SyntasticCheck
func! SyntasticCheckCoffeescript()
    let l:filename = substitute(expand("%:p"), '\(\w\+\)\.coffee', '.coffee.\1.js', '')
    execute "e " . l:filename
    execute "SyntasticCheck"
    execute "Errors"
endfunc
nnoremap <silent> <leader>l :call SyntasticCheckCoffeescript()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>b :GitGutterToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set <F12>=<C-v><F12>
set <F10>=<C-v><F10>

nnoremap <leader>yr :YcmRestartServer<cr>
nnoremap <F12> :YcmCompleter GoToDefinition<cr>
nnoremap <F10> :YcmCompleter GoToReferences<cr>
let g:ycm_goto_buffer_command = 'vertical-split'

" taken from https://github.com/Valloric/YouCompleteMe/issues/36#issuecomment-15451411
" and http://stackoverflow.com/a/18685821
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => resolve YouCompleteMe & UltiSnips Conflicts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"
" this mapping Enter key to <C-y> to chose the current highlight item
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
