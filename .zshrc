# env
export LANG=ja_JP.UTF-8

# color
autoload -Uz colors
colors

# history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

PROMPT=" %{${fg[yellow]}%}%~%{${reset_color}%}
[%n@%m]% %# "

# 単語の区切り文字を指定する
autoload -Uz select-word-style
select-word-style default
  # ここで指定した文字は単語区切りとみなされる
  # / も区切りと扱うので、^W でディレクトリ１つ分を削除できる
  zstyle ':zle:*' word-chars " /=;@:{},|"
  zstyle ':zle:*' word-style unspecified

  # keybind
  bindkey -v
  bindkey -M viins '^A'  beginning-of-line
  bindkey -M viins '^E'  end-of-line

  ########################################
  # 補完
  # 補完機能を有効にする
  autoload -Uz compinit
  compinit

  # 補完で小文字でも大文字にマッチさせる
  zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

  # ../ の後は今いるディレクトリを補完しない
  zstyle ':completion:*' ignore-parents parent pwd ..

  # sudo の後ろでコマンド名を補完する
  zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
    #                    /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

  # ps コマンドのプロセス名補完
  zstyle ':completion:*:processes' command 'ps x -o pid,s,args'


  ########################################
  # vcs_info
  autoload -Uz vcs_info
  autoload -Uz add-zsh-hook

  zstyle ':vcs_info:*' formats '%F{green}(%s)-[%b]%f'
  zstyle ':vcs_info:*' actionformats '%F{red}(%s)-[%b|%a]%f'

  function _update_vcs_info_msg() {
    LANG=en_US.UTF-8 vcs_info
    RPROMPT="${vcs_info_msg_0_}"
  }
  add-zsh-hook precmd _update_vcs_info_msg


  ########################################
  # オプション
  # 日本語ファイル名を表示可能にする
  setopt print_eight_bit

  # beep を無効にする
  setopt no_beep

  # フローコントロールを無効にする
  setopt no_flow_control

  # Ctrl+Dでzshを終了しない
  setopt ignore_eof

  # '#' 以降をコメントとして扱う
  setopt interactive_comments

  # ディレクトリ名だけでcdする
  setopt auto_cd

  # cd したら自動的にpushdする
  setopt auto_pushd
  # 重複したディレクトリを追加しない
  setopt pushd_ignore_dups

  # 同時に起動したzshの間でヒストリを共有する
  setopt share_history

  # 同じコマンドをヒストリに残さない
  setopt hist_ignore_all_dups

  # スペースから始まるコマンド行はヒストリに残さない
  setopt hist_ignore_space

  # ヒストリに保存するときに余分なスペースを削除する
  setopt hist_reduce_blanks

  # 高機能なワイルドカード展開を使用する
  setopt extended_glob

  setopt nonomatch

  ########################################
  # エイリアス

  alias la='ls -a'
  alias ll='ls -l'
  alias tree='tree -l 2 --ignore "./node_modules"'

  alias rm='rm -i'
  alias cp='cp -i'
  alias mv='mv -i'

  alias mkdir='mkdir -p'

  # グローバルエイリアス
  alias vi='nvim'
  alias vim='nvim'

  # C で標準出力をクリップボードにコピーする
  # mollifier delta blog : http://mollifier.hatenablog.com/entry/20100317/p1
  alias -g C='| pbcopy'

  ########################################
  # OS 別の設定
  case ${OSTYPE} in
    darwin*)
      #Mac用の設定
      export CLICOLOR=1
      alias ls='ls -G -F'
      ;;
  esac

  export PATH="$HOME/.wantedly/bin"
  export PATH="$PATH:$HOME/.nodenv/shims:/usr/local/bin:/usr/bin:/bin:/sbin"
  eval "$(nodenv init -)"
  export PATH="$PATH:$HOME/bin:$HOME/bin/config"
  [[ -d ~/.rbenv  ]] && \
    eval "$(rbenv init -)"

  # vim:set ft=zsh:
  export MANPATH=/opt/local/man:$MANPATH

  export PATH=/usr/local/mecab/bin:$PATH
  export GOPATH=$HOME
  export PYENV_ROOT=/usr/local/var/pyenv

  if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi


  eval "$(direnv hook zsh)"

  # peco
  _register_keycommand() {
    zle -N $2
    bindkey "$1" $2
  }

  function peco_history() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
  }
  _register_keycommand '^r' peco_history

  peco_cd_by_ghq_list(){
    cd $(ghq list --full-path | peco)
  }
  _register_keycommand '^]' peco_cd_by_ghq_list

export NVM_DIR="~/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


# added by travis gem
[ -f /Users/tako/.travis/travis.sh ] && source /Users/tako/.travis/travis.sh
