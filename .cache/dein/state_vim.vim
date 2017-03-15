if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/rina-t/.vimrc', '/Users/rina-t/dotfiles/dein.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/rina-t/dotfiles/.cache/dein'
let g:dein#_runtime_path = '/Users/rina-t/dotfiles/.cache/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/rina-t/dotfiles/.cache/dein/.cache/.vimrc'
let &runtimepath = '/Users/rina-t/dotfiles/.cache/dein/repos/github.com/Shougo/dein.vim,/Users/rina-t/.vim,/Users/rina-t/dotfiles/.cache/dein/.cache/.vimrc/.dein,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim80,/Users/rina-t/dotfiles/.cache/dein/.cache/.vimrc/.dein/after,/usr/local/share/vim/vimfiles/after,/Users/rina-t/.vim/after'
  set background=dark
let g:tagbar_type_markdown = { 'ctagstype': 'markdown', 'ctagsbin' : '~/dotfiles/.cache/dein/repos/github.com/jszakmeister/markdown2ctags/markdown2ctags.py', 'ctagsargs' : '-f - --sort=yes', 'kinds' : [ 's:sections', 'i:images' ], 'sro' : '|', 'kind2scope' : { 's' : 'section', }, 'sort': 0, }
  let g:lightline = { 'colorscheme': 'wombat' }
