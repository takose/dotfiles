set number
set tabstop=2
set autoindent
set shiftwidth=2
set expandtab
set clipboard&
set clipboard^=unnamedplus
set clipboard=unnamed,autoselect
"NeoBundle Scripts-----------------------------

if &compatible
  set nocompatible " Be iMproved
endif

" Required:
set runtimepath^=/Users/rina-t/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/rina-t/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" neobundle.vim
" 常にステータスラインを表示
set laststatus=2
" 256色対応？
set t_Co=254
" Required:
call neobundle#end()"

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
set background=dark
autocmd ColorScheme * highlight LineNr ctermfg=179
colorscheme hybrid
syntax on

