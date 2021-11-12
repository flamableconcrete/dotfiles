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

# Custom $PATH with extra locations.
#export PATH=$HOME/Library/Python/3.8/bin:/opt/homebrew/bin:/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/go/bin:/usr/local/git/bin:$HOME/.composer/vendor/bin:$PATH

# Tell homebrew to not autoupdate every single time I run it (just once a week).
export HOMEBREW_AUTO_UPDATE_SECS=604800

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(
  asdf
  brew
  dirhistory
  docker
  git
  git-extras
  pip
  vagrant
)

source $ZSH/oh-my-zsh.sh

alias ll='ls -alF'

# Starship
eval "$(starship init zsh)"
