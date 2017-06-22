export ZSH=/Users/John/.oh-my-zsh
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
# (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
plugins=(brew docker)

source $ZSH/oh-my-zsh.sh

PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH=$PATH:~/Library/Python/2.7/bin
PATH=$PATH:~/.cargo/bin
export PATH

export RUST_SRC_PATH=~/code/rust/src

export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

alias current_branch="git rev-parse --abbrev-ref HEAD"
alias merge_base_branch="git merge-base origin/\$(current_branch) HEAD"
alias merge_base_master="git merge-base origin/master HEAD"
alias gdm="git diff \$(merge_base_master)"
alias gdp="git diff \$(merge_base_branch)"
alias gdmn="gdm --name-only | cat"
alias gpu="git push -u origin \$(current_branch)"
alias squash="git rebase -i \$(merge_base_master)"

alias gs="git status"
alias gd="git diff --patience --indent-heuristic"
alias gl="git log"
alias gc="git commit"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias gco="git checkout"
alias ga="git add"
alias gap="git add -p"
alias gb="git branch"
alias gba="git branch -a"
alias gbm="git branch --merged"
alias gbd="git branch -d"
alias gbD="git branch -D"
alias gf="git fetch --prune --tags"
alias gpr="git pull --rebase origin master"

alias lc="wc -l"
alias stress='while [ $? -eq 0 ]; do $(fc -ln -1); done'

# for Master Password
export MP_FULLNAME="John Kenneth Steidley"

# disable bang history expansion so that I can type ! without too much fuss
setopt no_bang_hist

# display the time with seconds in the prompt
setopt PROMPT_SUBST
PROMPT='[%D{%L:%M:%S}] '$PROMPT
TMOUT=1
TRAPALRM() {
    zle reset-prompt
}

# Adds color to man pages
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
