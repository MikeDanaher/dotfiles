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

" Coffeescript syntax awareness
Plugin 'kchmck/vim-coffee-script'

" Vim Colors Solarized
Plugin 'altercation/vim-colors-solarized'

" Highlight matching parentheses
Plugin 'kien/rainbow_parentheses.vim'

" Clojure keyword highlighting
Plugin 'guns/vim-clojure-static'

" Quasi-REPL for Clojure
Plugin 'tpope/vim-fireplace'

" Quasi-REPL for Clojure
Plugin 'tpope/vim-fugitive'

" Autocomplete parens, brackets, etc.
Plugin 'Raimondi/delimitMate'

" Toggle comment
Plugin 'vim-scripts/tComment'

" HTML5
Plugin 'othree/html5.vim'

" Vim-Airline
Plugin 'bling/vim-airline'

" End vundle and reset filetype on
call vundle#end()
filetype on
