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

" Coffeescript syntax awareness
Plugin 'kchmck/vim-coffee-script'

" Highlight matching parentheses
Plugin 'kien/rainbow_parentheses.vim'

" Clojure keyword highlighting
Plugin 'guns/vim-clojure-static'

" Quasi-REPL for Clojure
Plugin 'tpope/vim-fireplace'

" Autocomplete parens, brackets, etc.
Plugin 'Raimondi/delimitMate'

" Toggle comment
Plugin 'vim-scripts/tComment'

" End vundle and reset filetype on
call vundle#end()
filetype on
