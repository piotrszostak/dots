"""
""
" A minimal config for neovim
""
"""

" general "
set nocompatible           " disable compatibility to old-time vi
filetype plugin indent on  " Load plugins according to detected filetype.

" visual settings "
syntax on                  " Enable syntax highlighting.
set ruler
set number                 " add line numbers
set wildmenu               " comand line completion
set cursorline             " Find the current line quickly.
set showmatch              " show matching parentheses
set display=lastline       " Show as much as possible of the last line.

" ststus bar "
set laststatus=2           " Always show status bar
set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)

" text editing "
set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop=4          " Tab key indents by 4 spaces.
set shiftwidth=4           " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

" encoding "
set encoding=utf-8
set fileencoding=utf-8
set fileencoding=utf-8

" searching within file " 
set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.
set smartcase
set ignorecase             " case insensitive
set wrapscan               " Searches wrap around end-of-file.
" search will center on the line with found word
" nnoremap n nzt           
" nnoremap N Nzb 

" performance "
set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.
set hidden                 " Switch between buffers without having to save first.
set report=0               " Always report changed lines.
set synmaxcol=200          " Only highlight the first 200 columns.

" split screen "
set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

" mouse support "
set mouse=v                " middle-click paste with
set mouse=a                " enable mouse click
set mousemodel=popup
set t_Co=256
set guioptions=egmrti
set gfn=Monospace\ 10

set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" The fish shell is not very compatible to other shells and unexpectedly
" breaks things that use 'shell'.
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

" aliases and abbreviations "
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" switching windows "
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

" backspace behaviour "
set backspace=indent,eol,start  " Make backspace work as you would expect.
noremap! <C-BS> <C-w> " 'almost' normal ctrl+backspace behaviour
noremap! <C-h> <C-w>

