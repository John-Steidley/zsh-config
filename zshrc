export ZSH=/Users/John/.oh-my-zsh
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
# (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(brew)

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
source $ZSH/oh-my-zsh.sh


export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/zsh-config

export RUST_SRC_PATH=~/code/rust/src

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

alias gdm="git diff \$(git merge-base origin/master HEAD)"
alias gdp="git diff \$(git merge-base origin/\$(git rev-parse --abbrev-ref HEAD) HEAD)"
alias gdmn="gdm --name-only | cat"
alias gs="git status"
alias gd="git diff --patience"
alias gc="git commit"
alias gcam="git commit -am"
alias gco="git checkout"
alias ga="git add"
alias gap="git add -p"
alias squash="git rebase -i \$(git merge-base HEAD origin/master)"

alias lc="wc -l"
alias stress='while [ $? -eq 0 ]; do $(fc -ln -1); done'

# for Master Password
export MP_FULLNAME="John Kenneth Steidley"

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}
