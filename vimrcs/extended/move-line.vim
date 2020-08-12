" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
" nmap <M-j> mz:m+<cr>`z
" nmap <M-k> mz:m-2<cr>`z
" vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
" vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  " ∆=alt+j       ˚=alt+k in alacritty
  " j=alt+j     k=alt+k in iterm

  nnoremap ∆ :m .+1<CR>==
  nnoremap ˚ :m .-2<CR>==
  inoremap ∆ <Esc>:m .+1<CR>==gi
  inoremap ˚ <Esc>:m .-2<CR>==gi
  vnoremap ∆ :m '>+1<CR>gv=gv
  vnoremap ˚ :m '<-2<CR>gv=gv

  nnoremap j :m .+1<CR>==
  nnoremap k :m .-2<CR>==
  inoremap j <Esc>:m .+1<CR>==gi
  inoremap k <Esc>:m .-2<CR>==gi
  vnoremap j :m '>+1<CR>gv=gv
  vnoremap k :m '<-2<CR>gv=gv
endif

