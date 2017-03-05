if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/rina-t/.vim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/rina-t/dotfiles/dein'
let g:dein#_runtime_path = '/Users/rina-t/dotfiles/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/rina-t/dotfiles/dein/.cache/init.vim'
let &runtimepath = '/Users/rina-t/.config/nvim,/etc/xdg/nvim,/Users/rina-t/.local/share/nvim/site,/usr/local/share/nvim/site,/Users/rina-t/dotfiles/dein/repos/github.com/Shougo/dein.vim,/Users/rina-t/dotfiles/dein/.cache/init.vim/.dein,/usr/share/nvim/site,/usr/local/Cellar/neovim/0.1.7/share/nvim/runtime,/Users/rina-t/dotfiles/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/rina-t/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/rina-t/.config/nvim/after,/Users/rina-t/dotfiles/./dein/repos/github.com/Shougo/dein.vim'
filetype off
