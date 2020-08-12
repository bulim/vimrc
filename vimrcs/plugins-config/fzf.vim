""""""""""""""""""""""""""""""
" => FZF
""""""""""""""""""""""""""""""
map <leader>o :Buffers<cr>
map <leader>s :Rg<cr>
map <leader>m :Files ~/workspace/<cr>
map <leader>f :Files<cr>
map <leader>ff :Files ~/workspace
nnoremap <leader>mm :cd ~/workspace<cr>:Rg<cr>
nnoremap <leader>h :History<cr>


nmap <Leader>/ <Plug>RgRawSearch
vmap <Leader>/ <Plug>RgRawVisualSelection<cr>
nmap <Leader>* <Plug>RgRawWordUnderCursor<cr>
nmap <Leader>u <Plug>RgRawWordUnderCursor<cr>

" Augmenting Ag command using fzf#vim#with_preview function
"   * fzf#vim#with_preview([[options], [preview window], [toggle keys...]])
"     * For syntax-highlighting, Ruby and any of the following tools are required:
"       - Bat: https://github.com/sharkdp/bat
"       - Highlight: http://www.andre-simon.de/doku/highlight/en/highlight.php
"       - CodeRay: http://coderay.rubychan.de/
"       - Rouge: https://github.com/jneen/rouge
"
"   :Ag  - Start fzf with hidden preview window that can be enabled with "?" key
"   :Ag! - Start fzf in fullscreen and display the preview window above
command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
