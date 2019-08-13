# for neovim
set -x XDG_CONFIG_HOME $HOME/.config
alias vim=nvim

# for go
set -x -U GOPATH $HOME/development/go
set -x PATH $GOPATH/bin $PATH

# for rbenv
set -x PATH $HOME/.rbenv/bin $PATH
# for goenv
set -x GOENV_ROOT $HOME/.goenv
set -x GOENV_DISABLE_GOPATH 1
set -x PATH $GOENV_ROOT/bin $PATH   # goenv executables
set -x PATH $GOENV_ROOT/shims $PATH # go executables

# alias
alias g='git'
alias gh='cd (ghq list -p | peco)'

# execute last
# https://github.com/syndbg/goenv/issues/72#issuecomment-478011438
eval (rbenv init - | source)
eval (goenv init - | source)
