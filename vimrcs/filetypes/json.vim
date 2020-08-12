command! JsonTool :%!python -m json.tool

" doesnt work anymore
" command! -range -nargs=0 -bar JsonTool <line1>,<line2>!python -m json.tool
