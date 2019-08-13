let mapleader=" "
let maplocalleader=","

call plug#begin()
" Visual and miscs
Plug 'kien/rainbow_parentheses.vim'
Plug 'junegunn/goyo.vim'
Plug 'vim-airline/vim-airline'

" Plugins for moving around, productivity
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" Pandoc plugins, too complicated
Plug 'vim-pandoc/vim-pandoc-syntax' 
Plug 'vim-pandoc/vim-pandoc' 
call plug#end()

set nocompatible
set wildmode=longest,list,full
set number relativenumber
set expandtab
set tabstop=2
set shiftwidth=2

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
