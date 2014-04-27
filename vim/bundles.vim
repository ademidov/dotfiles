" Initialize Vundle - https://github.com/gmarik/vundle {{{
  filetype off                       " required to initialize
  " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
"}}}

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" General
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'
" For :Subvert and coercions
Plugin 'tpope/vim-abolish'
" Tmux integration
Plugin 'benmills/vimux'
Plugin 'christoomey/vim-tmux-navigator'
" For async ghcmod
Plugin 'Shougo/vimproc.vim'

" Navigation
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

" Text editing
Plugin 'AndrewRadev/splitjoin.vim'
Plugin 'ReplaceWithRegister'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-commentary'
Plugin 'vim-scripts/AutoClose'
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bkad/CamelCaseMotion'

" Text objects
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'michaeljsmith/vim-indent-object'

" Ruby & Rails
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'jgdavey/vim-turbux'
Plugin 't9md/vim-ruby-xmpfilter'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-bundler'

" Haskell
Plugin 'eagletmt/ghcmod-vim'
Plugin 'dag/vim2hs'
Plugin 'ujihisa/neco-ghc'

" Erlang
Plugin 'jimenezrick/vimerl'

" Other languages (HL mostly)
Plugin 'zaiste/tmux.vim'
Plugin 'tpope/vim-haml'
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'derekwyatt/vim-scala'
Plugin 'idris-hackers/idris-vim'
Plugin 'groenewege/vim-less'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" UI
Plugin 'w0ng/vim-hybrid'


" Unused {{{
  " Plugin 'kien/rainbow_parentheses.vim'
  " Plugin 'kana/vim-smartchr'
  " Plugin 'sjl/vitality.vim'
  " Plugin 'scrooloose/syntastic'

  " Look at that!
  " Plugin 'travitch/hasksyn'

  " Plugin 'YankRing.vim'
  " nnoremap <silent> <leader>y :YRShow<CR>
" }}}

call vundle#end()

filetype plugin indent on " required!
