set nocompatible              " required
filetype off                  " required
    
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
		    
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'nvie/vim-flake8'
					    
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" enable syntax highlighting
syntax enable

" Show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to next line while coding
set noautoindent

" show matching part of the pair of brackets
set showmatch

" enable all python syntax highlighting features
let python_highlight_all = 1

" Set scripts to be executable from the shell
au BufWritePost * if getline(1) =~ "^#!" | if getline(1) =~ "/bin/" | silent !chmod +x <afile> | endif | endif
