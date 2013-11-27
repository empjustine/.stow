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

" Change terminal title
set title
" Smooth editing
set ttyfast
" hides buffers, instead of closing them.
set hidden
set spelllang=en_gb

" interface settings
" ------------------

" command history to keep
set history=1000
set undolevels=1000
" vim-powerline
set cmdheight=2

" show current mode
set showmode

" blink instead of bell
set errorbells
set visualbell
set t_vb=

set mousehide
set ttymouse=xterm2
set background=dark


" paste mode
" ----------
" disables intelligent handling of input, such as identation
set pastetoggle=<F2>


" search settings
" ---------------

" ignore case, but only if searching without mixed case
set ignorecase
set smartcase

" highlight search results
set hlsearch
" magic regexp
set magic


" Don’t add empty newlines at the end of files
set binary
set noeol


" indent settings
" ---------------

set smartindent
set tabstop=8 " how many spaces in a <tab>
set softtabstop=2 " how many columns to use when you hit <tab>
set shiftwidth=2 " how many spaces for reident/autoindent operations
" set expandtab


" autocomplete settings
" ---------------------

set wildmenu
set wildmode=list:longest,full



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


" Shift
" ------

" Alow `;` like `:`
nnoremap ; :
if has("user_commands")
  command! -bang -nargs=* -complete=file E e<bang> <args>
  command! -bang -nargs=* -complete=file W w<bang> <args>
  command! -bang -nargs=* -complete=file Wq wq<bang> <args>
  command! -bang -nargs=* -complete=file WQ wq<bang> <args>
  command! -bang Wa wa<bang>
  command! -bang WA wa<bang>
  command! -bang Q q<bang>
  command! -bang QA qa<bang>
  command! -bang Qa qa<bang>
endif



" `<leader>/` default `\/` erases search highlight
nmap <silent> <leader>/ :nohlsearch<CR>
map <silent> <F11> :call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")<CR>


let g:is_posix=1


" JavaScript
" ----------

autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript


" Whitespace
" ----------

autocmd filetype python set expandtab
autocmd filetype ruby set expandtab


" Haskell
" -------

let hs_highlight_types = 1
let hs_highlight_more_types = 1
let hs_highlight_boolean = 1

" Git
" ---

au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" ctrlp
" -----
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$',
  \ 'file': '\.exe$\|\.so$\|\.dll$\|\.pyc$' }
