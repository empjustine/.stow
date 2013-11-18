" ~/.vimrc
" ========

" Don't use compatibility with vi.
" Must go first, because it changes other options as a side effect
set nocompatible


" vim-pathogen
" ------------

runtime bundle/vim-pathogen/autoload/pathogen.vim
filetype off
call pathogen#infect()
call pathogen#helptags()


" general settings
" ----------------

" set encoding=utf-8
" eat BOMs
set encoding=utf-8 nobomb

" Don't run vi modelines
set modelines=0

" Change terminal title
set title
" Smooth editing
set ttyfast

" hides buffers, instead of closing them.
set hidden


" Syntax Highlighting
" -------------------

syntax on
filetype plugin on
filetype indent on

" always show statusline
set laststatus=2


" interface settings
" ------------------

" don't visually breaks long lines
" set nowrap

" always show current position
set ruler

" always show line numbers
" set number

" command history to keep
set history=1000
set undolevels=1000
" show incomplete commands
set showcmd
" vim-powerline
set cmdheight=2

" show current mode
set showmode

" blink instead of bell
set errorbells
set visualbell
set t_vb=


" if has('gui_running')
  set background=light
" else
"   set background=dark
" endif


" paste mode
" ----------
" disables intelligent handling of input, such as identation
set pastetoggle=<F2>


" current line/column settings
" ----------------------------

" show line at column 80
" set colorcolumn=80

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
set showmatch " blink cursor to matching parenthesis/bracket
" magic regexp
set magic

set viminfo='100,f1


" file settings
" -------------

set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/swap
set undodir=$HOME/.vim/undo

set backupcopy=yes                     " keep attributes of original file
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*

" Don’t add empty newlines at the end of files
set binary
set noeol


" indent settings
" ---------------

set autoindent
set smartindent
set smarttab " insert <TAB>s on start of a line based on `shiftwidth`, not `tabstop`
set shiftround " use shiftwidth space `width` for indentin
set tabstop=8 " how many spaces in a <tab>
set softtabstop=2 " how many columns to use when you hit <tab>
set shiftwidth=2 " how many spaces for reident/autoindent operations
" set expandtab

" allow backspacing over everything in insert mode
set backspace=indent,eol,start


" whitespace visibility settings
" ------------------------------

set list
set listchars=tab:▸\ ,trail:·
" set listchars=tab:↹\ ,trail:·eol:¬


" folding settings
" ----------------

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


" 'natural' 'line wrapping' navigation
" ------------------------------------

nnoremap j gj
nnoremap k gk

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


" random
" ------

" Alow `;` like `:`
nnoremap ; :

" `<leader>/` default `\/` erases search highlight
nmap <silent> <leader>/ :nohlsearch<CR>


" write readonly things using sudo
" --------------------------------

cmap w!! w !sudo tee % >/dev/null

" JavaScript
" ----------

autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript


" Markdown
" --------

let g:vim_markdown_folding_disabled=1


" python
" ------

autocmd filetype python set expandtab


" ruby
" ----

autocmd filetype ruby set expandtab


" haskell
" -------

let hs_highlight_types = 1
let hs_highlight_more_types = 1
let hs_highlight_boolean = 1
