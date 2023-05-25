# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Configure zsh plugins and load oh-my-zsh
#plugins=(git)
#source $ZSH/oh-my-zsh.sh

# Source various configurations
source ~/dotfiles/aliases.sh
source ~/dotfiles/jenv.sh
source ~/dotfiles/fzf.sh
source ~/dotfiles/nvm.sh
source ~/dotfiles/misc.sh
source ~/dotfiles/starship.sh
