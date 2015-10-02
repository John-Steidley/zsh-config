export ZSH=/Users/John/.oh-my-zsh
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
# (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git brew npm grunt bower fabric)

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
source $ZSH/oh-my-zsh.sh

export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

alias gdm="git diff \$(git merge-base origin/master HEAD)"
alias gdmn="gdm --name-only | cat"
alias gs="git status -sb"

# Disable sharing command history between shells
setopt no_share_history

# Set up java environment
eval "$(jenv init -)"

# for Master Password
export MP_FULLNAME="John Kenneth Steidley"

# Increase max file handle limit
ulimit -n 4096
