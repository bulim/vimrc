cd ~/.vim_runtime3

echo '
source ~/.vim_runtime3/vimrcs/basic.vim
source ~/.vim_runtime3/vimrcs/buffers.vim
source ~/.vim_runtime3/vimrcs/filetypes.vim
source ~/.vim_runtime3/vimrcs/folds.vim
source ~/.vim_runtime3/vimrcs/jumps.vim
source ~/.vim_runtime3/vimrcs/tabs.vim
source ~/.vim_runtime3/vimrcs/windows.vim
source ~/.vim_runtime3/vimrcs/plugins.vim
source ~/.vim_runtime3/vimrcs/plugins_config.vim
source ~/.vim_runtime3/vimrcs/extended.vim
source ~/.vim_runtime3/vimrcs/neovim.vim
try
source ~/.vim_runtime3/vimrcs/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
