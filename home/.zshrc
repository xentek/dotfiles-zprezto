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

# add customizations to ~/.localrc
# these customizations aren't tracked by git
# see github.com/xentek/dotfiles-xenrc for a way
# to cleanly add trackable custom config
[ -f ${HOME}/.localrc ] && source ${HOME}/.localrc
