let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.vim_runtime3
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +4 ~/compliance/stats/stats.py
badd +11 ~/compliance/share-worker/src/index.js
badd +73 ~/compliance/share-worker/src/lib/controller.js
badd +5 ~/compliance/updater/Dockerfile
badd +97 ~/compliance/updater/src/controller.js
badd +6 ~/compliance/updater/src/lib/services/mapper.js
badd +79 ~/compliance/updater/src/lib/services/sanity.js
badd +1 ~/compliance/front/src/app/file/scan.controller.js
badd +1 ~/compliance/front/src/app/file/scan.html
badd +8 ~/compliance/front/src/app/engines/engines.html
badd +8 ~/compliance/front/src/app/engines/engines.controller.js
badd +29 ~/compliance/front/src/components/navbar/navbar.html
badd +219 ~/compliance/front/src/app/index.js
badd +9 ~/compliance/backapi/src/lib/models/db.js
badd +1 ~/compliance/scanner/engines/av/vba32.py
badd +78 ~/compliance/updater/src/index.js
badd +11 ~/compliance/proxy/src/lib/scan/index.js
badd +1 ~/.oh-my-zsh/custom/aws.zsh
badd +3 ~/compliance/updater/src/lib/utils/executer.js
badd +182 ~/.zshrc
badd +19 ~/compliance/updater/package.json
badd +34 ~/compliance/proxy/src/config/staging.js
badd +13 ~/compliance/guacamole-updater/index.js
badd +10 ~/compliance/guacamole-updater/services/custom-azure.js
badd +114 ~/compliance/guacamole-updater/node_modules/azure-arm-network/lib/networkManagementClient.js
badd +5 ~/compliance/guacamole-updater/node_modules/ms-rest-azure/lib/msRestAzure.js
badd +34 ~/compliance/guacamole-updater/node_modules/ms-rest-azure/lib/azureServiceClient.js
badd +11 ~/compliance/updater/src/lib/services/logger.js
badd +26 vimrcs/plugins-config/plugins-config.vim
badd +22 plugins-list.vim
badd +8 vimrcs/plugins-config/snapshot10-7-2017.vim
argglobal
silent! argdel *
edit vimrcs/plugins-config/plugins-config.vim
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 27 - ((26 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 0
lcd ~/.vim_runtime3
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
let g:this_session = v:this_session
let g:this_obsession = v:this_session
let g:this_obsession_status = 2
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
