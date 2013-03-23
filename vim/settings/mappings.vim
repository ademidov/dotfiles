" Temporarily disable highlighting
nmap <silent> <leader>n :nohlsearch<CR>

" Search and replace word under cursor
nmap <leader>* :%s/\<<C-r><C-w>\>//<Left>

" Alternate Rails.vim
nmap <leader>a :A<CR>

" Highlight current word without moving the cursor
nmap <silent> <leader>h :setl hls<CR>:let @/="\\<<C-r><C-w>\\>"<CR>

" Save current buffer, trim spaces and restore cursor position
nmap <leader>w ma:w<bar>call utils#trimSpaces()<CR>`a

" Save current buffer, trim spaces and exit
nmap <leader>q <leader>w :wq<CR>

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

" Execute q macro
nmap Q @q

" Toggle relative and absolute line numbers
nnoremap <C-n> :call utils#numberToggle()<CR>

" Yank from cursor to end of line
nnoremap Y y$

" Swap line and symbol mark jumps
" nnoremap ' `
" nnoremap ` '

" Paste toggle
set pastetoggle=<F5>

" Toggle taglist
nnoremap <silent> <F8> :TagbarToggle<CR>

" Scroll viewport by 3 lines
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" windows movements
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" ruby evalution
nmap <buffer> <F6> <Plug>(xmpfilter-mark)
xmap <buffer> <F6> <Plug>(xmpfilter-mark)
nmap <buffer> <F7> <Plug>(xmpfilter-run)
xmap <buffer> <F7> <Plug>(xmpfilter-run)

" :)
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
