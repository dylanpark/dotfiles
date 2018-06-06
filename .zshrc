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

alias front="make build-client-dev-loop"
alias stop="~/trifacta/bin/service.py --stop_all"
alias serve="~/trifacta/bin/service.py --init --start proxy webapp vfs-service batch-job-runner data-service scheduling-service"
alias ~fe="cd ~/floating-elephants"
alias ~sz="source ~/.zshrc"
alias ~v="vim ~/.vimrc"
alias ~z="vim ~/.zshrc"
alias ~t="cd ~/trifacta"
alias ~w="cd ~/trifacta/webapp"
alias wscj="cd ~/trifacta/webapp/src/client/js"
alias wcsj="cd ~/trifacta/webapp/src/client/js"

export PATH=/usr/local/bin:/usr/local/share/python:$PATH
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export TRIFACTA_CONF="$HOME/trifacta/conf/"

if [[ -z "$DOCKER_HOST" ]]; then
  eval $(docker-machine env dev)
fi
function hdfs {
  docker exec -it cdh5_hdfsnamenode_1 sudo -u hdfs hdfs $@
}
alias hdfs='hdfs dfs -rm -r /trifacta /user/trifacta /tmp; hdfs dfs -mkdir /trifacta /user/trifacta /tmp; hdfs dfs -chown trifacta:trifacta /trifacta /user/trifacta /tmp; hdfs dfs -chmod -R 777 /'
eval $(docker-machine env dev)
export PATH="$PATH:/opt/trifacta/arcanist/bin"
export EDITOR=vim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
