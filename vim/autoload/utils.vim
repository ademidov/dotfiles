" Trim trailing whitespaces
function! utils#trimSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction

" Toggle numbers
function! utils#numberToggle()
    if(&relativenumber == 1)
         set number
    else
         set relativenumber
    endif
endfunction

" Thanks https://github.com/skwp/dotfiles/blob/master/vim/plugin/settings/yadr-window-killer.vim
function! utils#closeWindowOrKillBuffer()
  let number_of_windows_to_this_buffer = len(filter(range(1, winnr('$')), "winbufnr(v:val) == bufnr('%')"))

  " We should never bdelete a nerd tree
  if matchstr(expand("%"), 'NERD') == 'NERD'
    wincmd c
    return
  endif

  if number_of_windows_to_this_buffer > 1
    wincmd c
  else
    bdelete
  endif
endfunction
