call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
Plug 'tpope/vim-surround'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'luochen1990/rainbow'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'bkad/CamelCaseMotion',
Plug 'pangloss/vim-javascript'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

"luochen1990/rainbow
let g:rainbow_active = 1
nnoremap <f1> :echo synIDattr(synID(line('.'), col('.'), 0), 'name')<cr>
nnoremap <f2> :echo ("hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">")<cr>
nnoremap <f3> :echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')<cr>
nnoremap <f4> :exec 'syn list '.synIDattr(synID(line('.'), col('.'), 0), 'name')<cr>

"indentation
set history=200 
set shiftwidth=4 softtabstop=4 expandtab 
set autoindent 
set smartindent 
set shiftround

"relative line numbers
set number
"set relativenumber
set numberwidth=4

"show matching bracket
"set showmatch
"search options
set smartcase
set incsearch
set hlsearch

"syntax highlighting
"colorscheme elflord
let g:seoul256_background = 234
colo seoul256
hi Pmenu ctermbg=240
hi PmenuSel ctermbg=60
" colorscheme onedark

"CamelCaseMotion
let g:camelcasemotion_key = '<leader>'

"numirias/semshi
" let g:semshi#mark_selected_nodes = 0

"mouse
set mouse=a

"gutter always open
set signcolumn=yes

"remove status bar
set laststatus=0

"COC.NVIM
set hidden
set nobackup
set nowritebackup
" set cmdheight=2
set updatetime=300
set shortmess+=c

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif


" Set the title of the Terminal to the currently open file
" function! SetTerminalTitle()
"     let titleString = expand('%:t')
"     if len(titleString) > 0
"         let &titlestring = expand('%:t')
"         " this is the format iTerm2 expects when setting the window title
"         let args = "\033];".&titlestring."\007"
"         let cmd = 'silent !echo -e "'.args.'"'
"         execute cmd
"         redraw!
"     endif
" endfunction

"autocmd BufEnter * call SetTerminalTitle()

set title
" set titlestring=VIM:\ %-25.55F\ %a%r%m titlelen=70
set titlestring=%t

" let g:ale_linters = {
"     \   'python': ['flake8', 'pylint']
"     \}


"set leader
let mapleader = ","

"set localleader
let maplocalleader = "\\"

"NORMAL MODE REMAPS
"add quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
vnoremap <leader>" <esc>a"<esc>`<i"<esc>`>2l
vnoremap <leader>' <esc>a'<esc>`<i'<esc>`>2l

"move to beginning, end of line
nnoremap H ^
nnoremap L $

"remap original H, L
nnoremap <leader>H H
nnoremap <leader>L L

"remap , function
nnoremap <leader>, ,

"allow return to clear search highlighting
nnoremap <CR> :noh<CR><CR>

"new blank line under current line
nnoremap <leader>n o<esc>

"new blank line above current line
nnoremap <leader>N O<esc>

"vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>
nnoremap <leader>eg :split $MYGVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>sg :source $MYVIMRC<cr>:source $MYGVIMRC<cr>:source $MYGVIMRC<cr>

"move line down
nnoremap <leader>- ddp

"move line up (doesn't work for last line of file)
nnoremap <leader>_ ddkP

"word to upper
nnoremap <leader><c-u> viwU

" insert at correct tab position
nnoremap <leader>i ko

"INSERT MODE REMAPS
"set escape to jk
inoremap jk <ESC>

"insert mode arrow key remap
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"autoclose
" inoremap " ""<Left>
" inoremap ' ''<Left>
" inoremap [ []<Left>
" inoremap ( ()<Left>
" inoremap { {}<left>
inoremap [<CR> [<CR>]<ESC>O
inoremap (<CR> (<CR>)<ESC>O
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" add matching curly bracket

"word to upper (adds weird space)
inoremap <leader><c-u> <esc>viwUea 


"ABBREVIATIONS 
"iabbrev { {<esc>o}<esc>kA

"TERMINAL
tnoremap jk <C-\><C-n>
tnoremap <esc> <C-\><C-n>
nnoremap <leader>T :below term<cr><C-\><C-n>:resize 20<cr>
let &shell='/bin/bash --login'

"typos
iabbrev waht what
iabbrev tehn then
iabbrev hellow hello

"info
iabbrev bm Barry Molina
iabbrev baz bazzboy@gmail.com

"java
augroup FileType_java
    autocmd!
    autocmd filetype java iabbrev <buffer> print System.out.print("");<left><left><left>
    autocmd filetype java iabbrev <buffer> printf System.out.printf("");<left><left><left>
    autocmd filetype java iabbrev <buffer> sout System.out.println("");<left><left><left>
    autocmd filetype java iabbrev <buffer> fori for (int i = 0; i < arr.length; i++) {<cr>}<esc>kfaciw
    autocmd filetype java iabbrev <buffer> func public void functionName() {<cr>}<esc>ko
    autocmd filetype java iabbrev <buffer> scan import java.util.Scanner;
    autocmd filetype java iabbrev <buffer> key Scanner keyboard = new Scanner(System.in);
    autocmd FileType java setlocal norelativenumber
    autocmd FileType java setlocal nowrap
    autocmd FileType java nnoremap <buffer> <localleader>c I// <esc>
    autocmd FileType java vnoremap <buffer> <localleader>c <esc>`<<C-v>`>I// <esc>
augroup END

"AUTOCOMMANDS 
augroup filetype_html
    autocmd!
    autocmd FileType html setlocal nowrap
    autocmd FileType html setlocal spell
    autocmd FileType html vnoremap <buffer> <localleader>c <esc>`<I<!-- <esc>`>A --><esc>
    autocmd FileType html vnoremap <buffer> <localleader>dc <esc>`<^daw`>daw
    autocmd FileType html iabbrev <buffer> <localleader>l" &ldquo;
    autocmd FileType html iabbrev <buffer> <localleader>r" &rdquo;
augroup END

augroup FileType_css
    autocmd!
    autocmd FileType css vnoremap <buffer> <localleader>c <esc>`<I/* <esc>`>A */<esc>
    autocmd FileType css vnoremap <buffer> <localleader>dc <esc>`<^daw`>daw
augroup END

augroup FileType_python
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>c I# <esc>
    autocmd FileType python vnoremap <buffer> <localleader>c I# <esc>
augroup END

augroup FileType_vim
    autocmd!
    autocmd FileType vim nnoremap <buffer> <localleader>c I"<esc>
    autocmd FileType vim vnoremap <buffer> <localleader>c I"<esc>
augroup END
