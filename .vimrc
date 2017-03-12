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
nnoremap sn gt
nnoremap sp gT
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h

let g:NERDCreateDefaultMappings = 0
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDSpaceDelims = 1

map <C-_> <Plug>NERDCommenterToggle

nnoremap <silent> tb :<C-u>Tagbar<CR>
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'ctagsbin' : $HOME . '/.vim/bundle/markdown2ctags/markdown2ctags.py',
    \ 'ctagsargs' : '-f - --sort=yes',
    \ 'kinds' : [
        \ 's:sections',
        \ 'i:images'
    \ ],
    \ 'sro' : '|',
    \ 'kind2scope' : {
        \ 's' : 'section',
    \ },
    \ 'sort': 0,
\ }

let g:python3_host_prog = expand('~/.pyenv/shims/python3')

"==============dein==============
set runtimepath+=~/dotfiles/./dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/dotfiles/./dein')
  call dein#begin('~/dotfiles/./dein')

  call dein#add('~/dotfiles/./dein/repos/github.com/Shougo/dein.vim')

  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/denite.nvim')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('flazz/vim-colorschemes')
  call dein#add('mattn/emmet-vim')
  call dein#add('tpope/vim-obsession')
  call dein#add('itchyny/lightline.vim')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('majutsushi/tagbar')
  call dein#add('kannokanno/previm')
  call dein#add('jszakmeister/markdown2ctags')
  call dein#add('violetyk/iikanji-markdown.vim')

  let g:lightline = { 'colorscheme': 'wombat' }

  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
