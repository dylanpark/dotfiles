export ZSH=/Users/DPark/.oh-my-zsh

ZSH_THEME="robbyrussell"

set rnu number

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

alias gp="git pull"
alias gc="git commit"
alias gs="git status"
alias ga="git add"
alias gch="git checkout"
alias gb="git branch"
alias gr="git rebase"
alias gl="git log --oneline"

alias ~sz="source ~/.zshrc"
alias ~v="vim ~/.vimrc"
alias ~z="vim ~/.zshrc"

export PATH=/usr/local/bin:/usr/local/share/python:$PATH
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

export EDITOR=vim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
