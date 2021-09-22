call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ojroques/nvim-lspfuzzy'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-rooter'
Plug 'mileszs/ack.vim'
Plug 'sheerun/vim-polyglot'
Plug 'haya14busa/is.vim'

Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'justinmk/vim-sneak'
Plug 'zhou13/vim-easyescape'
Plug 'diepm/vim-rest-console'
Plug 'vimwiki/vimwiki'
Plug 'justinmk/vim-gtfo'

" Uncomment
" Plug 'junegunn/gv.vim'
" Plug 'jesseleite/vim-agriculture'
" Plug 'lambdalisue/fern.vim'
" Plug 'lambdalisue/nerdfont.vim'
" Plug 'lambdalisue/fern-renderer-nerdfont.vim'
"
" Plug 'editorconfig/editorconfig-vim'
" Plug 'majutsushi/tagbar'
Plug 'tpope/vim-abolish'
" Plug 'vim-airline/vim-airline'| Plug 'vim-airline/vim-airline-themes'
" Plug 'tpope/vim-rhubarb'
" Plug 'airblade/vim-gitgutter'
" Plug 'airblade/vim-rooter'
" Plug 'tpope/vim-surround'
" Plug 'tommcdo/vim-exchange'
" Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'justinmk/vim-sneak'
" Plug 'Raimondi/delimitMate'
" Uncomment


" requires nvim 0.5.0
if has('nvim-0.5')
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-lua/completion-nvim'
  Plug 'aca/completion-tabnine', { 'do': 'version=3.1.9 ./install.sh' }
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'npxbr/glow.nvim', {'do': ':GlowInstall'}
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
endif


" Plug 'neovim/nvim-lspconfig', {'on': 'LspInfo'}
" Plug 'nvim-lua/completion-nvim', {'on': 'CompletionToggle'}
" Plug 'nvim-treesitter/nvim-treesitter', { 'on': 'TSConfigInfo', 'do': ':TSUpdate'}
" Plug 'npxbr/glow.nvim', {'on': 'Glow', 'do': ':GlowInstall'}
" Plug 'norcalli/nvim-colorizer.lua', {'on': 'ColorizerToggle'}

" Language syntax plugins
" **********
" **********
" Plug 'davidhalter/jedi-vim'
" Uncomment
" Plug 'lambdalisue/vim-pyenv'
" Plug 'towolf/vim-helm'
" Uncomment
" Language server before coc
" **********
" **********
" Plug 'autozimu/LanguageClient-neovim', {
"     \ 'branch': 'next',
"     \ 'do': 'bash install.sh',
"     \ }
"
" Plug 'Shougo/denite.nvim'
"
" " (Optional) Completion integration with deoplete.
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" " (Optional) Completion integration with nvim-completion-manager.
" Plug 'roxma/nvim-completion-manager'
"
" " (Optional) Showing function signature and inline doc.
" Plug 'Shougo/echodoc.vim'
" Language server
" **********
" **********


"""""""""""""""""""
"  test coc.nvim  "
"""""""""""""""""""
" Uncomment
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'antoinemadec/coc-fzf'
" Uncomment

" Highlighting
" **********
" **********
" Uncomment
" Plug 'xtal8/traces.vim'
" Plug 'haya14busa/incsearch.vim'
" Uncomment

" Themes
" **********
" **********
" Uncomment
" Plug 'sickill/vim-monokai'
" Plug 'patstockwell/vim-monokai-tasty'
Plug 'joshdick/onedark.vim'
Plug 'christianchiarulli/nvcode-color-schemes.vim'
" Uncomment


" Last plugins
" **********
" **********
" Plug 'ryanoasis/vim-devicons'

" unused plugins
" **********
" **********
" Plug '907th/vim-auto-save'
" Plug 'nvie/vim-flake8'
" Plug 'ervandew/supertab'
" Plug 'benmills/vimux'
" Plug 'godlygeek/tabular'
" Plug 'mattn/emmet-vim'
" Plug 'tpope/vim-obsession'
" Plug 'Yggdroot/indentLine'
" Plug 'dyng/ctrlsf.vim'
" Plug 'AndrewRadev/ginitpull.vim'
" Plug 'zigius/vim-auto-save-git-hook'
" Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
" Plug 'tommcdo/vim-lion'
" Plug 'gcmt/wildfire.vim'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'fatih/vim-go'
" Plug 'ternjs/tern_for_vim'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'christoomey/vim-tmux-navigator'
" Plug 'AndrewRadev/splitjoin.vim'
" Plug 'matze/vim-move'
" Plug 'AndrewRadev/sideways.vim'
" Plug 'moll/vim-node'
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Plug 'mxw/vim-jsx'
" Plug 'pangloss/vim-javascript'
" Plug 'othree/yajs.vim'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'w0rp/ale'
" Plug 'pbogut/fzf-mru.vim'
call plug#end()
