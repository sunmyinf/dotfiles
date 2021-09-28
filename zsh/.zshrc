#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

setopt extended_glob
setopt auto_param_keys
setopt mark_dirs
setopt correct

# for neovim
alias vim=nvim

alias g='git'
# alias gh="cd $(ghq list -p | peco)"

function upstreamed() {
  git fetch upstream -p && git switch $1 && git reset --hard upstream/$1
}

function gh() {
  local selected_dir=$(ghq list -p | peco)
  if [ -n "$selected_dir" ]; then
    cd $selected_dir
  fi
}

function psgrep() {
  ps aux | grep -v grep | grep "USER.*COMMAND"
  ps aux | grep -v grep | grep $1
}
