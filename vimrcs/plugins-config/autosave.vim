" let g:auto_save = 1  " enable AutoSave on Vim startup
" let g:auto_save_silent = 0  " do not display the auto-save notification
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Auto save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup autosavefiles
    autocmd!
    autocmd TextChanged,TextChangedI,InsertLeave <buffer> silent write
augroup END
