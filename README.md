# The Ultimate vimrc 2.0

Over the past year, I've been trying to perfect [Amix's Ultimate Vimrc](https://github.com/amix/vimrc).
This is the result. Amix did an awesome job on his Ultimate vimrc project. Below is a list of [reasons for the fork](#why-the-fork).

## How to install?
1. run this:
```bash
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
	git clone https://github.com/bulim/vimrc.git ~/.vim_runtime3
	sh ~/.vim_runtime3/install.sh
```
2. Inside vim, run this: 

```
	:PlugInstall
```

## How to update to latest version?

Simply just do a git rebase!

    cd ~/.vim_runtime3
    git pull --rebase

## post installation instructions (optional)

### some plugins require additional installation steps, consider installing them:

* google 'XXX install ctags' where XXX should be your OS. [read more on vim and ctags](http://andrew.stwrt.ca/posts/vim-ctags/)
* Install [Ag](https://github.com/ggreer/the_silver_searcher#installing)

### javascript related (requires nodeJS):
* jshint for syntastic: 'npm install -g jshint'

### AutoComplete
* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) is my recommanded plugin for auto complete functionality. However, it is not included since it has an install step with custom engines that's better left for each to decide. It's recommnded to read it's readme. Here's a snippet to get up and running with YouCompleteMe with [tern](http://ternjs.net/) based javascript completion, assuming folder strcture after installing The Ultimate vimrc 2.0:
```
cd ~/.vim_runtime3/sources/include/core
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.py --tern-completer
```

### windows
* windows users should consider installing python, as some plugins require it 

### Git
To make vimdiff be the default merge tool across all your repos:
git config --global merge.tool vimdiff

## Included Plugins

Here is a partial list of the included plugins. Read the docs of these plugins to understand them better. 

* [pathogen.vim](https://github.com/tpope/vim-pathogen): Manages the runtime path of the plugins
* [UltiSnips](https://github.com/SirVer/ultisnips): UltiSnips - The ultimate snippet solution for Vim
* [NERDTree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for vim
* [NERDTree-tabs](https://github.com/jistr/vim-nerdtree-tabs): NERDTree and tabs together in Vim, painlessly 
* [vim-easygrep](https://github.com/dkprice/vim-easygrep): Fast and Easy Find and Replace Across Multiple Files
* [ctrlp.vim](https://github.com/kien/ctrlp.vim): Fuzzy file, buffer, mru and tag finder. In my config it's mapped to `<Ctrl+F>`, or <leader>j
* [vim-airline](https://github.com/bling/vim-airline): Lean & mean status/tabline for vim that's light as air (replacing powerline)
* [vim-fugitive](https://github.com/tpope/vim-fugitive): A Git wrapper so awesome, it should be illegal
* [syntastic](https://github.com/scrooloose/syntastic): Syntax checking hacks for vim

## Included color schemes

* [vim-tomorrow-theme](https://github.com/chriskempson/vim-tomorrow-theme)
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)

## How to include your own stuff?

After you have installed the setup you can create **~/.vim_runtime3/vimrcs/my_configs.vim** to fill in any configurations that are important for you. For instance, [here is see my personal, opinionated configuration](https://gist.github.com/pazams/216856a04eabe1cd8bda)

You can also install your own plugins, for instance, via pathogen we can install [vim-rails](https://github.com/tpope/vim-rails):

	cd ~/.vim_runtime3/sources/core/
	git clone git://github.com/tpope/vim-rails.git 
	
## Key Mappings

### Plugin related mappings

[ctrlp.vim](https://github.com/kien/ctrlp.vim) plugin:
    
    fuzzy file search:  '<c-f>'     OR      <leader>j
    Buffer explorer:    '<c-ff>'    OR      <leader>o
    MRU:                '<c-fff>'   OR      <leader>j
    Tags explorer       '<c-ffff>'  OR      <leader>h
    
Managing the [NERD Tree](https://github.com/scrooloose/nerdtree) plugin:

    NERDTreeToggle:        <leader>nn 
    NERDTreeFromBookmark:  <leader>nb
    NERDTreeFind:          <leader>nf 

[ag.vim](https://github.com/rking/ag.vim) plugin:

    Ag: <leader>g

[gitgutter](https://github.com/airblade/vim-gitgutter) plugin:

    GitGutterToggle: <leader>b

[tagbar](https://github.com/majutsushi/tagbar) plugin:

    TagbarToggle: <F8> 

### Normal mode mappings

Fast saving of a buffer:

	nmap <leader>w :w!<cr>

Treat long lines as break lines (useful when moving around in them):

	map j gj
	map k gk
	
Map `<Space>` to `/` (search) and `<Ctrl>+<Space>` to `?` (backwards search):
	
	map <space> /
	map <c-space> ?
	map <silent> <leader><cr> :noh<cr>

Disable highlight when `<leader><cr>` is pressed:
	
	map <silent> <leader><cr> :noh<cr>

Smart way to move between windows:
	
	map <C-j> <C-W>j
	map <C-k> <C-W>k
	map <C-h> <C-W>h
	map <C-l> <C-W>l

Closing of current buffer(s):
	
	" Close current buffer
	map <leader>bd :Bclose<cr>
	
	" Close all buffers
	map <leader>ba :1,1000 bd!<cr>
	
Useful mappings for managing tabs:
	
	map <leader>tn :tabnew<cr>
	map <leader>to :tabonly<cr>
	map <leader>tc :tabclose<cr>
	map <leader>tm :tabmove 
	
	" Opens a new tab with the current buffer's path
	" Super useful when editing files in the same directory
	map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
	
Switch CWD to the directory of the open buffer:
	
	map <leader>cd :cd %:p:h<cr>:pwd<cr>
	
Remove the Windows ^M - when the encodings gets messed up:
	
	noremap <leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm
	
Quickly open a buffer for scripbble:
	
	map <leader>q :e ~/buffer<cr>

Toggle paste mode on and off:
	
	map <leader>pp :setlocal paste!<cr>


### Insert mode mappings

Quickly insert parenthesis/brackets/etc.:

    inoremap $1 ()<esc>i
    inoremap $2 []<esc>i
    inoremap $3 {}<esc>i
    inoremap $4 {<esc>o}<esc>O
    inoremap $q ''<esc>i
    inoremap $e ""<esc>i
    inoremap $t <><esc>i

Insert the current date and time (useful for timestamps):

    iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>


### Visual mode mappings

Visual mode pressing `*` or `#` searches for the current selection:

	vnoremap <silent> * :call VisualSelection('f')<CR>
	vnoremap <silent> # :call VisualSelection('b')<CR>

When you press gv you vimgrep after the selected text:

	vnoremap <silent> gv :call VisualSelection('gv')<CR>

When you press `<leader>r` you can search and replace the selected text:

	vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

Surround the visual selection in parenthesis/brackets/etc.:

    vnoremap $1 <esc>`>a)<esc>`<i(<esc>
    vnoremap $2 <esc>`>a]<esc>`<i[<esc>
    vnoremap $3 <esc>`>a}<esc>`<i{<esc>
    vnoremap $$ <esc>`>a"<esc>`<i"<esc>
    vnoremap $q <esc>`>a'<esc>`<i'<esc>
    vnoremap $e <esc>`>a"<esc>`<i"<esc>
	

### Command line mappings

$q is super useful when browsing on the command line. It deletes everything until the last slash:

    cno $q <C-\>eDeleteTillSlash()<cr>

Bash like keys for the command line:

    cnoremap <C-A>		<Home>
    cnoremap <C-E>		<End>
    cnoremap <C-K>		<C-U>

    cnoremap <C-P> <Up>
    cnoremap <C-N> <Down>

Write the file as sudo (only on Unix). Super useful when you open a file and you don't have permissions to save your changes. [Vim tip](http://vim.wikia.com/wiki/Su-write):

    :W 


### Spell checking
Pressing `<leader>ss` will toggle and untoggle spell checking

    map <leader>ss :setlocal spell!<cr>

Shortcuts using `<leader>` instead of special chars

    map <leader>sn ]s
    map <leader>sp [s
    map <leader>sa zg
    map <leader>s? z=

### Cope	
Do :help cope if you are unsure what cope is. It's super useful!

When you search with vimgrep, display your results in cope by doing:
`<leader>cc`

To go to the next search result do:
`<leader>n`

To go to the previous search results do:
`<leader>p`

Vimscript mappings:

    map <leader>cc :botright cope<cr>
    map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
    map <leader>n :cn<cr>
    map <leader>p :cp<cr>

## Useful tips From Amix

* [Folding in Vim](http://amix.dk/blog/post/19132#Folding-in-Vim)

# Why the fork?

* Restructured plugins directories into: color-schemes  core  languages  snippets
* Added neovim bindings
* Use [ctrlp.vim](https://github.com/kien/ctrlp.vim) as the default for MRU and Buffer explorer
* replaced zencoding with emmet
* yankring  (considered yankstack, but decided this job is for [OS clipboard managers](http://unix.stackexchange.com/questions/15497/are-there-any-advanced-clipboard-managers-for-linux) )
* replaced snipmate  with ultisnips   
* replaced taglist   with tagbar
* added nerdtree-tabs
* added 'post installation instructions' (plugin related installations) to README
* more js oriented (tern_for_vim, vim-javascript, and more to come)
