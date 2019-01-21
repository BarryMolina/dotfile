"set escape to jk
inoremap jk <ESC>

"indentation
set history=200 
set shiftwidth=4 softtabstop=4 expandtab 
set autoindent 
set smartindent 

"search options
set smartcase
set incsearch
set hlsearch
"allow return to clear search highlighting
nnoremap <CR> :noh<CR><CR>

"syntax highlighting
filetype plugin indent on
syntax on
