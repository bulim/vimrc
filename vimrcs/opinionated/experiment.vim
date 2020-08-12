"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fast editing and reloading of experiment configs (do not edit)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>e :e! ~/.vim_runtime3/vimrcs/opinionated/experiment.vim<cr>
autocmd! bufwritepost ~/.vim_runtime3/vimrcs/opinionated/experiment.vim source ~/.vimrc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Edit below here experimental configs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Performance improvments
" noremap <silent> <leader>a :call CmdLineNew()<CR>
" 
" function! CmdLineNew()
"     " exe "menu Foo.zigi :" . "hello world"
"     exe "hello world" . "normal! "
"     emenu Foo.zigi
"     unmenu Foo
" endfunction 


function! Redir(cmd)
	for win in range(1, winnr('$'))
		if getwinvar(win, 'scratch')
			execute win . 'windo close'
		endif
	endfor
	if a:cmd =~ '^!'
		execute "let output = system('" . substitute(a:cmd, '^!', '', '') . "')"
	else
		redir => output
		execute a:cmd
		redir END
	endif
	vnew
	let w:scratch = 1
	setlocal nobuflisted buftype=nofile bufhidden=wipe noswapfile
	call setline(1, split(output, "\n"))
endfunction

command! -nargs=1 -complete=command Redir silent call Redir(<f-args>)

" Usage:
" 	:Redir hi ............. show the full output of command ':hi' in a scratch window
" 	:Redir !ls -al ........ show the full output of command ':!ls -al' in a scratch window



" ZIGI TODO: remove this if you see it in the future
" command! TestRemoveLine call TestRemoveLine()
" function! TestRemoveLine()
"   let wordUnderCursor = expand("<cword>")
"   let original_line = line(".")
"   call cursor(0, 0)
"   let res = search(wordUnderCursor, 'nw')
"   if original_line == res
"     normal! dd
"   endif
"   " echo(res)
"   " echo(myline)
" endfunction
