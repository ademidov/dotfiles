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
Bundle 'benmills/vimux'

Bundle 'tpope/vim-surround'
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'tpope/vim-repeat'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'godlygeek/tabular'

Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-commentary'
Bundle 'Townk/vim-autoclose'

" Bundle 'vim-scripts/AutoComplPop'
Bundle 'majutsushi/tagbar'

Bundle 'tpope/vim-rails'
Bundle 'jgdavey/vim-turbux'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 't9md/vim-ruby-xmpfilter'
Bundle 'tpope/vim-endwise'

Bundle 'tpope/vim-haml'
Bundle 'slim-template/vim-slim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'zaiste/tmux.vim'

Bundle 'tpope/vim-pastie'

Bundle 'vim-scripts/CSApprox'
Bundle 'twilight'
Bundle 'wombat256.vim'

" Great plugin, but i dont use it. Maybe later
" Bundle 'Lokaltog/vim-easymotion'

" Contains some nice colors, want them in my colorscheme
" Bundle 'w0ng/vim-hybrid'

filetype plugin indent on " required!
" ===================================================

" Enable syntax higlighter
syntax on

" Load settings
runtime macros/matchit.vim
runtime settings/options.vim
runtime settings/plugins.vim
runtime settings/commands.vim
runtime settings/autocommands.vim
runtime settings/mappings.vim

" Apply colorscheme
set background=dark
colorscheme twilight
