call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim', { 'tag': '1.0.9' }
Plug 'jasoncodes/ctrlp-modified.vim', { 'tag': 'v0.1.0' } | Plug 'kien/ctrlp.vim', { 'tag': '1.79' }
Plug 'scrooloose/nerdtree', { 'tag': '5.0.0' } | Plug 'jistr/vim-nerdtree-tabs', { 'tag': 'v1.4.6'} | Plug 'Xuyuanp/nerdtree-git-plugin', { 'commit': 'e71e62f' }
Plug 'junegunn/goyo.vim', { 'tag': '1.6.0' }
Plug 'scrooloose/syntastic', { 'tag': 'v0.5.7' }
Plug 'majutsushi/tagbar', { 'tag': 'v2.6.1' }
Plug 'tomtom/tcomment_vim', { 'tag': 'v201' }
Plug 'tpope/vim-abolish', { 'tag': 'v1.1' }
Plug 'vim-airline/vim-airline', { 'tag': '535' } | Plug 'vim-airline/vim-airline-themes', { 'commit': '020b843' }
Plug 'tpope/vim-fugitive', { 'tag': 'v2.2' }
Plug 'airblade/vim-gitgutter', { 'commit': '26c6b54' }
Plug 'tpope/vim-obsession', { 'commit': 'ad1ef9a'}
Plug 'tpope/vim-repeat', { 'tag': 'v1.1'}
Plug 'airblade/vim-rooter', { 'commit': '70c105c'}
Plug 'tpope/vim-surround', { 'tag': 'v2.1'}
Plug 'amix/vim-zenroom2', { 'commit': '948734e'}
Plug 'Valloric/YouCompleteMe', { 'commit': 'e332cdb'}

" languages plugins
Plug 'moll/vim-node', { 'tag': 'v0.8.1'}
Plug 'pangloss/vim-javascript', { 'tag': 'v1.1.3'}
Plug 'othree/yajs.vim', { 'tag': '1.6'}
Plug 'mattn/emmet-vim', { 'commit': 'f4b097a' }
Plug 'groenewege/vim-less', { 'commit': '6e818d5'}
Plug 'nvie/vim-flake8', { 'tag': '1.6' }
Plug 'chase/vim-ansible-yaml', { 'tag': 'v1.0' }
Plug 'fatih/vim-go', { 'tag': 'v1.8'}
Plug 'plasticboy/vim-markdown', { 'commit': '2.0.0'}

" snippets plugins
Plug 'SirVer/ultisnips', { 'tag': '3.1' } | Plug 'honza/vim-snippets', { 'tag': '1.0.0' }

" color scheme
Plug 'chriskempson/vim-tomorrow-theme', { 'commit': 'f45a2ca' } " ('tag': 'v1.0' is 3 years behind lastest commit..)

call plug#end()
