" Restore cursor position
au BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Highlight cursor line only at current window
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline
