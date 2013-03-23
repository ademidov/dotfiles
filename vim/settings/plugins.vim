" CtrlP
let g:ctrlp_match_window_bottom = 0 " Show at top of window
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
" let g:ctrlp_cmd = 'CtrlPMixed' " MRU+buffers+files
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_mruf_relative = 1 " Show mru files only in the working directory

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
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'}

" Tagbar
let g:tagbar_compact = 1
let g:tagbar_sort = 0 " Sort tags as defined in file
