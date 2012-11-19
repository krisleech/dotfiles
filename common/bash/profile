# .profile gets loaded before a shell terminal is started

export PATH=$PATH:/usr/local/bin:/usr/local/mysql/bin
export PATH=$PATH:/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/share/man:$MANPATH

export EDITOR=vim

alias l="ls -l"
alias ll="ls -al"
alias h="history"

# Git Aliases
alias gst='git status'

# Git branch in promopt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1="\h:\w\$(parse_git_branch) \u$ "
PS1="\$(~/.rvm/bin/rvm-prompt v p)$PS1"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.


if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

source ~/.git-flow-completion.bash
