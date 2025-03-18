# -- App Aliases --
alias n='nvim'
alias xampp='sudo /Applications/XAMPP/xamppfiles/xampp'
# PATH="/Applications/XAMPP/xamppfiles:$PATH"
# need root perm to use xampp on path usage instead of sudo alias

# -- System Aliases --
alias ll='ls -al'
alias cls='clear'
alias q='exit'

# -- Git Aliases --
alias gaa='git add .'
alias gs='git status'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gca='git commit --amend'

# Laravel path initialize
PATH="$HOME/.composer/vendor/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!

__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# <<< conda initialize <<<

HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ls="eza --icons=always"

eval "$(zoxide init zsh)"

alias cd="z"

alias zks="z kampus-sozluk"
alias ssh-rc="ssh halkdiyorkixyz@venus.hostingdunyam.net"

