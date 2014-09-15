" Toggle rainbow-parentheses
map <leader>r :RainbowParenthesesToggle<CR> :RainbowParenthesesLoadRound<CR> :RainbowParenthesesLoadSquare<CR> :RainbowParenthesesLoadBraces<CR>

" Ctrl-(h/l) to navigate tabs left/right (mimic general movement and pane switching)
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>

" Ctrl-n for new tab
map <C-n> :tabnew<CR>

" Ctrl-f for find/replace
map <C-f><C-r> :%s/

" Move by visual line instead of physical line
nnoremap k gk
nnoremap j gj
nnoremap gk k
nnoremap gj j

" Map F2 to toggle paste and nopaste modes
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

imap <C-L> <SPACE>=><SPACE>
imap <C-K> ->

nmap , \

" NERDTree toggles
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nr :NERDTree<CR>
map <silent> <LocalLeader>nf :NERDTreeFind<CR>

nmap g/ :Ggrep<space>
nmap g* :Ggrep <C-R><C-W>
nmap gn :cnext<CR>
nmap gp :cprev<CR>
nmap gq :ccl<CR>
nmap gl :cwindow<CR>

map  Y y$
