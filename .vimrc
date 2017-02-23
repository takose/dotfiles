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

set encoding=UTF-8
set fileencoding=UTF-8
set termencoding=UTF-8

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

" 常にステータスラインを表示
set laststatus=2
" 256色対応
set t_Co=254
set background=dark
autocmd ColorScheme * highlight LineNr ctermfg=179
colorscheme hybrid

filetype plugin indent on
syntax on

