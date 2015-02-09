" Indentation
set autoindent
set textwidth=0                   " Don't break lines that wrap
set wrapmargin=0                  " Don't wrap at a set margin
set expandtab                     " Use spaces for all auto indentation
set shiftwidth=2                  " Number of spaces to use for auto indent
set softtabstop=2                 " Stop at 2 spaces for autoindent
set tabstop=2                     " Tab is 2 spaces
set wrap                          " Wrap lines that go off the page
filetype plugin indent on         " Auto indent based on file type

" Search
set incsearch                     " Show search matches as you type
set hlsearch                      " Highlight search terms
set ignorecase                    " Ignore case when searching
set smartcase                     " Ignore case if search pattern is all lowercase, case-sensitive otherwise

" Search colors and highlighting
hi Search    ctermbg=none ctermfg=none cterm=underline
hi IncSearch ctermbg=none ctermfg=none cterm=bold,underline

" Colors
let g:solarized_termcolors=256
colorscheme solarized
set background=dark

" Visuals
syntax on
set splitright                    " Open new windows to the right
set splitbelow                    " Open new window below
set number                        " Always show line numbers
set ruler                         " Shows location of cursor in bottom right
set showcmd                       " Show partial commands on last line
set list
set listchars=tab:\ \ ,trail:·    " Display unwanted white space
set showmatch                     " Matches parens/brackets
set laststatus=2                  " Always show the status line
set cursorline                    " Highlight cursor line
set colorcolumn=80                " Highlight column 80
set winwidth=90                   " Set the default width of a window
set winminwidth=15                " Set the minimum width of a window
set nofoldenable                  " Disbale folding
set shortmess+=I                  " Hide vim startup message

" Movement
set scrolloff=5                   " Start scrolling the window 5 lines from the edge
set nostartofline                 " Stay in the current column when moving around
set backspace=indent,eol,start    " Allow backspacing over everything in insert mode

" Alerts
set confirm                       " Confirms unsaved buffers before quitting

" Change Legacy commands
set nocompatible                  " Turn off compatibility with vi
set nobackup                      " Turn off vim backups
set nowritebackup                 " Turn off writing backups
set noswapfile                    " Turn off vim swap file

" Trim trailing whitespace on save
autocmd BufWritePre *.* :%s/\s\+$//e

" fix annoying parens with solarized and coffee
autocmd BufReadPost *.coffee hi coffeeParen ctermfg=none

" Open grep in a quickfix window
autocmd QuickFixCmdPost *grep* cwindow

augroup markdown
  au!
  au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
