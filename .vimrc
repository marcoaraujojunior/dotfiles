"--- --- --- --- Manager Plugins --- --- --- --- ---"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"--- --- --- --- Mappings --- --- --- --- ---"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"let g:ctrlp_map = '<F3>'
"let g:ctrlp_map = 'CtrlPBufTag'

nmap <F3> :CtrlPBufTag<CR>

"--- --- --- --- Develop Patterns --- --- --- --- ---"

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set list lcs=trail:·,tab:»·

" UI CONFIG
"""""""""""""""
        set number          " show line numbers
        set cursorline      " highlight current line
        filetype indent on  " load filetype-specific indent files
        set wildmenu        " visual autocomplete for command menu
        set lazyredraw      " redraw only when we need to. (make vim faster)
        set showmatch       " highlight matching [{()}]

"--- --- --- --- Auto-Commands --- --- --- --- ---"
autocmd Filetype gitcommit setlocal spell textwidth=72

"Automatically source the Vimrc file on save.
autocmd BufWritePost .vimrc source %


"--- --- --- --- Plugin settings --- --- --- --- ---"
" CtrlP "
set wildignore+=*/tmp/*,*.so,*.swp,*.zip



"--- --- --- --- Tips and Reminders --- --- --- --- ---"
" - Press 'zz' to instantly center the line where the cursor is located.
" - To use Vim plugin manager: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

"Thanks to Jeffrey Way for the laracast