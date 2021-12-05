set nocompatible
filetype off

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Make sure you use single quotes
Plug 'https://gitee.com/anchaos/nerdtree.git'
Plug 'https://gitee.com/anchaos/vim-startify.git'
Plug 'https://gitee.com/anchaos/vim-fugitive.git'
Plug 'https://gitee.com/anchaos/vim-gitgutter.git'
Plug 'https://gitee.com/anchaos/indentLine.git'
Plug 'https://gitee.com/anchaos/vim-easymotion.git'
Plug 'https://gitee.com/anchaos/vim-surround.git'
Plug 'https://gitee.com/anchaos/ncm2.git'
Plug 'https://gitee.com/anchaos/nvim-yarp.git'
Plug 'https://gitee.com/anchaos/ncm2-jedi.git'          " python completion
Plug 'https://gitee.com/anchaos/ncm2-bufword.git'       " words in current buffer for completion
Plug 'https://gitee.com/anchaos/ncm2-path.git'          " completion of path relative to(1.current openning buffer; 2.current working directory; 3.root directory)
Plug 'https://gitee.com/anchaos/xptemplate.git'

" status line
Plug 'https://gitee.com/anchaos/vim-airline.git'
Plug 'https://gitee.com/anchaos/vim-airline-themes.git'

" color-scheme
Plug 'https://gitee.com/anchaos/vim-hybrid.git'
Plug 'https://gitee.com/anchaos/molokai.git'
Plug 'https://gitee.com/anchaos/gruvbox.git'

" Initialize plugin system
call plug#end()

" ============================ common setting =============================
set number
syntax on
" colorscheme hybrid
colorscheme molokai
" colorscheme gruvbox

" press F2 to paste
set pastetoggle=<F2>

" highlight search
set hlsearch

" cursorline
set cursorline

" leader key
let mapleader=','

" quick save
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>

" jj instead Esc
inoremap jj <Esc>

" use ctrl+h/j/k/l switch window
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

au BufNewFile,BufRead *.py
    \ set tabstop=4     |
    \ set softtabstop=4 |
    \ set shiftwidth=4  |
    "\ set textwidth=79  |
    \ set expandtab     |
    \ set autoindent
    "\ set fileformat=unix

" show tab
set list listchars=tab:→\ 
" ============================= plug setting =============================
" molikai
let g:molokai_original = 1
let g:rehash256 = 1

" gruvbox

" nerdtree
nnoremap <leader>v :NERDTreeFind<cr>
nnoremap <leader>g :NERDTreeToggle<cr>
let NERDTreeShowHidden = 1
let NERDTreeIgnore = [
                    \ '\.git$', '\.pyc$', '\.pyo$', '\.swp$',
                    \ '\.DS_Store$', '__pycache__$'
                    \ ]

" indentLine
" let g:indentLine_fileType = ['python', 'golang']
let g:indentLine_color_term = 239
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_char = '|'

" easymotion
nmap ss <Plug>(easymotion-s2)

" ncm2 something
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect " 不自动插入,即使只有一个匹配也开启菜单,不自动选择

" XPTemplate
let g:xptemplate_key = '<Tab>'
