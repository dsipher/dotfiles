#!/bin/bash
# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1='\u \w\$ ' 

# Aliases
alias vim='nvim'
alias status='systemctl status'
#alias auditit='auditctl -a exit,always -F arch=b64 -S all'

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias grep='grep --color'
alias ip='ip -c'

# Load .bashrc and other files...
for file in ~/.{func,container}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		# shellcheck source=/dev/null
		source "$file"
	fi
done
unset file
