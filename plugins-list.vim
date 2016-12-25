function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py --tern-completer
  endif
endfunction

call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'jasoncodes/ctrlp-modified.vim' | Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'tag': '5.0.0' } | Plug 'jistr/vim-nerdtree-tabs' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-abolish'
Plug 'vim-airline/vim-airline'| Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-surround'
Plug 'tommcdo/vim-exchange'
Plug 'amix/vim-zenroom2'
Plug 'gabrielelana/vim-markdown'
Plug 'ervandew/supertab'
Plug 'kien/rainbow_parentheses.vim'
Plug 'AndrewRadev/sideways.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'moll/vim-node'
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'mattn/emmet-vim'
Plug 'groenewege/vim-less'
Plug 'nvie/vim-flake8'
Plug 'chase/vim-ansible-yaml'
Plug 'fatih/vim-go'
Plug 'leafgarland/typescript-vim'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'rizzatti/dash.vim'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'sickill/vim-monokai'
call plug#end()
