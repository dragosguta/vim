" Set up plugins
set nocp
call pathogen#infect()

" Set the color scheme
colorscheme space-vim-dark
hi Comment cterm=italic

" This is extremely useful for indenation purposes
" of several filetypes used in web development
" as you can simply press gg=G for auto indentation
filetype plugin indent on

" Show line numbers
set number

" Combine normal line numbers with relative
" line numbers to make it easier to move between
" multiple lines
set relativenumber

" This will enable Vim's syntax highlighting
syntax on

" This will enable Vim's spell checking feature
" for the English language (emerge -av vim-spell-en)
set spell spelllang=en

" Modify files directly 
" inside NERDTree inside Vim, without having to exit Vim
set modifiable

" This will highlight the current line your cursor is at
set cursorline

" This will highlight the current column your cursor is at
" and it'll make it much easier to determine your closing tags
" (along with matchtagalways) when code is properly indented
set cursorcolumn

" This will enable the usage of your mouse inside Vim in
" terminal emulators that support it (gpm)
set mouse=a

" This option speeds up macro execution in Vim
" Some users may rarely experience glitches with this option
" enabled
set lazyredraw

" This enabled 256-color support in Vim, which is needed
" by many color schemes
set t_Co=256

" This will make Vim start searching the moment you start
" typing the first letter of your search keyword
set incsearch

" This will make Vim highlight all search results that
" matched the search keyword
set hlsearch

" This will make tabs 2 spaces wide
set tabstop=2

" This is needed to tree tabs as multiple spaces
set shiftwidth=2

" This option will enable you to enter a real Tab character
" by pressing Ctrl-V<Tab>
set expandtab

" This will enable NERDTree to show hidden files
let NERDTreeShowHidden=1

" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

" Auto open NERDTree and focus cursor in new document
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

" Don't need status due to lightline
set noshowmode
set laststatus=2

" CtrlP runtime
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" More ctrlP optimiziations just in case
" Ignore some folders and files for CtrlP indexing
" let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$',
"  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
"  \ }


" Typescript specific
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Open files as split on right
set splitright

" Show whitespaces
set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

" Allow backspace
set backspace=indent,eol,start
