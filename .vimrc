let mapleader=" "
let maplocalleader=","

call plug#begin()
" Visual and miscs
" Plug 'jaredgorski/spacecamp'
" Plug 'tomsik68/vim-crystallite'
Plug 'kien/rainbow_parentheses.vim'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'

" Plugins for moving around, productivity
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" Dart lang and syntax
Plug 'dart-lang/dart-vim-plugin'

" Pandoc plugins, too complicated
Plug 'vim-pandoc/vim-pandoc-syntax' 
Plug 'vim-pandoc/vim-pandoc' 
call plug#end()

" colorscheme spacecamp
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
nnoremap <leader>o :! rifle 
nnoremap <leader>? :setlocal spell! spelllang=en_us<CR> 
nnoremap <leader>cd :cd %:p:h<CR>

" Used to find string (selected by visual) and replace it
vnoremap <leader>f "hy:%s/<C-r>h//gc<left><left><left>