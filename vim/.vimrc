" Vim-plug

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'

call plug#end()

" Configuration
let g:airline_powerline_fonts = 1
let g:airline_theme='powerlineish'
