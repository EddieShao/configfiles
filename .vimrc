set nocompatible

set smarttab
set expandtab
set tabstop=4
set shiftwidth=4

set autoindent
set smartindent

set incsearch
set smartcase
set ignorecase " smartcase needs this

set number
set ruler

let g:netrw_liststyle=3

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Use tabs instead of spaces for specific files.
augroup makefile_settings
  autocmd!
  autocmd FileType make set noexpandtab
augroup END

" Vim will always open a thin window on the left side that shows
" the project directory tree.
augroup startup_settings
  autocmd!
  autocmd VimEnter * execute 'Vex' | execute 'vert res -80'
augroup END

