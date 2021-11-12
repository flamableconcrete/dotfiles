#
# .zshrc
#
# @author Jeff Geerling (original)
# @author Jared Ondricek
#

# Colors.
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

# Don't require escaping globbing characters in zsh.
unsetopt nomatch

# Tell homebrew to not autoupdate every single time I run it (just once a week).
export HOMEBREW_AUTO_UPDATE_SECS=604800

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_CUSTOM="$HOME/.zsh_custom"

plugins=(
  asdf
  brew
  dirhistory
  docker
  git
  git-extras
  pip
  vagrant
  zsh-autosuggestions
  zsh-completions
  zsh-motd
  zsh-syntax-highlighting
)

# zsh-motd
export ZSH_MOTD_CUSTOM="======== Jared's Custom MotD! ==========
zsh plugins of note
  * dirhistory: use <alt>-<arrow-key> to navigate directory history
  * zsh-autosuggestions: remembers things you type
  * zsh-completions: add extra completions to zsh in general?
  * zsh-motd: my own custom zsh plugin (fork) that adds custom cows!
  * zsh-syntax-highlighting: syntax highlighting in the prompt

Other packages to remember
  * asdf: Language manager I'm trying to get used to
  * git-extras: A bunch of git aliases
"

export ZSH_MOTD_ALWAYS
export ZSH_MOTD_RANDOM_COW

source $ZSH/oh-my-zsh.sh

alias ll='ls -lhF'

# Starship
eval "$(starship init zsh)"

# asdf
 . /usr/local/opt/asdf/libexec/asdf.sh
 
