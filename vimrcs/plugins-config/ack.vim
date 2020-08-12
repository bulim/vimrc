""""""""""""""""""""""""""""""
" => ack with silver searcher (ag)
""""""""""""""""""""""""""""""
if executable('rg')
  let g:ackprg = 'rg -S --vimgrep'
elseif executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

