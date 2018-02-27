set nocompatible            " No compatability with 'vi'
filetype off                " force reloading *after* pathogen loaded

" Tab
set expandtab               " Spaces instead of tabs
set tabstop=4               " Tab = 4 spaces
set shiftwidth=4            " 4 spaces for identation

" Editing
set backspace=2		        " More powerful backspacing
filetype plugin indent on   " Enable file type detection
set autoindent              " Copy indent from current line when starting a new line

" Searching
set hlsearch                " Highlight all matches
set ignorecase smartcase    " Ignore case unless uppercase letters present

" Visuals
set winwidth=100
set noshowmode
set cmdheight=1             " Height of command line
set laststatus=2            " Always show status line on last window
set numberwidth=4           " Minimum cols for line number gutter
set colorcolumn=80          " Set a vertical line in the 80th column (standard)
set cursorline              " Highlight current line
set number                  " Show line numbers
syntax on

if has('gui_running')
  set guifont=Consolas:h14
endif

" Configs
set encoding=utf8           " Use UTF-8 as default encoding
scriptencoding utf-8
set showmode                " Show current mode
set spelllang=en_us         " Set the spellchecking language

" Key mappings
" Duplicate lines, similar to Eclipse
nnoremap <C-S-Up> YP
nnoremap <C-S-Down> YP

" Theme Lucario
colorscheme lucario

" Plugin list using Vundle
" To install them use :PluginInstall on 'vim'
" For more info: https://github.com/VundleVim/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'honza/vim-snippets'
"Plugin 'SirVer/ultisnips'
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
"Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'davidhalter/jedi-vim'

call vundle#end()

filetype on

" Ultisnips configuration
"let g:UltiSnipsExpandTrigger="<Tab>"
"let g:UltiSnipsJumpForwardTrigger="<C-b>"
"let g:UltiSnipsJumpBackwardTrigger="<C-z>"


" LightLine configuration
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightLineFugitive',
      \   'readonly': 'LightLineReadonly',
      \   'modified': 'LightLineModified',
      \   'filename': 'LightLineFilename'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

function! LightLineModified()
    if &filetype == "help"
        return ""
    elseif &modified
        return "+"
    elseif &modifiable
        return ""
    else
        return ""
    endif
endfunction

function! LightLineReadonly()
    if &filetype == "help"
        return ""
    elseif &readonly
        return "RO"
    else
        return ""
    endif
endfunction

function! LightLineFugitive()
    if exists("*fugitive#head")
        let _ = fugitive#head()
        return strlen(_) ? '⎇  '._ : ''
    endif
    return ''
endfunction

function! LightLineFilename()
    return ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
         \ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
         \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction
