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

" automatically fix js errors using eslint fix flag when calling the eslintfix function
command! EslintFix call s:EslintFix()
function! s:EslintFix ()
  execute "!" . "eslint" . " " . "--fix". " " . bufname("%")
endfunction

