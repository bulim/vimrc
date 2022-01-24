call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim', { 'tag': '1.0.9' }
Plug 'jasoncodes/ctrlp-modified.vim', { 'tag': 'v0.1.0' } | Plug 'kien/ctrlp.vim', { 'tag': '1.79' }
Plug 'scrooloose/nerdtree', { 'tag': '5.0.0' } | Plug 'jistr/vim-nerdtree-tabs', { 'tag': 'v1.4.6'} "| Plug 'Xuyuanp/nerdtree-git-plugin', { 'commit': 'e71e62f' }  removed since https://github.com/scrooloose/syntastic/issues/1391
Plug 'junegunn/goyo.vim', { 'tag': '1.6.0' }
Plug 'scrooloose/syntastic', { 'commit': '32a3754' }

Plug 'majutsushi/tagbar', { 'tag': 'v2.6.1' }
Plug 'tomtom/tcomment_vim', { 'tag': 'v201' }
Plug 'tpope/vim-abolish', { 'tag': 'v1.1' }
Plug 'vim-airline/vim-airline', { 'tag': 'v0.8' } | Plug 'vim-airline/vim-airline-themes', { 'commit': '020b843' }
Plug 'tpope/vim-fugitive', { 'tag': 'v2.2' }
Plug 'airblade/vim-gitgutter', { 'commit': '7b81a8a' }
Plug 'tpope/vim-obsession', { 'commit': 'ad1ef9a'}
Plug 'tpope/vim-repeat', { 'tag': 'v1.1'}
Plug 'airblade/vim-rooter', { 'commit': '70c105c'}
Plug 'tpope/vim-surround', { 'tag': 'v2.1'}
Plug 'amix/vim-zenroom2', { 'commit': '948734e'}
Plug 'gabrielelana/vim-markdown'
Plug 'ervandew/supertab', { 'commit': 'cdaa5c2' }
Plug 'editorconfig/editorconfig-vim', { 'commit': '0abb063' }

" languages plugins
Plug 'neovim/nvim-lspconfig', { 'tag': 'v0.1.0'}
Plug 'hrsh7th/cmp-nvim-lsp', { 'commit': 'ebdfc20'}
Plug 'hrsh7th/nvim-cmp', { 'commit': '7cb14b0'}

" Plug 'moll/vim-node', { 'tag': 'v0.8.1'}
" Plug 'pangloss/vim-javascript', { 'tag': 'v1.1.3'}
" Plug 'othree/yajs.vim', { 'tag': '1.6'}
" Plug 'mattn/emmet-vim', { 'commit': 'f4b097a' }
" Plug 'groenewege/vim-less', { 'commit': '6e818d5'}
" Plug 'nvie/vim-flake8', { 'tag': '1.6' }
" Plug 'chase/vim-ansible-yaml', { 'tag': 'v1.0' }

" To support auto-format on save
Plug 'fatih/vim-go', { 'tag': 'v1.23', 'do': ':GoUpdateBinaries'}
" Plug 'mxw/vim-jsx', { 'commit': 'eb656ed'}

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip', { 'commit': '0abfa18'}
Plug 'hrsh7th/vim-vsnip', { 'commit': '7fde9c0'}
Plug 'rafamadriz/friendly-snippets', { 'commit': 'a8efb53'}
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets', { 'tag': '1.0.0' }

" color scheme
Plug 'chriskempson/vim-tomorrow-theme', { 'commit': 'f45a2ca' }

" https://editorconfig.org/
Plug 'editorconfig/editorconfig-vim', { 'commit': '0a3c1d8' }

call plug#end()
