" vim:set foldmethod=marker foldlevel=0:

set nocompatible
let mapleader = ' '

" Section: External {{{1
" -----------

" Vundle setup {{{
filetype off     " required!

" https://github.com/gmarik/vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'
"}}}

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
" For :Subvert and coercions
Bundle 'tpope/vim-abolish'

Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-commentary'
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
Bundle 'ZoomWin'

Bundle 'w0ng/vim-hybrid'
Bundle 'vim-scripts/AutoClose'

" Unused {{{
" ===========

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

" }}}

filetype plugin indent on " required!

runtime macros/matchit.vim

" Section: Options {{{1
" ============

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

" Display extra whitespaces with dots and tabs with triangles
set list listchars=tab:▸\ ,trail:·

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

" OS X clipboard integration
set clipboard=unnamed

" Prevent ack output to bleed into the terminal
set shellpipe=&>

" Fast escape
set ttimeoutlen=10

" Russian language support
set keymap=russian-jcukenwin
set iminsert=0 " Use latin by default
set imsearch=0 " Use latin by default

" Replace all occurences of a line with substitutions
set gdefault

" HL only cursor line
set cursorline
set nocursorcolumn

" Section: Plugins options {{{1
" ==============

" CtrlP {{{2
let g:ctrlp_match_window_bottom = 0 " Show at top of window
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
" let g:ctrlp_cmd = 'CtrlPMixed' " MRU+buffers+files
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_mruf_relative = 1 " Show mru files only in the working directory
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
let g:ctrlp_use_caching = 0

" vim-surround {{{2
let g:surround_{char2nr('#')} = "#{\r}" " ysiw# to wrap word under cursow with #{}

" NERDTree {{{2
let NERDTreeMinimalUI = 1        " Disable bookmarks and help labels
let NERDTreeAutoDeleteBuffer = 1 " Delete opened buffer when file removed/renamed
let NERDTreeQuitOnOpen = 1       " Close tree on file open
let NERDChristmasTree = 1        " Be colorful

" ack.vim {{{2
let g:ackprg='ack -H --nocolor --nogroup --column --smart-case --sort-files'

" vimux {{{2
let g:VimuxHeight = '30'
let g:VimuxOrientation = 'v'

" vim-turbux {{{2
let g:turbux_command_rspec = 'spin push'

" AutoClose {{{2
let g:AutoCloseExpandEnterOn = ""
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"}

" Tagbar {{{2
let g:tagbar_compact = 1
let g:tagbar_sort = 0 " Sort tags as defined in file

" Gundo {{{2
let g:gundo_help = 0 " hide help in graph window
let g:gundo_close_on_revert = 1

" Supertab {{{2
let g:SuperTabDefaultCompletionType = "context"

" vim-eunuch {{{2
" :rename abbr for :Rename :)
cabbrev rename <c-r>=getcmdpos() == 1 && getcmdtype() == ":" ? "Rename" : "rename"<CR>

" Section: Commands {{{1
" ==============

" Google search
command! -narg=1 Google :silent call system('xdg-open https://google.com/search?q='.<q-args>.'&')

" Convert Ruby 1.8 hash syntax to Ruby 1.9 syntax
" based on https://github.com/henrik/dotfiles/blob/master/vim/config/commands.vim#L20
command! -bar -range=% NotRocket execute '<line1>,<line2>s/:\(\w\+\)\s*=>/\1:/e' . (&gdefault ? '' : 'g')

" Section: Mappings {{{1
" ==============

" Temporarily disable highlighting
nmap <silent> <leader>n :nohlsearch<CR>

" Search and replace word under cursor
nmap <leader>* :%s/\<<C-r><C-w>\>//<Left>

" Rails.vim alternate and related
nmap <leader>ra :A<CR>
nmap <leader>rr :R<CR>
" Same in vsplit
nmap <leader>RA :AV<CR>
nmap <leader>RR :RV<CR>

