# Setup fzf
# ---------
if [[ ! "$PATH" == */opt/homebrew/bin/fzf* ]]; then
  export PATH="${PATH:+${PATH}:}/opt/homebrew/bin/fzf"
fi

# Auto-completion
# ---------------
# [[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
# source "/opt/homebrew/bin/fzf/shell/key-bindings.zsh"
