set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')


Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'valloric/MatchTagAlways'
Plug 'critiqjo/lldb.nvim'
" Plug 'Shougo/deoplete.nvim'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'
Plug 'DoxygenToolkit.vim'
Plug 'easymotion/vim-easymotion'
Plug 'mhartington/oceanic-next'
 " Plug 'taketwo/vim-ros'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-fugitive'
call plug#end()



set t_Co=256
colorscheme desertEx-v2
" colorscheme OceanicNext
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let mapleader=" "

xmap ga <Plug>(EasyAlign)



syntax enable
set nu
set mouse=a

set shiftwidth=2
set tabstop=2
set softtabstop=2
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch

set relativenumber

"Todo: FIX"
set incsearch
set nohlsearch
nnoremap <leader>s :nohlsearch<CR>

set foldenable
set foldlevelstart=99
set foldmethod=indent
inoremap jk <esc>
inoremap <Nul> <C-n>

nnoremap <leader>s :w<CR>

nnoremap <leader>e :tabe ~/.config/nvim/init.vim<CR>G

nnoremap <leader>m :w<CR>:silent !pdflatex main.tex<CR><C-l>
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>

"j and k movemements
nnoremap j gj
nnoremap k gk

"Colorscheme choice
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt

"ClipBoard settings
set clipboard=unnamed
nnoremap <leader>p :r !pbpaste<CR>
nnoremap <leader>y :.!pbcopy<CR>u

" Accents
inoremap ,e é
inoremap ,3 è
inoremap ,a à
inoremap ,c ç

set scrolloff=10


let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
set laststatus=2

"setlocal spell spelllang=en
autocmd BufEnter *.tex set spell
nnoremap <leader>c z=
nnoremap <leader>z z=1<CR><CR>
inoremap ,, <esc>mz[sz=1<CR>`za


" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Tagbar Toggle
nnoremap <F8> :TagbarToggle<CR>

" CtrlP + CTAGS
nnoremap <silent> <F7> :CtrlPTag<cr>

" NerdTree
nnoremap <F6> :NERDTreeToggle<cr>

" Quit
nnoremap <leader>q :q<cr>

set splitbelow

" Teminal
:nnoremap <F5> :sp term://<cr>i
:tnoremap jk <C-\><C-n>
:tnoremap <esc> <C-\><C-n>
:tnoremap <C-h> <C-\><C-n><C-w>h
:tnoremap <C-j> <C-\><C-n><C-w>j
:tnoremap <C-k> <C-\><C-n><C-w>k
:tnoremap <C-l> <C-\><C-n><C-w>l
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

" Doxygen 
nnoremap <leader>d :Dox<cr>

" Easy motion
map <Leader> <Plug>(easymotion-prefix)

" For ros launch files
au BufReadPost *.launch set syntax=xml

" Tab jumps
nnoremap <leader>h gT
nnoremap <leader>l gt


