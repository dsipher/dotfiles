#!/bin/bash

# Load .bashrc and other files...
for file in ~/.{bashrc,functions,dockerfunc}; do
	if [[ -r "$file" ]] && [[ -f "$file" ]]; then
		# shellcheck source=/dev/null
		source "$file"
	fi
done
unset file

export EDITOR=nvim
export VISUAL=nvim
export SUDO_EDITOR=nvim
