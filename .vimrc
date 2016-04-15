" - To use Vim plugin manager: git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
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
Plugin 'ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"--- --- --- --- Mappings --- --- --- --- ---"
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

nmap <F3> :CtrlPBufTag<CR>
nmap <F4> :CtrlPTag<CR>
nmap <Leader><space> :nohlsearch<CR>

"Make Ctrl-t default behavior to CtrlP
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

inoremap <S-Tab> <C-d>

"--- --- --- --- Search --- --- --- --- ---"
set hlsearch
set incsearch
set ignorecase
set smartcase
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
"Set limit to commit
augroup committing
    autocmd!
    autocmd Filetype gitcommit setlocal spell textwidth=72
augroup END

"Automatically source the Vimrc file on save.
augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END


"--- --- --- --- Plugin settings --- --- --- --- ---"
"/
"/ CtrlP
"/
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'


"--- --- --- --- Tips and Reminders --- --- --- --- ---"
" - Press 'zz' to instantly center the line where the cursor is located.

"Thanks to Jeffrey Way for the laracast
