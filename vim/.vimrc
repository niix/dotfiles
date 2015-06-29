set nocompatible
filetype off

syntax enable

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

if filereadable(expand("~/.vimrc.bundles"))
	source ~/.vimrc.bundles
endif

call vundle#end()
filetype plugin indent on

" Colors
set t_Co=256
set background=dark
color Tomorrow-Night

" Map cursor for insert mode
let &t_SI .= "\<Esc>[5 q"
" solid block
let &t_EI .= "\<Esc>[2 q"

set ts=2                                     " set tab width to 2
set backspace=2                              " fix backspace
set list                                     " show trailing whitespace
set number                                   " show line numbers
set ruler                                    " show where you are
set scrolloff=3
set listchars=tab:▸\ ,trail:▫

" keyboard shortcuts
let mapleader = ','
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>t :CtrlP<CR>
nnoremap <leader>g :GitGutterToggle<CR>
nnoremap <leader>w <C-w>v<C-w>l
inoremap jj <ESC>

" plugin settings
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:gitgutter_enabled = 0

" cursor in TMUX
if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" disable arrow keys
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
