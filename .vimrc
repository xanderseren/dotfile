" UI Config
syntax on " enable syntax processing
set number " show line numbers
filetype plugin indent on

" find ctags
set tags=./tags;,tags;

" Spaces and Tabs
set tabstop=4 " number of visual spaces per TAB
set shiftwidth=4
set softtabstop=4 " number of spaces in a tab when editing
set expandtab " tabs are spaces

" Leader Shortcut
let mapleader="," " set leader as comma

" Searching
set incsearch " search as characters are entered
set hlsearch " highlight matches

" Fix swap file stuff
set backupdir=/var/tmp,/tmp
set directory=/var/tmp,/tmp

" Now I can just nuke the swap files in one swoop:
" rm -rf /var/tmp/*.swp

" Vundle and Plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-surround'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-airline/vim-airline'
Plugin 'fatih/vim-go'
Plugin 'bhurlow/vim-parinfer'

" automatically update tags files
Plugin 'craigemery/vim-autotag'

" Color schemes
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()

" Syntastic default settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Go Stuff
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:gohighlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1

" Theme and Color 
set background=dark
colorscheme tomorrow-night 
let g:airline_theme='molokai'

" Security fix, remove modelines
set modelines=0
