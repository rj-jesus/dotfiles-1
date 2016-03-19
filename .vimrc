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
Plugin 'itchyny/lightline.vim'

call vundle#end()

" Ultisnips configuration
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-z>"

" Configs
syntax on
set expandtab               " Spaces instead of tabs
set tabstop=4               " Tab = 4 spaces
set shiftwidth=4            " 4 spaces for identation
set backspace=2		        " More powerful backspacing
set encoding=utf8           " Use UTF-8 as default encoding
set number                  " Show line numbers
set numberwidth=3           " Width of numbers column

" Key mappings
" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i

" Duplicate lines, similar to Eclipse
noremap <C-S-Up> YP
noremap <C-S-Down> YP

" Theme Lucario
colorscheme lucario
