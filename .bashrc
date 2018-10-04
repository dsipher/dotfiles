#!/bin/bash
# ~/.bashrc

fire(){
	sudo systemd-nspawn \
		        --setenv=DISPLAY=:0 \
			--setenv=XAUTHORITY=~/.Xauthority \
			--bind-ro=$HOME/.Xauthority:/root/.Xauthority \
			--bind=/tmp/.X11-unix \
			-UD ~/container/firefox \
			firefox

}

signal(){
	sudo systemd-nspawn \
         	        --setenv=DISPLAY=:0 \
			--setenv=XAUTHORITY=~/.Xauthority \
			--bind-ro=$HOME/.Xauthority:/root/.Xauthority \
			--bind=/tmp/.X11-unix \
			-UD /var/lib/machines/signal \
			signal-desktop

}
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='\u \w\$ ' 
#PS1='\e[1;35m\u\e[0m at \e[1;32m\h\e[0m \e[1;33min \w\e[0m \e[1;36m\d\e[0m \e[1;34m\t\e[0m \n ' 

alias status='systemctl status'
alias auditit='auditctl -a exit,always -F arch=b64 -S all'
alias ls='ls --color=always'
alias ll='ls -l --color=always'
alias grep='grep --color'
alias img='docker image'
alias vim='nvim'

# Load .bashrc and other files...
for file in ~/.{functions,dockerfunc}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		# shellcheck source=/dev/null
		source "$file"
	fi
done
unset file
