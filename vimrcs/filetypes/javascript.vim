au FileType javascript setlocal omnifunc=tern#Complete
au FileType javascript setl fen
au FileType javascript setl nocindent

" automatically fix js errors using eslint fix flag when calling the eslintfix function
command! EslintFix call s:EslintFix()
function! s:EslintFix ()
  execute "!" . "eslint" . " " . "--fix". " " . bufname("%")
endfunction

