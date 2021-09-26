#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# for neovim
export XDG_CONFIG_HOME=$HOME/.config

# for OS自作入門
export PATH=/usr/local/opt/llvm/bin:$PATH
export PATH=/usr/local/opt/binutils/bin:$PATH
