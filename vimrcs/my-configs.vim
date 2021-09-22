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

" if has("mac")
"   set nocursorline
"
"   if exists("+relativenumber")
"     set norelativenumber
"   endif
"
"   set foldlevel=0
"   set foldmethod=manual
" endif

" let updatetime=300
" au CursorHold * silent! update
" Autosave only when there is something to save. Always saving makes build
" watchers crazy
function! SaveIfUnsaved()
    if &modified
        :silent! w
    endif
endfunction
au FocusLost,BufLeave,CursorHold * :call SaveIfUnsaved()
" Read the file on focus/buffer enter
au FocusGained,BufEnter * :silent! !
