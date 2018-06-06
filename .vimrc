execute pathogen#infect()

filetype plugin indent on

set background=light
syntax enable

set backspace=2
set rnu number
set mouse=a
set ignorecase
set smartcase

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set scrolloff=5
set cc=100

command! Q :q
command! Qa :qa
command! Wq :wq
command! WQ :wq
command! Wqa :wqa
command! WQa :wqa
command! W :w
command! Vs :vs
command! VS :vs
command! AG :Ag

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-n> :NERDTreeToggle<CR>

set nocompatible

map <Space> <Plug>(easymotion-bd-w)
hi EasyMotionTarget2First cterm=bold ctermbg=none ctermfg=196
hi EasyMotionTarget2Second cterm=bold ctermbg=none ctermfg=196
hi LineNr ctermfg=black
hi MatchParen cterm=bold ctermbg=white ctermfg=red

hi ColorColumn ctermbg=222

let g:ctrlp_working_path_mode = 0
let g:ctrlp_switch_buffer = 0
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|migrations'

augroup myvimrc
  au!
  au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

set clipboard=unnamed

set ttymouse=sgr
set directory=$HOME/.vim/tmp//
