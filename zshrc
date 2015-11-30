# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
#Disable auto cd
unsetopt AUTO_CD

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="honukaicustom"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx npm catimg sublime docker)

# User configuration
# export RBENV_ROOT=/usr/local/var/rbenv
export PATH=/usr/local/share/npm/bin:$PATH
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="$HOME/.rbenv/bin:$PATH"
export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

# Stuff to enable nvm
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
export PATH="/usr/local/sbin:$PATH"

# Groovy
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# For golang http://golang.org/doc/code.html
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# For pretty json outputpython -m json.tool
alias prettyjson="python -m json.tool"

# Aliases for common application to open from terminal
alias idea="open -a IntelliJ\ IDEA\ 14"
alias sourcetree="open -a SourceTree"
alias webstorm="open -a WebStorm"
alias pycharm="open -a PyCharm"

# Set JAVA_HOME to 1.8
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# Create directory and cd directely into it
function mcd() {
    mkdir -p "$1" && cd "$1"
}

function dockerize() {
    docker-machine env default
    eval "$(docker-machine env default)"
}

function dockerip() {
    echo "$(docker-machine ip default)" | pbcopy
    docker-machine ip default
}

# Server current folder on port 8080
alias serve="python3 -m http.server 8080"

# Change color of AnyBar
# See https://github.com/tonsky/AnyBar
function anybar() {
      echo -n $1 |nc -4u -w0 localhost ${2:-1738} 
}

# bindkey -e
# bindkey '^[[1;9C' forward-word
# bindkey '^[[1;9D' backward-word
# bindkey '^[begin' beginning-of-line
# bindkey '^[end' end-of-line

# added by travis gem
[ -f /Users/florianschmidt/.travis/travis.sh ] && source /Users/florianschmidt/.travis/travis.sh

# The next line updates PATH for the Google Cloud SDK.
source '/Users/florianschmidt/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/Users/florianschmidt/google-cloud-sdk/completion.zsh.inc'
