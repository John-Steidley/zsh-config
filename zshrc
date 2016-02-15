export ZSH=/Users/John/.oh-my-zsh
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
# (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(git brew npm grunt fabric)

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
source $ZSH/oh-my-zsh.sh

export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

export PATH=$PATH:~/.cargo/bin

alias gdm="git diff \$(git merge-base origin/master HEAD)"
alias gdmn="gdm --name-only | cat"
alias vgd="vim \$(git diff --name-only --relative)"
alias vgdm="vim \$(git diff \$(git merge-base origin/master HEAD) --name-only --relative)"

alias bds="cd ~/code/blend/borrower-datastore/src/borrower-datastore/"

# Disable sharing command history between shells
setopt no_share_history

# for Master Password
export MP_FULLNAME="John Kenneth Steidley"

# making anki cards easily
alias spell="~/zsh-config/spell.sh"
