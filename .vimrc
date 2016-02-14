set nocompatible        " No compatability with 'vi'
filetype off            " force reloading *after* pathogen loaded

" Plugin list using Vundle
" To install them use :PluginInstall on 'vim'
" For more info: https://github.com/VundleVim/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'vim-airline/vim-airline'
Plugin 'chriskempson/base16-vim'

call vundle#end()

" Ultisnips configuration
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

" Configs
syntax on
filetype plugin indent on   " Enable detection, plugins and indent
set expandtab               " Spaces instead of tabs
set tabstop=4               " Tab = 4 spaces
set shiftwidth=4            " 4 spaces for identation
set backspace=4 	        " More powerful backspacing
set encoding=utf8           " Use UTF-8 as default encoding
set number                  " Show line numbers
set numberwidth=3           " Width of numbers column

" Key mappings
" Duplicate lines, similar to Eclipse
noremap <C-S-Up> YP
noremap <C-S-Down> YP

" Theme Base16
set t_Co=16
set background=dark
colorscheme base16-eighties
