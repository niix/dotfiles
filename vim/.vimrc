set nocompatible                    " Must come first, changes other options.
filetype off                        " File type detection off.

syntax on                           " Syntax highlighting.

set expandtab                       " Spaces intead of tabs.
set tabstop=4                       " 4 spaces.
set shiftwidth=4                    " 4 space autoindent,

set nu                              " Line numbers.

set list                            " Display whitespace.
set listchars=tab:▸\ ,trail:▫"      " Show trailing space and tabs.
set visualbell                      " No beeping.

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-sleuth'
Plugin 'chriskempson/vim-tomorrow-theme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Color Scheme
set background=dark
set t_Co=256
colorscheme Tomorrow-Night

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" neocomplcache with <TAB> completion
let g:neocomplcache_enable_at_startup = 1
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" delimitMate
let delimitMate_expand_cr = 1
filetype indent plugin on

" coding folding
set foldmethod=syntax
set foldlevelstart=1
let javaScript_fold=1

" disable arrow keys
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Relative line numbers
function! NumberToggle()
    if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunc

