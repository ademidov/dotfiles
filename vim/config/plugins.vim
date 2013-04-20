" CtrlP
let g:ctrlp_match_window_bottom = 0 " Show at top of window
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
" let g:ctrlp_cmd = 'CtrlPMixed' " MRU+buffers+files
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_mruf_relative = 1 " Show mru files only in the working directory
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
let g:ctrlp_use_caching = 0

" vim-rootfinder
" let g:rootfinder_code_dirs = [$HOME.'/projects', $HOME.'/.vim']

" vim-surround
let g:surround_{char2nr('#')} = "#{\r}" " ysiw# to wrap word under cursow with #{}

" NERDTree
let NERDTreeMinimalUI = 1        " Disable bookmarks and help labels
let NERDTreeAutoDeleteBuffer = 1 " Delete opened buffer when file removed/renamed
let NERDTreeQuitOnOpen = 1       " Close tree on file open
let NERDChristmasTree = 1        " Be colorful

" ack.vim
let g:ackprg='ack -H --nocolor --nogroup --column --smart-case --sort-files'

" vimux
let g:VimuxHeight = '30'
let g:VimuxOrientation = 'h'

" vim-turbux
let g:turbux_command_prefix = 'zeus' " Use zeus to run specs

" AutoClose
let g:AutoCloseExpandEnterOn = ""
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'"}

" Tagbar
let g:tagbar_compact = 1
let g:tagbar_sort = 0 " Sort tags as defined in file

" Gundo
let g:gundo_help = 0 " hide help in graph window
let g:gundo_close_on_revert = 1

" Supertab
let g:SuperTabDefaultCompletionType = "context"

" vim-eunuch
" :rename abbr for :Rename :)
cabbrev rename <c-r>=getcmdpos() == 1 && getcmdtype() == ":" ? "Rename" : "rename"<CR>
