let mapleader=" "
let maplocalleader=","

call plug#begin()
Plug 'tomsik68/vim-crystallite'
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
call plug#end()

colorscheme Crystallite
set nocompatible
set wildmode=longest,list,full
set number relativenumber
set expandtab
set tabstop=2
set shiftwidth=2

" Sets path relative to current file
" autocmd BufEnter * lcd %:p:h

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
