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

" 常にステータスラインを表示
set laststatus=2
" 256色対応
set t_Co=254
set background=dark
autocmd ColorScheme * highlight LineNr ctermfg=179
colorscheme hybrid

set encoding=UTF-8
set fileencoding=UTF-8
set termencoding=UTF-8

nnoremap st :<C-u>tabnew<CR>
nnoremap sx :<C-u>tabclose<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H

"============= neobundle begin =============
set runtimepath^=/Users/rina-t/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

NeoBundleCheck
call neobundle#end()"
"============= neobundle end =============

filetype plugin indent on
syntax on

