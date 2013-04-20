" === Do not disturb SSD section ===
" Prevent tilde backup files (eg. myfile.txt~) from being created
set nobackup

" Prevent backups from being created on save
set nowritebackup

" Disable swap files (eg. .myfile.txt.swp) from being created
set noswapfile
" ==================================

" A lot of colors in terminal
" set term=xterm-256color
" set term=gnome-256color
set t_Co=256

" Look for external writings to the current buffer
set autoread

" Make backspace normal for programmer, not for typewriter
set backspace=indent,eol,start

" Highlight search
set hlsearch

" Show search matches while typing
set incsearch

" Ignore case when searching and unignore when uppercase letters present
set ignorecase
set smartcase

" Use a popup to show the completion and matches the longest match first
" set completeopt=longest,menuone

" Use spaces instead tabs
set expandtab

" Loong commands history
set history=1000

" Show line numbers
set number

" As small as possible width for numbers
set numberwidth=1

" Relative number are awesome
set relativenumber
au BufReadPost,BufNewFile * set relativenumber

" 2 spaces for indenting with >>
set shiftwidth=2

" 2 spaces for tab
set tabstop=2

" Show the current command at lower right corner
set showcmd

" Put new windows on the right
set splitright

" Universal width
set textwidth=79

" Keep 8 lines around cursor
set scrolloff=8
set sidescrolloff=8

" Show the cursor position all the time
set ruler

" Nice completion on the command line
set wildmenu

" List all matches, complete to longest common and toggle by tab
set wildmode=list:longest,full

" Ignore versioning and binary files at autocomplete
set wildignore=git,*.swp,*.jpg,*.png,*.gif

" Display extra whitespaces with dots and tabs with quotes
set list listchars=tab:»·,trail:·

" Strangle annoying prompts
set shortmess=atI

" Do not wrap lines
set nowrap

" Show all changes
set report=0

" Send more characters at a given time
set ttyfast

" Always show status line
set laststatus=2

" Status line
set statusline=%<%f                           " path
set statusline+=%m%r%h%w                      " flags
set statusline+=%=%-14.(%l\/%L,%c%V%)         " line and char numbers
set statusline+=%=%y                          " type
set statusline+=[%{strlen(&fenc)?&fenc:&enc}] " encoding
set statusline+=%{fugitive#statusline()}      " git branch

" Buffers can live in background
set hidden

" Keep undo history across sessions
silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

" Ack to grep
" set grepprg=ack

set clipboard=unnamed

" Prevent ack output to bleed into the terminal
set shellpipe=&>

" Fast escape
set ttimeoutlen=10

" Russian language support
set keymap=russian-jcukenwin
set iminsert=0 " Use latin by default
set imsearch=0 " Use latin by default
