let mapleader = ' '

call plug#begin()

" General
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'gregsexton/gitv', { 'on': 'Gitv' }
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'tpope/vim-unimpaired'
" For :Subvert and coercions
Plug 'tpope/vim-abolish'
" Tmux integration
Plug 'benmills/vimux', { 'for': 'ruby' }
Plug 'christoomey/vim-tmux-navigator'
let g:tmux_navigator_disable_when_zoomed = 1

Plug 'tpope/vim-dispatch'
Plug 'bruno-/vim-husk'
" For async ghcmod
Plug 'Shougo/vimproc.vim', { 'for': 'haskell', 'do': 'make' }
" Plug 'ap/vim-buftabline'
Plug 'editorconfig/editorconfig-vim'

" Navigation
Plug 'mileszs/ack.vim', { 'on': ['Ack', 'AckFromSearch'] }
" Plug 'kien/ctrlp.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-projectionist'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
" Plug 'w0rp/ale'
let g:fzf_layout = { 'down': '~30%' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Text editing
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'godlygeek/tabular'
Plug 'vim-scripts/AutoClose'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'bkad/CamelCaseMotion'
Plug 'Lokaltog/vim-easymotion'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
" For vim-oblique:
Plug 'junegunn/vim-pseudocl', { 'tag': 'fda3f84' }
Plug 'junegunn/vim-oblique'

" Text objects
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'michaeljsmith/vim-indent-object'

" Ruby & Rails
Plug 'vim-ruby/vim-ruby',       { 'for': 'ruby' }
Plug 'tpope/vim-rails',         { 'for': 'ruby' }
Plug 'tpope/vim-rake',          { 'for': 'ruby' }
Plug 'jgdavey/vim-turbux',      { 'for': 'ruby' }
Plug 't9md/vim-ruby-xmpfilter', { 'for': 'ruby' }
Plug 'tpope/vim-endwise'
" Plug 'hackhowtofaq/vim-solargraph', { 'for': 'ruby' }
" Plug 'tpope/vim-bundler',       { 'for': 'ruby' }
" Plug 'thoughtbot/vim-rspec',    { 'for': 'ruby' }
" Plug 'janko-m/vim-test'
" Plug 'skywind3000/asyncrun.vim'

" Haskell
Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
Plug 'dag/vim2hs',          { 'for': 'haskell' }
Plug 'ujihisa/neco-ghc',    { 'for': 'haskell' }

" Erlang
Plug 'jimenezrick/vimerl', { 'for': 'erlang' }

" Other languages (HL mostly)
Plug 'zaiste/tmux.vim',          { 'for': 'tmux' }
Plug 'tpope/vim-haml',           { 'for': 'haml' }
Plug 'slim-template/vim-slim',   { 'for': 'slim' }
Plug 'groenewege/vim-less',      { 'for': 'less' }
Plug 'derekwyatt/vim-scala',     { 'for': 'scala' }
Plug 'idris-hackers/idris-vim',  { 'for': 'idris' }
Plug 'rust-lang/rust.vim',       { 'for': 'rust' }
Plug 'racer-rust/vim-racer',     { 'for': 'rust' }
let g:racer_cmd = "/Users/ademidov/.cargo/bin/racer"
let g:racer_experimental_completer = 1
au FileType rust nmap <leader>rd <Plug>(rust-doc)
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'elzr/vim-json',            { 'for': 'json' }
Plug 'pangloss/vim-javascript',  { 'for': 'javascript' }
Plug 'mxw/vim-jsx',              { 'for': 'javascript' }
let g:jsx_ext_required = 0
Plug 'Shutnik/jshint2.vim',      { 'for': 'javascript' }
Plug 'cespare/vim-toml',         { 'for': 'toml' }
Plug 'noprompt/vim-yardoc',      { 'for': 'ruby' }
Plug 'fatih/vim-go',             { 'for': 'go' }
" Plug 'mdempsky/gocode',          { 'for': 'go', 'rtp': 'vim', 'do': './vim/symlink.sh' }
Plug 'deoplete-plugins/deoplete-go', { 'for': 'go', 'do': 'make'}
Plug 'ekalinin/Dockerfile.vim'
Plug 'plasticboy/vim-markdown',  { 'for': 'markdown' }
Plug 'elixir-lang/vim-elixir',   { 'for': 'elixir' }
Plug 'slashmili/alchemist.vim',  { 'for': 'elixir' }
Plug 'posva/vim-vue'
Plug 'jparise/vim-graphql'
" Plug 'tomlion/vim-solidity'
" Plug 'astashov/vim-ruby-debugger', { 'for': 'ruby' }

" Plug 'mhinz/vim-startify'

let g:vue_disable_pre_processors = 1
let g:jshint2_command = 'jsxhint'
" let g:test#ruby#rspec#executable = 'docker-compose exec gps rspec'
" let test#strategy = "vimux"

let g:turbux_runner = 'vimux'

" UI
Plug 'w0ng/vim-hybrid'

" Plug 'mazubieta/gitlink-vim.git'
call plug#end()

autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css.scss

" let g:airline#extensions#tabline#enabled = 1
let g:airline_section_a = airline#section#create_left(['mode'])
let g:airline_section_y = []
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline_theme = 'minimalist'

call camelcasemotion#CreateMotionMappings(',')

" set pythonthreehome=/usr/local/Cellar/python/3.6.5/Frameworks/Python.framework/Versions/3.6

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

  set nrformats-=octal  " do not use C-A C-X on octals

  set ttimeout
  set ttimeoutlen=10 " fast escape
  set lazyredraw     " don't redraw while macro executing

  set formatoptions+=j " Delete comment character when joining lines
  set guicursor = " no nvim cursor in insert mode

  set diffopt=filler,vertical

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
    set softtabstop=2              " 2 spaces for tab
    set shiftround
  "}}}
  " Command line completions {{{
    set wildmenu                               " enable enhanced completion
    set wildmode=list:longest,full             " list all matches, complete to longest common and toggle by tab
    set wildignore=git,*.swp,*.jpg,*.png,*.gif " ignore versioning and binary files at autocomplete
  "}}}
  " Status line {{{

    fun! StatusLineFilePath() "{{{
      let p = expand('%')
      if len(p) > 30
        let p = pathshorten(p)
      endif
      return p
    endfunction "}}}

    set statusline=
    set statusline+=\ %<%{StatusLineFilePath()} " path
    set statusline+=%m%r%h%w                    " flags
    set statusline+=%=                          " switch to right side
    set statusline+=%y\                         " type
    set statusline+=%-10((%l,%c)%)\             " line and column
    set statusline+=%3P                         " percentage of file
    " set statusline+=[%{fugitive#head()}]          " git branch
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
    set foldenable
    set foldcolumn=0      " no folding columns
    set foldmethod=indent
    set foldlevel=99      " all folds are open
  "}}}

" Section: Plugins options {{{1

  " CtrlP {{{2
    let g:ctrlp_match_window_bottom = 0 " Show at top of window
    let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
    " let g:ctrlp_cmd = 'CtrlPMixed' " MRU+buffers+files
    let g:ctrlp_working_path_mode = 'ra'
    let g:ctrlp_mruf_relative = 1 " Show mru files only in the working directory
    let g:ctrlp_use_caching = 0

    " let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
    " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

    " let g:user_command_async = 1
    " let g:ctrlp_user_command_async = 1
    " if executable('rg')
    "   let g:ctrlp_user_command = 'rg --files -F --color never --hidden --follow --glob "!.git/*" %s'
    " endif

    " if executable('ag')
    "   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    " else
    "   let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
    " endif

    let g:ctrlp_user_command = 'rg %s --files --follow'

  " vim-surround {{{2
    let g:surround_{char2nr('#')} = "#{\r}" " ysiw# to wrap word under cursow with #{}

  " NERDTree {{{2
    let NERDTreeMinimalUI = 1        " Disable bookmarks and help labels
    let NERDTreeAutoDeleteBuffer = 1 " Delete opened buffer when file removed/renamed
    let NERDTreeQuitOnOpen = 1       " Close tree on file open
    let NERDChristmasTree = 1        " Be colorful
    let NERDTreeHijackNetrw = 0

  " ack.vim {{{2
    " let g:ackprg='ack -H --nocolor --nogroup --column --smart-case --sort-files'
    let g:ackprg = 'rg --sort-files --vimgrep --smart-case'
    let g:ack_use_dispatch = 1

  " vimux {{{2
    let g:VimuxHeight = '30'
    let g:VimuxOrientation = 'v'
    let g:VimuxPromptString = 'vimux: '

  " AutoClose {{{2
    let g:AutoCloseExpandEnterOn = ""
    let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"}

  " UndoTree {{{2
    let g:undotree_SetFocusWhenToggle = 1

  " vimerl {{{2
    let erlang_folding = 1

  " vim2hs {{{2
    let g:haskell_conceal = 0

  " neco-ghc {{{2
    " Show detailed information (type) about symbols
    let g:necoghc_enable_detailed_browse = 1

  " ghc-mod {{{2
    let g:ghcmod_ghc_options = ['-fno-warn-unused-do-bind']

  " tagbar {{{2
    let g:tagbar_compact = 1     " Omit help and empty lines
    let g:tagbar_autoshowtag = 1 " Auto open closed folds
    let g:tagbar_autofocus = 1   " Move focus to tagbar window on open
    let g:tagbar_iconchars = ['▸', '▾']

    if executable('lushtags')
        let g:tagbar_type_haskell = {
            \ 'ctagsbin' : 'lushtags',
            \ 'ctagsargs' : '--ignore-parse-error --',
            \ 'kinds' : [
                \ 'm:module:0',
                \ 'e:exports:1',
                \ 'i:imports:1',
                \ 't:declarations:0',
                \ 'd:declarations:1',
                \ 'n:declarations:1',
                \ 'f:functions:0',
                \ 'c:constructors:0'
            \ ],
            \ 'sro' : '.',
            \ 'kind2scope' : {
                \ 'd' : 'data',
                \ 'n' : 'newtype',
                \ 'c' : 'constructor',
                \ 't' : 'type'
            \ },
            \ 'scope2kind' : {
                \ 'data' : 'd',
                \ 'newtype' : 'n',
                \ 'constructor' : 'c',
                \ 'type' : 't'
            \ }
        \ }
      endif

  " gitv {{{2
    let g:Gitv_DoNotMapCtrlKey = 1

  " Splitjoin {{{2
    " Remove extra whitespace
    let g:splitjoin_normalize_whitespace = 1

    " Tabular required
    let g:splitjoin_align = 1

  " YouCompleteMe {{{2
    let g:ycm_semantic_triggers = {
      \ 'haskell' : ['.'],
      \ 'ruby' : ['.', '::'],
      \ 'erlang' : [':'],
      \ 'javascript,vim,python,scala,go' : ['.'],
      \ }

    let g:ycm_collect_identifiers_from_comments_and_strings = 1
    let g:ycm_complete_in_comments = 1
    let g:ycm_filetype_specific_completion_to_disable = {}
    let g:ycm_use_ultisnips_completer = 1
    let g:ycm_key_list_select_completion = ['<C-n>']
    let g:ycm_key_list_previous_completion = ['<C-p>']
    let g:ycm_key_detailed_diagnostics = ''
    let g:ycm_collect_identifiers_from_tags_files = 1
    let g:ycm_seed_identifiers_with_syntax = 1
    " let g:ycm_gocode_binary_path = "$GOPATH/bin/gocode"
    " let g:ycm_godef_binary_path = "$GOPATH/bin/godef"

    " deoplete {{{2
    let g:deoplete#enable_at_startup = 1

  " UltiSnipts {{{2
    let g:UltiSnipsEditSplit="vertical"
    let g:UltiSnipsExpandTrigger="<C-j>"


  " easymotion {{{2
    let g:EasyMotion_do_mapping = 0
    let g:EasyMotion_smartcase = 1
    let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

  " vim-jsx {{{2
    let g:jsx_pragma_required = 0

  " vim-go {{{2
    let g:go_fmt_command = "goimports"
    let g:go_highlight_build_constraints = 1
    let g:go_highlight_extra_types = 1
    let g:go_highlight_fields = 1
    let g:go_highlight_functions = 1
    let g:go_highlight_methods = 1
    let g:go_highlight_operators = 1
    let g:go_highlight_structs = 1
    let g:go_highlight_types = 1
    " let g:go_auto_type_info = 1
    let g:go_def_mapping_enabled = 1

  " " vim-rails {{{2
  "   " let g:rails_no_syntax = 1
  "   hi def link rubyEntity                      Function
  "   hi def link rubyEntities                    Function
  "   hi def link rubyExceptionHandler            Function
  "   hi def link rubyValidation                  Function
  "   hi def link rubyCallback                    Function
  "   hi def link rubyRakeMacro                   Function
  "   hi def link rubyTestMacro                   Function

" Section: Commands {{{1

  " Google search
  command! -nargs=1 Google :silent call system('open https://google.com/search?q='.<q-args>.'&')

  " Convert Ruby 1.8 hash syntax to Ruby 1.9 syntax
  " based on https://github.com/henrik/dotfiles/blob/master/vim/config/commands.vim#L20
  command! -bar -range=% NotRocket execute '<line1>,<line2>s/:\(\w\+\)\s*=>/\1:/e' . (&gdefault ? '' : 'g')

" Section: Mappings {{{1

  " Search and replace word under cursor
  nmap <leader>* :%s/\<<C-r><C-w>\>//<Left>

  " Trim spaces and save current buffer
  map <silent> <leader>w :call utils#trimSpaces()<CR>:w!<CR>

  nnoremap <leader>l :ls<CR>:b<space>

  " Save current buffer, trim spaces and exit
  map <leader>q <leader>w :q!<CR>

  nnoremap <leader>gb :Gblame<CR>
  nnoremap <leader>gs :Gstatus<CR>
  nnoremap <leader>gd :Gdiff<CR>
  nnoremap <leader>gw :Gwrite<CR>
  nnoremap <leader>gv :Gitv! --all<cr>
  vnoremap <leader>gv :Gitv! --all<cr>

  noremap <leader>1 1gt
  noremap <leader>2 2gt
  noremap <leader>3 3gt
  noremap <leader>4 4gt
  noremap <leader>5 5gt
  noremap <leader>6 6gt
  noremap <leader>7 7gt
  noremap <leader>8 8gt
  noremap <leader>9 9gt

  " Toggle nerdtree
  nmap <silent> <leader>p :NERDTreeToggle<CR>
  " Find current file in tree
  nmap <silent> <leader>P :NERDTreeFind<CR>

  " Buffer search
  nmap <silent> <leader>b :CtrlPBuffer<CR>
  nmap <silent> <C-n> :CtrlPBuffer<CR>

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

  " " CtrlP jump to
  map <leader>jm :CtrlP app/models<CR>
  map <leader>jc :CtrlP app/controllers<CR>
  map <leader>jv :CtrlP app/views<CR>
  map <leader>jh :CtrlP app/helpers<CR>
  map <leader>js :CtrlP app/services<CR>
  map <leader>jo :CtrlP app/services<CR>
  map <leader>jl :CtrlP lib<CR>

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

  " Toggle undotree
  nnoremap <silent><leader>u :UndotreeToggle<CR>

  " Markdown preview
  nnoremap <leader>m :!open -a Marked.app '%:p'<cr><cr>

  nnoremap <silent><leader>yf :let @+ = expand("%")<cr>

  " Select last inserted/yanked text
  nmap gV `[v`]

  " Intelligently close a window
  nnoremap <silent> Q :call utils#closeWindowOrKillBuffer()<CR>

  " Yank from cursor to end of line
  nnoremap Y y$

  " Paste toggle
  set pastetoggle=<F5>

  nnoremap <silent> <F8> :TagbarToggle<CR>

  " H to start of line, L to end of line
  noremap H ^
  noremap L $

  " ruby evalution
  nmap <buffer> <F6> <Plug>(xmpfilter-mark)
  xmap <buffer> <F6> <Plug>(xmpfilter-mark)
  nmap <buffer> <F7> <Plug>(xmpfilter-run)
  xmap <buffer> <F7> <Plug>(xmpfilter-run)

  " C-f for switch keyboard layout
  inoremap <C-f> <C-^>
  cnoremap <C-f> <C-^>

  " Use the text that has already been typed as the prefix for searching
  " through commands
  cnoremap <C-n> <Down>
  cnoremap <C-p> <Up>

  " C-a & C-e should work as expected at command-line mode
  cnoremap <C-a> <Home>
  cnoremap <C-e> <End>

  " Filetype switching
  nnoremap _rb = :set filetype=ruby<CR>
  nnoremap _jn = :set filetype=json<CR>
  nnoremap _hs = :set filetype=haskell<CR>
  nnoremap _sh = :set filetype=sh<CR>

  " Search file in current dir
  nmap \ :CtrlP %%<CR>

  " Ignore linewraps on jk
  nnoremap j gj
  nnoremap k gk
  vnoremap j gj
  vnoremap k gk

  " Use Tab instead of % to switch using matchit
  nmap <tab> %
  vmap <tab> %

  " Easymotion mappings
  nmap s <Plug>(easymotion-s2)
  vmap s <Plug>(easymotion-s2)
  omap gs <Plug>(easymotion-s2)
  map <Leader>j <Plug>(easymotion-j)
  map <Leader>k <Plug>(easymotion-k)
  omap <Leader>j <Plug>(easymotion-j)
  omap <Leader>k <Plug>(easymotion-k)

  omap t <Plug>(easymotion-tl)
  omap f <Plug>(easymotion-fl)

  omap T <Plug>(easymotion-Tl)
  omap F <Plug>(easymotion-Fl)

  imap <C-j> <Plug>(neosnippet_expand_or_jump)
  smap <C-j> <Plug>(neosnippet_expand_or_jump)
  " SuperTab like snippets behavior.
  " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
  "imap <expr><TAB>
  " \ pumvisible() ? "\<C-n>" :
  " \ neosnippet#expandable_or_jumpable() ?
  " \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
  smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

  nmap <leader>c :bunload<cr>

  " nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
  " nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
  " nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
  " nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

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

    autocmd Filetype gitcommit setlocal textwidth=72
    autocmd Filetype git,gitcommit setlocal foldenable foldmethod=syntax

    autocmd FileType vim setlocal keywordprg=:help foldenable foldmethod=marker foldlevel=0

    autocmd BufWritePost *.hs GhcModCheckAndLintAsync
  augroup END "}}}
  augroup Stuff "{{{
    autocmd!

    " Resize splits when the window is resized
    autocmd VimResized * :wincmd =
  augroup END "}}}

" Section: UI {{{1

  " let g:hybrid_use_iTerm_colors = 1

  set background=dark
  colorscheme hybrid

  " Enable syntax higlighter
  syntax on

  " Highlight VCS conflict markers (thanks, @sjl)
  match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'


  " let NERDTreeHijackNetrw=1
