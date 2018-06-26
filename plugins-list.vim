" function! BuildYCM(info)
"   " info is a dictionary with 3 fields
"   " - name:   name of the plugin
"   " - status: 'installed', 'updated', or 'unchanged'
"   " - force:  set on PlugInstall! or PlugUpdate!
"   if a:info.status == 'installed' || a:info.force
"     !/Users/daniel.zinger/.pyenv/versions/ycm/bin/python ./install.py --tern-completer
"   endif
" endfunction

call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'scrooloose/nerdtree', { 'tag': '5.0.0' } | Plug 'jistr/vim-nerdtree-tabs' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'w0rp/ale'
Plug 'editorconfig/editorconfig-vim'
" Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'majutsushi/tagbar'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'| Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-obsession'
Plug 'tpope/vim-repeat'
Plug 'airblade/vim-rooter'
Plug 'tpope/vim-surround'
Plug 'tommcdo/vim-exchange'
Plug 'christoomey/vim-tmux-navigator'
Plug 'benmills/vimux'

Plug 'godlygeek/tabular'
Plug 'suan/vim-instant-markdown'
Plug 'ervandew/supertab'
Plug 'kien/rainbow_parentheses.vim'
Plug 'AndrewRadev/sideways.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'moll/vim-node'
Plug 'PProvost/vim-ps1'
Plug 'mattn/emmet-vim'
Plug 'groenewege/vim-less'
Plug 'nvie/vim-flake8'
Plug 'chase/vim-ansible-yaml'
Plug 'fatih/vim-go'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'sickill/vim-monokai'
" Plug '907th/vim-auto-save'
" Plug 'zigius/vim-auto-save-git-hook'
Plug 'justinmk/vim-sneak'
Plug 'Raimondi/delimitMate'
Plug 'matze/vim-move'
Plug 'tommcdo/vim-lion'
Plug 'michaeljsmith/vim-indent-object'
Plug 'sheerun/vim-polyglot'
" Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'gabrielelana/vim-markdown'
Plug 'ternjs/tern_for_vim'

" Language server
" **********
" **********
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }

Plug 'Shougo/denite.nvim'

" (Optional) Completion integration with deoplete.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" (Optional) Completion integration with nvim-completion-manager.
Plug 'roxma/nvim-completion-manager'

" (Optional) Showing function signature and inline doc.
Plug 'Shougo/echodoc.vim'

" Highlighting
Plug 'xtal8/traces.vim'
Plug 'haya14busa/incsearch.vim'
" **********
" **********
call plug#end()
