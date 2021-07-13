if &compatible
  set nocompatible
endif

set number
set autoread
set noswapfile
set tabstop=2
set autoindent
set shiftwidth=2
set expandtab
set clipboard=unnamed
set mouse=

" 常にステータスラインを表示
set laststatus=2
" 256色対応
set t_Co=254
set background=dark
autocmd ColorScheme * highlight LineNr ctermfg=179

set encoding=UTF-8
set fileencoding=UTF-8
set termencoding=UTF-8

set langmenu=en_US.UTF-8
language en_US

augroup MyAutoCmd
  autocmd!
augroup END

nnoremap st :<C-u>tabnew<CR>
nnoremap sx :<C-u>tabclose<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sn gt
nnoremap sp gT
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap <C-n> <C-e>
nnoremap <C-p> <C-y>
nnoremap <Space><Space> :Files<CR>

nnoremap <C-f> :NERDTree<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

nnoremap <Esc><Esc> :<C-u>noh<CR>

let g:NERDCreateDefaultMappings = 0
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDSpaceDelims = 1
let g:NERDTreeShowHidden = 1

map <C-_> <Plug>NERDCommenterToggle

nnoremap <silent> tb :<C-u>Tagbar<CR>

call plug#begin('~/.local/share/nvim/plugged')

Plug 'w0ng/vim-hybrid'
Plug 'mattn/emmet-vim'
Plug 'itchyny/lightline.vim'
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

colorscheme hybrid

au BufNewFile,BufRead *.jbuilder setf ruby
autocmd BufNewFile,BufRead *.ruby  set filetype=ruby
filetype plugin indent on
syntax enable

set cursorline
hi LineNr ctermfg=242
hi CursorLineNr ctermbg=242
hi CursorLineNr ctermfg=185
hi Visual ctermbg=240
