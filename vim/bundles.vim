" Required startup settings for Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle plugins

" Vundle itself
Plugin 'gmarik/vundle.vim'

" ControlP - Fuzzy search
Plugin 'kien/ctrlp.vim'

" NERDTree - file directory
Plugin 'scrooloose/nerdtree'

" Super Tab autocompletion in insert mode
Plugin 'ervandew/supertab'

" Git commands inside Vim
Plugin 'tpope/vim-fugitive'

" Vim-Airline
Plugin 'bling/vim-airline'

" Coffeescript syntax awareness
Plugin 'kchmck/vim-coffee-script'

" All Vim Colorschemes
Plugin 'flazz/vim-colorschemes'

" Highlight matching parentheses
Plugin 'luochen1990/rainbow'

" Clojure keyword highlighting
Plugin 'guns/vim-clojure-static'

" Quasi-REPL for Clojure
Plugin 'tpope/vim-fireplace'

" Autocomplete parens, brackets, etc.
Plugin 'Raimondi/delimitMate'

" Align text using Tabular
Plugin 'godlygeek/tabular'

" Toggle comment
Plugin 'vim-scripts/tComment'

" HTML5
Plugin 'othree/html5.vim'

" Surround things
Plugin 'tpope/vim-surround'

" Syntax highlighting for markdown files
Plugin 'plasticboy/vim-markdown'

" Go Plugin
Plugin 'fatih/vim-go'

" End vundle and reset filetype on
call vundle#end()
filetype on
