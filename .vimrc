" Use the Dracula theme
syntax on
color dracula

" Make Vim more useful
set nocompatible

" Vundle config and plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ternjs/tern_for_vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'w0rp/ale'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'mileszs/ack.vim'
call vundle#end()

" Setup netrw to act like NERDTree
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15

" Use the OS clipboard by default
set clipboard=unnamed
" Change leader
let mapleader=","
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Add the g flag to search/replace by default
set gdefault
" Use UTF-8 without BOM
set encoding=utf-8 nobomb
" Don’t add empty newlines at the end of files
set binary
set noeol
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
  set undodir=~/.vim/undo
endif

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*

" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Enable line numbers
set number
" Highlight current line
set cursorline
" Make tabs as wide as two spaces
set tabstop=2
" Always show status line
set laststatus=2
" Enable mouse in all modes
set mouse=a
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the cursor position
set ruler
" Don’t show the intro message when starting Vim
set shortmess=atI
" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd
" Use relative line numbers
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif
" Start scrolling five lines before the horizontal window border
set scrolloff=5
" No sounds
set visualbell
" No error flash
set t_vb=
" Reload files changed outside vim
set autoread

set autoindent
set colorcolumn=80
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4
set smartcase
filetype plugin indent on

" Automatic commands
if has("autocmd")
	" Enable file type detection
	" filetype on
	" Treat .json files as .js
	autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
	" Treat .md files as Markdown
	autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

" NERDTree config
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeIgnore = ['\.pyc$']
map <C-n> :NERDTreeToggle<CR>
autocmd BufNew * wincmd l

" YouCompleteMe + tern additions
" enable keyboard shortcuts
let g:tern_map_keys=1
" show argument hints
let g:tern_show_argument_hints='on_hold'
nnoremap <leader>g :YcmCompleter GoToReferences<CR>

" ctrlp config
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
"
" Ack config
let g:ackprg = 'ag --nogroup --nocolor --column'
cnoreabbrev Ack Ack!
nnoremap <leader>a :Ack!<Space>
