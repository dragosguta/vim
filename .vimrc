" --- Required ---
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" --- Plugins ---
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/MatchTagAlways'
Plugin 'itchyny/lightline.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/syntastic'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/vimproc.vim'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on

" --- General Settings ---

" show line number and relative number
set number
set relativenumber

" spell check as underline
set spell spelllang=en
hi clear SpellBad
hi SpellBad cterm=underline

set ignorecase
set smartcase

colorscheme gruvbox
set background=dark
" allow files to be modified
set modifiable

" highlight current line of cursor
set cursorline

" enable mouse inside vim
set mouse=a

" set terminal true colors
if has("termguicolors") && $TERM_PROGRAM != 'Apple_Terminal'
	set termguicolors
endif

syntax on

" find match during search, highlight by default
set incsearch
set hlsearch

" default indentations
set tabstop=2
set shiftwidth=2
set autoindent

" wrap lines at convenient points
set wrap
set linebreak

" open windows on the right
set splitright

" allow backspacing in insert mode
set backspace=indent,eol,start

" store :cmdline history
set history=1000

" no delay when switching states
set timeoutlen=0

" disable status line
set noshowmode
set laststatus=2

" set swapfiles location
set directory=~/.vim/swapfiles//

" --- NERDTree ---
let NERDTreeShowHidden=1
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeMouseMode = 2
let g:NERDTreeWinSize = 40
let g:NERDTreeMinimalUI=1

" --- CtrlP ---
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_cache_dir=$HOME.'/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
endif

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" --- Lightline ---
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head'
  \ },
  \ }

" --- YouCompleteMe ---
" An extra step to enable the plugin
" git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
" cd ~/.vim/bundle/YouCompleteMe
" git submodule update --init --recursive
" python3 install.py --clang-completer --js-completer

" --- Syntastic ---
let g:syntastic_check_on_open = 1
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
