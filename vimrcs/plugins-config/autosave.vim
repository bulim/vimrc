" let g:auto_save = 1  " enable AutoSave on Vim startup
" let g:auto_save_silent = 0  " do not display the auto-save notification
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" augroup autosavefiles
"     autocmd!
"     autocmd TextChanged,TextChangedI,InsertLeave * silent write
" augroup END

augroup autosavefiles
    autocmd!
    autocmd CursorHold * silent update
augroup END
" augroup autosavefiles
"     autocmd! CursorHold <buffer>
"     autocmd CursorHold <buffer> silent update
" augroup END
" 
" test 2 test 3 test 
" set autowrite
