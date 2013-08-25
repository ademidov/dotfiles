" Initialize Vundle - https://github.com/gmarik/vundle {{{
  filetype off                       " required to initialize
  set rtp+=$HOME/.vim/bundle/vundle/ " include vundle
  call vundle#rc()                   " init vundle
"}}}

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" General
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-fugitive'
Bundle 'gregsexton/gitv'
Bundle 'sjl/gundo.vim'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-unimpaired'
" For :Subvert and coercions
Bundle 'tpope/vim-abolish'
" Tmux integration
Bundle 'benmills/vimux'
Bundle 'christoomey/vim-tmux-navigator'
" For async neocomplete and ghcmod
Bundle 'Shougo/vimproc.vim'

" Navigation
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'

" Text editing
Bundle 'AndrewRadev/splitjoin.vim'
Bundle 'ReplaceWithRegister'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-commentary'
Bundle 'vim-scripts/AutoClose'
Bundle 'tpope/vim-surround'
Bundle 'Shougo/neocomplete.vim'

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
Bundle 'eagletmt/ghcmod-vim'
Bundle 'dag/vim2hs'
Bundle 'ujihisa/neco-ghc'

" Erlang
Bundle 'jimenezrick/vimerl'

" Other languages (HL mostly)
Bundle 'zaiste/tmux.vim'
Bundle 'tpope/vim-haml'
Bundle 'slim-template/vim-slim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'elzr/vim-json'

" UI
Bundle 'w0ng/vim-hybrid'

" Unused {{{
  " Bundle 'kien/rainbow_parentheses.vim'
  " Bundle 'kana/vim-smartchr'
" }}}

filetype plugin indent on " required!
