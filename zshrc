export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="jreese"
plugins=(rails git ruby textmate)
source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# some utf-8 support
export locale=en_US.UTF-8
alias ls='ls -Gw'
alias ll='ls -Glw'         # standard vertical listing
alias la='ls -GAlw'        # show hidden files

# point java_home to system java
# export JAVA_HOME=$(/usr/libexec/java_home)

# aliases
alias -g be='bundle exec'
alias -g sudo='nocorrect sudo'
alias -g cay='cd ~/dev/cayenne'
alias -g vundleinstall='vim +BundleInstall +qall'

# $1 search
# $2 replace
prjreplace() {
  ack -l "$1" | xargs perl -pi -E "s/$1/$2/g"
}

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line

source ~/.paths

# Aliases
source ~/.localrc
