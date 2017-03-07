if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/rina-t/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/rina-t/dotfiles/dein'
let g:dein#_runtime_path = '/Users/rina-t/dotfiles/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/rina-t/dotfiles/dein/.cache/.vimrc'
let &runtimepath = '/Users/rina-t/.vim,/Users/rina-t/dotfiles/dein/repos/github.com/Shougo/dein.vim,/Users/rina-t/dotfiles/dein/.cache/.vimrc/.dein,/usr/local/share/vim/vimfiles,/usr/local/share/vim/vim80,/Users/rina-t/dotfiles/dein/.cache/.vimrc/.dein/after,/usr/local/share/vim/vimfiles/after,/Users/rina-t/.vim/after,/Users/rina-t/dotfiles/./dein/repos/github.com/Shougo/dein.vim'
