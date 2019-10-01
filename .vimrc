call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'jelera/vim-javascript-syntax'
Plug 'elzr/vim-json'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'w0rp/ale'
Plug 'pangloss/vim-javascript'
Plug 'sbdchd/neoformat'
Plug 'jparise/vim-graphql'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd BufWritePre *.js Neoformat

let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }

let g:ale_sign_error = ' '
let g:ale_sign_warning = ' ️'

let g:ale_fix_on_save = 1

let g:javascript_plugin_jsdoc = 1

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1


color dracula
set number
set tabstop=2
set shiftwidth=2
