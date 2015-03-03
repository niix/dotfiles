execute pathogen#infect()

set nocompatible
filetype off

let base16colorspace=256
set background=dark
set t_Co=256
colorscheme base16-ocean

syntax on
set expandtab
set tabstop=4
set shiftwidth=4
set nu
set list
set listchars=tab:▸\ ,trail:▫"

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

let g:neocomplcache_enable_at_startup = 1
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

let delimitMate_expand_cr = 1
filetype indent plugin on

set foldmethod=syntax
set foldlevelstart=1

set visualbell

let javaScript_fold=1         " JavaScript
