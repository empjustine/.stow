" ~/.vimrc
" ========

" Don't use compatibility with vi.
" Must go first, because it changes other options as a side effect
set nocompatible
set encoding=utf-8

" Don't run vi modelines
set modelines=0

" Change terminal title
set title
" Smooth editing
set ttyfast


" vim-pathogen
" ------------

runtime bundle/vim-pathogen/autoload/pathogen.vim

filetype off

runtime bundle/tpope-vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()


" Syntax Highlighting
" -------------------

syntax on
filetype plugin on
filetype indent on

" vim-colors-solarized
" --------------------

" let g:solarized_menu=0
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
" let g:solarized_bold = 0
" let g:solarized_underline = 0
" let g:solarized_italic = 0

" let g:solarized_termcolors=16
" colorscheme solarized

" vim-powerline
" -------------

" number of colors used
" set t_Co=16

" let g:Powerline_symbols = 'unicode'

" always show statusline
set laststatus=2


" powerline
" ---------

set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set t_Co=256


" interface settings
" ------------------

" don't visually breaks long lines
" set nowrap

" always show current position
set ruler

" command history to keep
set history=1000
" show incomplete commands
set showcmd
" vim-powerline
set cmdheight=2

set showmode

" blink instead of bell
set errorbells
set visualbell
set t_vb=


if has('gui_running')
  set background=light
else
  set background=dark
endif

" call togglebg#map("<F11>")


" paste mode
" ----------
" disables intelligent handling of input, such as identation
set pastetoggle=<F2>

" current line/column settings
" ----------------------------

" show line at column 80
set colorcolumn=80

" show cross at cursor position
" set cursorline
" set cursorcolumn

" search settings
" ---------------

" ignore case, but only if searching without mixed case
set ignorecase
set smartcase

" incremental search
set incsearch
" highlight search results
set hlsearch
set showmatch
" magic regexp
set magic

set viminfo='100,f1

" file settings
" -------------

set noswapfile
set nobackup
set nowb

set backupdir=$HOME/.vim/backup
set backupcopy=yes                     " keep attributes of original file
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=~/.vim/swap,~/tmp,.      " keep swp files under ~/.vim/swap

" Don’t add empty newlines at the end of files
set binary
set noeol

" indent settings
" ---------------

set autoindent
set smartindent
set smarttab
set shiftround
set tabstop=8 " how many spaces in a <tab>
set softtabstop=2 " how many columns to use when you hit <tab>
set shiftwidth=2 " how many spaces for reident operations
set expandtab

set backspace=indent,eol,start

" whitespace visibility settings ---------------------------------------------

set list
set listchars=tab:▸\ ,trail:·
" set listchars=tab:↹\ ,trail:·eol:¬

" folding settings -----------------------------------------------------------

set foldmethod=indent
set foldnestmax=3
set nofoldenable

" autocomplete settings
" ---------------------

set wildmenu
" set wildmode=list:longest
set wildmode=longest,full

" scrolling settings
" ------------------

set scrolloff=5
set sidescrolloff=15
set sidescroll=1

" arrow navigation settings
" -------------------------

" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>

" Easy window navigation
" ----------------------
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" window limits
" -------------
set winwidth=80
set winheight=4
set winminheight=4
set winheight=999

" best shotcurt EVER
" ------------------

nnoremap ; :

" Markdown
" --------

let g:vim_markdown_folding_disabled=1

" haskell
" -------

let hs_highlight_types = 1
let hs_highlight_more_types = 1
let hs_highlight_boolean = 1
