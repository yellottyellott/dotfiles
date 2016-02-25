ZSH=$HOME/.oh-my-zsh
DOTFILES=$HOME/.dotfiles

alias zshconfig="vim ~/.zshrc"
alias code="cd ~/Code"
alias l="ls -lah"
alias nuke="find . -name \*.orig -delete -o -name \*.pyc -delete -o -name .cache -delete"
alias serve="python -m SimpleHTTPServer"

alias au="find . -name "
alias ag="noglob ag"
alias git="noglob git"

alias py3=python3
alias py=ipython
alias startproject='django-admin.py startproject --template=https://github.com/yellottyellott/django-template/zipball/master --extension=py,rst,md'

alias fab="nocorrect fab"
alias todo="mate ~/Google\ Drive/TODO.md"

DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git fabric virtualenvwrapper)

ZSH_THEME="erick"

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh/site-functions/_aws

export PATH=/usr/local/share/npm/bin:/usr/local/sbin:$PATH
export PYTHONDONTWRITEBYTECODE=1
export GOPATH=/Users/yellottyellott/.go
export PGDATA=/usr/local/var/postgres
export EDITOR=vim
export AWS_ACCESS_KEY_ID=$(grep aws_access_key_id ~/.aws/credentials | tr -d ' ' | sed s/aws_access_key_id=//g)
export AWS_SECRET_ACCESS_KEY=$(grep aws_secret_access_key ~/.aws/credentials | tr -d ' ' | sed s/aws_secret_access_key=//g)

bindkey "^[^[[D" backward-word
bindkey "^[^[[C" forward-word

bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

cd .
