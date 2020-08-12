"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale linters
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_fixers = {
\   'javascript': ['eslint'], 
\   'python': ['autopep8', 'yapf']
\}
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['autopep8', 'flake8', 'isort', 'yapf']
\}
let g:ale_fix_on_save=1
let g:ale_javascript_prettier_options = '--single-quote'

