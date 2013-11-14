export ZSH=$HOME/.oh-my-zsh
export ZSH_THEME="gallois"

export EDITOR=/usr/bin/vim
export TERM=xterm-256color
export LC_CTYPE=en_GB.UTF-8

plugins=(git)
source $ZSH/oh-my-zsh.sh

# Java / Torquebox / JRuby
export JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java_home`
export ECLIPSE_HOME=/Applications/eclipse

export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/mysql/bin:/opt/local/bin:/opt/local/sbin:/Users/kris/.rvm/bin:$JRUBY_HOME/bin:$PATH

# fix rvm with zsh
unsetopt auto_name_dirs

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  

# Allow rvm to work with iTerm2
__rvm_project_rvmrc
# Enable RVM cd functionality
export rvm_project_rvmrc=1

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# path to gem executables for system Ruby
PATH=/usr/local/Cellar/ruby/1.9.3-p194/bin:$PATH

# Run an ClamAV scan on Downloads
alias avdown="freshclam --quiet; clamscan -r -i ~/Downloads | grep Infected"

# Set correct term for tmux so solarized theme works in vim
alias tmux="TERM=screen-256color-bce tmux"
# old skool BASIC style
alias cls='clear'

# postrgres

alias start_postgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"

# prevent zsh: no matches found
alias rake='noglob rake'

# General aliases
source ~/.aliases

# Project aliases
source ~/.projects

# Tokens and the like
source ~/.private

# Set vi mode, ESC will allow hjkl movements
set -o vi

# https://github.com/clvv/fasd
# eval "$(fasd --init auto)"

# Ctrl+R searches history
bindkey '^R' history-incremental-search-backward
