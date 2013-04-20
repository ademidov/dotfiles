" Be iMproved
set nocompatible

" Use space for <Leader> mappings
let mapleader = ' '

" =============== Vundle initialization ===============
" Handle bundles via Vundle
" https://github.com/gmarik/vundle
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
" Tmux integration
Bundle 'benmills/vimux'

Bundle 'tpope/vim-surround'
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'tpope/vim-repeat'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'godlygeek/tabular'
Bundle 'ReplaceWithRegister'
Bundle 'tpope/vim-eunuch'

Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-commentary'
" Bundle 'vim-scripts/AutoComplPop'
Bundle 'majutsushi/tagbar'
Bundle 'sjl/gundo.vim'

Bundle 'tpope/vim-rails'
Bundle 'jgdavey/vim-turbux'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'bootleq/vim-textobj-rubysymbol'
Bundle 't9md/vim-ruby-xmpfilter'
Bundle 'tpope/vim-endwise'

Bundle 'tpope/vim-haml'
Bundle 'slim-template/vim-slim'
Bundle 'kchmck/vim-coffee-script'
" HL for tmux config
Bundle 'zaiste/tmux.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'ervandew/supertab'

Bundle 'tpope/vim-pastie'

" Bundle 'vim-scripts/CSApprox'
" Bundle 'twilight'
Bundle 'w0ng/vim-hybrid'

" Great plugin, but i dont use it. Maybe later
" Bundle 'Lokaltog/vim-easymotion'
" '3 of 15 results' for search ('/') - problems with \ mappings
" Bundle 'IndexedSearch'
" Tab completion inside search ('/'). Breaks history
" Bundle 'vim-scripts/SearchComplete'
" Dont like yet another vert column
" Bundle 'airblade/vim-gitgutter'

" Some tests with autoclose plugins:
" Bundle 'Townk/vim-autoclose'
Bundle 'vim-scripts/AutoClose'
" Bundle 'kana/vim-smartinput'

filetype plugin indent on " required!
" ===================================================

" Enable syntax higlighter
syntax on

runtime macros/matchit.vim
" Load all custom config files from .vim/config
runtime! config/**/*

" Apply colorscheme
set background=dark
colorscheme hybrid
