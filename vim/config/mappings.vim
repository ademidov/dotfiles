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

" Tab completion (from SearchComplete plugin) for ?
" (plugin disabled)
" noremap ? :call SearchCompleteStart()<CR>?

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
