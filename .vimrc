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

"==============dein==============
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/dotfiles/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath
let s:dein_config_dir = '~/dotfiles'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:dein_config_dir . '/dein.toml', {'lazy': 0})
  call dein#load_toml(s:dein_config_dir . '/deinlazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

autocmd BufNewFile,BufRead *.ruby  set filetype=ruby
filetype plugin indent on
syntax enable
