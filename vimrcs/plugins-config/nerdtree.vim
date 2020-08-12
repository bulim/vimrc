let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
let NERDTreeQuitOnOpen=1
let NERDTreeMinimalUI=1
map <leader>nn :NERDTreeToggle<cr>
let g:NERDTreeMapJumpNextSibling = '<Nop>'
let g:NERDTreeMapJumpPrevSibling = '<Nop>'
" equivalent to <ALT-SHIFT-L> in macs
nmap Ò :NERDTreeFind<CR>
nmap <A-L> :NERDTreeFind<CR>
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1

" related to fern
let g:fern#renderer = "nerdfont"
