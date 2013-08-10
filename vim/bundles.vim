" Initialize Vundle - https://github.com/gmarik/vundle {{{
  filetype off                       " required to initialize
  set rtp+=$HOME/.vim/bundle/vundle/ " include vundle
  call vundle#rc()                   " init vundle
"}}}

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" General
Bundle 'tpope/vim-eunuch'
" For :Subvert and coercions
Bundle 'tpope/vim-abolish'
" Tmux integration
Bundle 'benmills/vimux'
Bundle 'tpope/vim-fugitive'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'

" Navigation
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'christoomey/vim-tmux-navigator'
" Bundle 'LustyJuggler'

" Text editing
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'ReplaceWithRegister'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-commentary'
Bundle 'vim-scripts/AutoClose'
Bundle 'tpope/vim-surround'
" Bundle 'Valloric/YouCompleteMe'
Bundle 'Shougo/neocomplete.vim'
" Bundle 'ervandew/supertab'

" Text objects
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'michaeljsmith/vim-indent-object'

" Ruby & Rails
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'jgdavey/vim-turbux'
Bundle 't9md/vim-ruby-xmpfilter'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-bundler'

" Haskell
Bundle 'Shougo/vimproc.vim'
Bundle 'eagletmt/ghcmod-vim'
Bundle 'dag/vim2hs'
Bundle 'ujihisa/neco-ghc'
" Bundle 'haskell.vim'

" Other languages
Bundle 'jimenezrick/vimerl'
Bundle 'tpope/vim-haml'
Bundle 'slim-template/vim-slim'
Bundle 'kchmck/vim-coffee-script'
" HL for tmux config
Bundle 'zaiste/tmux.vim'

" UI
Bundle 'w0ng/vim-hybrid'

" Unused {{{
" Bundle 'DrawIt'
" Bundle 'vim-scripts/CSApprox'
" Bundle 'twilight'

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
" Bundle 'Raimondi/delimitMate'
" Bundle 'kana/vim-smartinput'

" Too noisy
" Bundle 'vim-scripts/AutoComplPop'

" Bundle 'scrooloose/syntastic'
" Bundle 'int3/vim-extradite'

" Bundle 'kien/rainbow_parentheses.vim'

" Bundle 'kana/vim-smartchr'
" }}}

filetype plugin indent on " required!
