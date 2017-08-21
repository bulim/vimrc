" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab
  set stal=2
catch
endtry

set relativenumber 
set cursorline
set number    
set noeol

" based on the following link: https://github.com/zchee/deoplete-jedi/wiki/Setting-up-Python-for-Neovim
let g:python_host_prog = $HOME.'/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = $HOME.'/.pyenv/versions/neovim3/bin/python'

" override behaviour from plugins config
let g:ycm_goto_buffer_command = 'same-buffer'
silent! colorscheme monokai

 " testing my plugin
let g:auto_save = 1
let g:auto_save_silent = 1
let g:auto_save_events = ["CursorHold"]
let updatetime=4000

nnoremap Q @q

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)
