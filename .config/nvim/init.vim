let mapleader=" "
let maplocalleader=","

call plug#begin()
" Plug 'tomsik68/vim-crystallite'
Plug 'jaredgorski/SpaceCamp'
Plug 'kien/rainbow_parentheses.vim'
Plug 'junegunn/goyo.vim'

" Plugins for moving around, productivity
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" Dart lang and syntax
Plug 'dart-lang/dart-vim-plugin'

" Pandoc plugins, too complicated
Plug 'vim-pandoc/vim-pandoc-syntax' 
Plug 'vim-pandoc/vim-pandoc' 

" Airline for better looks
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme spacecamp
set nocompatible
set wildmode=longest,list,full
set number relativenumber
set expandtab
set tabstop=2
set shiftwidth=2

" Sets path relative to current file
" autocmd BufEnter * lcd %:p:h

let g:airline_theme='dark'

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

nnoremap <leader>s :w<CR> 
nnoremap <leader>p :Files<CR> 
nnoremap <leader>r :History<CR> 
nnoremap <leader>g :Goyo<CR> 
nnoremap <leader>m :make<CR> 
nnoremap <leader>e :!  
nnoremap <leader>o :! xdg-open 
nnoremap <leader>? :setlocal spell! spelllang=en_us<CR> 
nnoremap <leader>cd :cd %:p:h<CR>
