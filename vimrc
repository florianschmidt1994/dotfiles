set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'jelera/vim-javascript-syntax'
Bundle 'scrooloose/nerdtree'
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'
Bundle 'Shutnik/jshint2.vim'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on     " required! 
syntax enable

set number
set background=light
set tabstop=4
set shiftwidth=4
set expandtab
if $TERM_PROGRAM =~ "iTerm"
        let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
        let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
        endif
