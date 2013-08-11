set nocompatible    " we are in 2013
let mapleader = ' '

" Load plugins
source $HOME/.vim/bundles.vim

runtime macros/matchit.vim

" Section: Options {{{1

  set autoread          " look for external writings to the current buffer
  set history=1000      " loong commands history
  set splitright        " put new windows on the right
  set splitbelow        " and below
  set textwidth=79      " universal width
  set nowrap            " do not wrap lines
  set hidden            " buffers can live in background
  set ttyfast           " send more characters at a given time
  set shellpipe=&>      " prevent ack output to bleed into the terminal
  set clipboard=unnamed " OS X clipboard integration
  " set complete-=i       " comletion from included may be slow

  set ttimeout
  set ttimeoutlen=10    " fast escape

  " More faster scrolling: http://vim.wikia.com/wiki/Fix_syntax_highlighting
  syntax sync minlines=256

  " Interface {{{
    " set term=xterm-256color
    " set term=gnome-256color
    set t_Co=256       " a lot of colors in terminal

    set ruler          " show the cursor position all the time
    set nocursorline   " do not HL cursor line
    set nocursorcolumn " does not HL cursor column
    set laststatus=2   " always show status line
    set showcmd        " show the current command at lower right corner
    set report=0       " always report changed lines count
    set shortmess=atI  " strangle annoying prompts

    set scrolloff=8     " 8 lines around cursor vert
    set sidescrolloff=8 " 8 lines around cursor horizontally

    set list                      " show unprintable characters
    set listchars=tab:▸\ ,trail:· " display extra whitespaces with dots and tabs with triangles

    set number           " show line numbers
    set numberwidth=1    " as small as possible width for numbers
    set norelativenumber " relative numbers not so awesome
    au BufReadPost,BufNewFile * set norelativenumber
  "}}}
  " Search and replace {{{
    set hlsearch   " highlight search
    set incsearch  " show search matches while typing
    set ignorecase " case insensitive search
    set smartcase  " case sensitive when capitals present

    set gdefault   " replace all occurences of a line with substitutions (default s//g)
  "}}}
  " Text formatting {{{
    set autoindent                 " preserve indentation
    set backspace=indent,eol,start " make backspace normal for programmer, not for typewriter

    set expandtab                  " use spaces instead tabs
    set shiftwidth=2               " 2 spaces for indenting with >>
    set tabstop=2                  " 2 spaces for tab
    set shiftround
  "}}}
  " Command line completions {{{
    set wildmenu                               " enable enhanced completion
    set wildmode=list:longest,full             " list all matches, complete to longest common and toggle by tab
    set wildignore=git,*.swp,*.jpg,*.png,*.gif " ignore versioning and binary files at autocomplete
  "}}}
  " Status line {{{
    set statusline=%<%f                           " path
    set statusline+=%m%r%h%w                      " flags
    set statusline+=%=%-14.(%l\/%L,%c%V%)         " line and char numbers
    set statusline+=%=%y                          " type
    set statusline+=[%{strlen(&fenc)?&fenc:&enc}] " encoding
    set statusline+=[git:%{fugitive#head()}]      " git branch
  "}}}
  " Persistent undo {{{
    silent !mkdir $HOME/.vim/undo > /dev/null 2>&1
    set undodir=~/.vim/undo                       " where to store undo files
    set undofile                                  " enable undofile
    set undolevels=500                            " max undos stored
  "}}}
  " Russian language support {{{
    set keymap=russian-jcukenwin
    set iminsert=0               " Use latin by default
    set imsearch=0               " Use latin by default
  "}}}
  " Backups (do not disturb SSD) {{{
    set nobackup      " no tilde backup files (eg. myfile.txt~)
    set nowritebackup " no backups on save
    set noswapfile    " no swap files (eg. .myfile.txt.swp)
  "}}}
  " Folding {{{
    set nofoldenable
    set foldcolumn=0      " no folding columns
    set foldmethod=indent
  "}}}

" Section: Plugins options {{{1

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

  " Gundo {{{2
    let g:gundo_help = 0 " hide help in graph window
    let g:gundo_close_on_revert = 1

  " Supertab {{{2
    let g:SuperTabDefaultCompletionType = "context"

  " neocomplete {{{2
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_smart_case = 1

  " vim-eunuch {{{2
    " :rename abbr for :Rename :)
    cabbrev rename <c-r>=getcmdpos() == 1 && getcmdtype() == ":" ? "Rename" : "rename"<CR>

  " vimerl {{{2
    let erlang_folding = 1

" Section: Commands {{{1

  " Google search
  command! -narg=1 Google :silent call system('xdg-open https://google.com/search?q='.<q-args>.'&')

  " Convert Ruby 1.8 hash syntax to Ruby 1.9 syntax
  " based on https://github.com/henrik/dotfiles/blob/master/vim/config/commands.vim#L20
  command! -bar -range=% NotRocket execute '<line1>,<line2>s/:\(\w\+\)\s*=>/\1:/e' . (&gdefault ? '' : 'g')

" Section: Mappings {{{1

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

  " Markdown preview
  nnoremap <leader>m :!open -a Marked.app '%:p'<cr><cr>

  " Insert new line
  map <leader>o o<ESC>
  map <leader>O O<ESC>

  " Intelligently close a window
  nnoremap <silent> Q :call utils#closeWindowOrKillBuffer()<CR>

  " Toggle relative and absolute line numbers
  nnoremap <C-n> :set relativenumber!<CR>

  " Yank from cursor to end of line
  nnoremap Y y$

  " Paste toggle
  set pastetoggle=<F5>

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

  " Tab for scrolling completions
  inoremap <expr><tab> pumvisible() ? "\<C-n>" : "\<tab>"

  " Scroll command-line history with C-k & C-j
  cnoremap <C-j> <t_kd>
  cnoremap <C-k> <t_ku>

  " C-a & C-e should work as expected at command-line mode
  cnoremap <C-a> <Home>
  cnoremap <C-e> <End>

  " Filetype switching
  nnoremap _rb = :set filetype=ruby<CR>
  nnoremap _jn = :set filetype=json<CR>

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

  augroup RestorePosition " {{{
    autocmd!
    autocmd BufWinEnter *
      \ if &filetype !~ 'commit\c' && line("'\"") > 0 && line("'\"") <= line("$") |
      \     execute 'normal! g`"zvzz' |
      \ endif
  augroup END "}}}
  augroup FtOptions "{{{
    autocmd!

    autocmd Filetype gitcommit setlocal spell textwidth=72
    autocmd Filetype git,gitcommit setlocal foldenable foldmethod=syntax foldlevel=0

    autocmd FileType vim setlocal keywordprg=:help foldenable foldmethod=marker foldlevel=0

    autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
  augroup END "}}}
  augroup Stuff "{{{
    autocmd!

    " Resize splits when the window is resized
    autocmd VimResized * :wincmd =
  augroup END "}}}

" Section: UI {{{1

  set background=dark
  colorscheme hybrid

  " Enable syntax higlighter
  syntax on

  " Highlight VCS conflict markers (thanks, @sjl)
  match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'
