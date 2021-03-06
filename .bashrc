alias grep='grep --color=always'
alias rgrep='rgrep --color=always'
alias less='less -R'
alias diff="diff --exclude .svn"
alias up="sudo apt-get update && sudo apt-get dist-upgrade"
alias svni="svn --ignore-externals"
alias ll="ls -al"

alias dock="sudo docker ps -a"

#export PS1='\[\033[0;32m\]{\[\033[0;37m\]\t\[\033[0;32m\]}\[\033[0;34m\][\[\033[0;m\]\u\[\033[0;31m\]@\[\033[0;m\]\h\[\033[0;34m\]]\[\033[1;35m\](\w)\[\033[0;m\] \n#'

export PS1='\[\033[0;32m\]{\[\033[0;37m\]\t\[\033[0;32m\]}\[\033[0;34m\][\[\033[0;m\]\u\[\033[0;31m\]@\[\033[0;m\]\h\[\033[0;34m\]]\[\033[1;35m\](\w)\[\033[0;m\] \n#'

svndiff()
{
  svn diff "${@}" | colordiff
}

gitdiff() {
   git diff $@ | colordiff
}

gitsub() {
   git submodule init
   git submodule update
}

cleandock() {
	docker stop $(docker ps -a -q)
	docker rm $(docker ps -a -q)
}


. /usr/share/powerline/bindings/bash/powerline.sh
