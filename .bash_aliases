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

installdocker-ce() {
	sudo apt-get install apt-transport-https ca-certificates curl software-properties-common vim-syntax-docker
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
	sudo apt-key fingerprint 0EBFCD88
	sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
	sudo apt-get update && sudo apt-get install docker-ce
}


installcomposer() {
	if [ ! -f /usr/local/bin/docker-compose ];
	then
		sudo curl -sS -L https://github.com/docker/compose/releases/download/1.15.0/docker-compose-`uname -s`-`uname -m` |sudo tee /usr/local/bin/docker-compose >/dev/null
		sudo chmod +x /usr/local/bin/docker-compose
	else
		echo "Composer already installed";
	fi

}

installotp() {
	sudo apt-get install libpam-google-authenticator
}

#. /usr/share/powerline/bindings/bash/powerline.sh
