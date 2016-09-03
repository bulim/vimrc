au FileType javascript setlocal omnifunc=tern#Complete
" au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent
au FileType javascript nnoremap <buffer> <leader>a A;<esc>

command! JavaScriptFold call s:JavaScriptFold()
function! s:JavaScriptFold ()
    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction
