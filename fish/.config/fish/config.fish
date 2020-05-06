set -g -x EDITOR /usr/bin/vim
set -g -x PATH $HOME/bin $HOME/.gem/ruby/*/bin/ $HOME/go/bin/ /usr/local/sbin $PATH
set -g -x LC_ALL en_US.UTF-8

alias gf="git fetch"
alias gs="git status"
alias gr="git rebase -p"
alias gu="git fetch; git rebase -p; git status"
alias gid="cd ~/grab/gid-ws-poc"

ssh_agent_start
