export ZSH=/Users/John/.oh-my-zsh
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
# (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(brew npm grunt)

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
source $ZSH/oh-my-zsh.sh

export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/zsh-config

alias gdm="git diff \$(git merge-base origin/master HEAD)"
alias gdmn="gdm --name-only | cat"
alias gs="git status"
alias gd="git diff"
alias gc="git commit"
alias gcam="git commit -am"
alias gco="git checkout"
alias gg="git grep"
alias ga="git add"
alias gap="git add -p"
alias vgd="vim \$(git diff --name-only --relative)"
alias vgdm="vim \$(git diff \$(git merge-base origin/master HEAD) --name-only --relative)"

alias con="cd \$GOPATH/src/github.com/blendlabs/connectivity"
alias ble="cd ~/code/blend"

alias lc="wc -l"
alias redo='while [ $? -ne 0 ]; do $(fc -ln -1); done'
alias stress='while [ $? -eq 0 ]; do $(fc -ln -1); done'

# Disable sharing command history between shells
setopt no_share_history

# for Master Password
export MP_FULLNAME="John Kenneth Steidley"

# increase open file limit
ulimit -n 4096
