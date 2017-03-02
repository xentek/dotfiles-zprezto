# basics
: ${HOME=~}
: ${LOGNAME=$(id -un)}
: ${UNAME=$(uname)}
: ${HOSTFILE=$HOME/.ssh/known_hosts}

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# terminal options
set -o notify # notify of bg job completion immediately
umask 0022 # dirs will be 775, files 664
ulimit -n 1024

# add customizations to ~/.localrc
# these customizations aren't tracked by git
# see github.com/xentek/dotfiles-xenrc for a way
# to cleanly add trackable custom config
[ -f ${HOME}/.localrc ] && source ${HOME}/.localrc
