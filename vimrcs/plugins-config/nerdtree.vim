let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
let NERDTreeMinimalUI=1
map <leader>nn :NERDTreeTabsToggle<cr>
map <leader>nf :NERDTreeTabsFind<cr>

" equivalent to <ALT-SHIFT-L> in macs
nmap Ò :NERDTreeFind<CR>
nmap <A-L> :NERDTreeFind<CR>
