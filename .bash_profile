#!/bin/bash

# Load files
for file in ~/.{bashrc,func,container}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		# shellcheck source=/dev/null
		source "$file"
	fi
done
unset file

# Environment
export EDITOR=nvim
export VISUAL=nvim
export SUDO_EDITOR=nvim

export GOPATH="$HOME/go"
export PATH="$PATH:$HOME/go/bin"