" Prompt for jump to migration (then <cr> for last migration, 0<cr> for seeds)
nmap <leader>rm :Rmigration<space>
" Prompt for rails generate
nmap <leader>rg :Rgenerate<space>
" Prompt for rails extract (partial, concern, helper)
map <leader>re :Rextract<space>

" Highlight current word without moving the cursor
nmap <silent> <leader>h :setl hls<CR>:let @/="\\<<C-r><C-w>\\>"<CR>

" Trim spaces and save current buffer
map <silent> <leader>w :call utils#trimSpaces()<CR>:w!<CR>

" Save current buffer, trim spaces and exit
map <leader>q <leader>w :q!<CR>

nmap <leader>gb :Gblame<CR>
nmap <leader>gs :Gstatus<CR>
nmap <leader>gl :Glog<CR>

" Toggle nerdtree
nmap <silent> <leader>p :NERDTreeToggle<CR>

" Buffer search
nmap <silent> <leader>b :CtrlPBuffer<CR>

" Search for tags
nmap <silent> <leader>@ :CtrlPTag<CR>

" ZoomWin
map <silent> <leader>z :ZoomWin<CR>

" Tmux (vimux) mappings
" [l]ast
nmap <leader>vl :VimuxRunLastCommand<CR>
" [q]uit
nmap <leader>vq :VimuxCloseRunner<CR>
" [i]nspect - enter scroll (copy) mode at opened pane
nmap <leader>vi :VimuxInspectRunner<CR>
" [s]top
nmap <leader>vs :VimuxInterruptRunner<CR>
" [c]ommand
nmap <leader>vc :VimuxPromptCommand<CR>

" CtrlP jump to
map <leader>jm :CtrlP app/models<CR>
map <leader>jc :CtrlP app/controllers<CR>
map <leader>jv :CtrlP app/views<CR>
map <leader>jh :CtrlP app/helpers<CR>
map <leader>jl :CtrlP lib<CR>
map <leader>js :CtrlP spec<CR>
map <leader>jf :CtrlP spec/factories<CR>
map <leader>jd :CtrlP db<CR>
map <leader>jC :CtrlP config<CR>

" Switch between last two buffers
nnoremap <leader><leader> <c-^>

" Close buffer
nmap <leader>d :bd<CR>

" Edit file in current dir ([e]dit in [w]indow, [s]plit, [v]split)
cnoremap %% <C-R>=expand('%:p:h').'/'<cr>
map <leader>ew :edit %%
map <leader>ev :vsplit %%
map <leader>es :split %%

" Prompt for ack search
nnoremap <leader>f :Ack!<space>"<left>"
" Search for word under cursor
nnoremap <leader>F *<C-O>:AckFromSearch!<cr>

" Toggle gundo
map <leader>u :GundoToggle<CR>

" Insert =>
imap <buffer> <C-l> <space>=><space>

" Execute q macro
nmap Q @q

" Toggle relative and absolute line numbers
nnoremap <C-n> :call utils#numberToggle()<CR>

" Yank from cursor to end of line
nnoremap Y y$

" Paste toggle
set pastetoggle=<F5>

" Toggle taglist
nnoremap <silent> <F8> :TagbarToggle<CR>

" Scroll viewport by 3 lines
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" H to start of line, L to end of line
noremap H ^
noremap L $

" windows movements
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Experimental
noremap ;; ;
map ; :

" ruby evalution
nmap <buffer> <F6> <Plug>(xmpfilter-mark)
xmap <buffer> <F6> <Plug>(xmpfilter-mark)
nmap <buffer> <F7> <Plug>(xmpfilter-run)
xmap <buffer> <F7> <Plug>(xmpfilter-run)

" C-space for switch keyboard layout
imap <C-@> <C-^>

" Scroll command-line history with C-k & C-j
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>

" C-a & C-e should work as expected at command-line mode
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" :)
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" Section: Autocommands {{{1
" ==============

" Restore cursor position
au BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Highlight cursor line only at current window
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline

autocmd Filetype gitcommit setlocal spell textwidth=72

" Section: UI {{{1
" ==============

set background=dark
colorscheme hybrid

" Enable syntax higlighter
syntax on
