# Adin's Bash Aliases
echo "Adin's aliases are ready to go"
source /home/adin/.rc/bash_utils

# rc Aliases
alias bashrc='vim /home/adin/.rc/bashrc'
alias aliases='vim /home/adin/.rc/bash_aliases'
alias srcrc='source /home/adin/.rc/bashrc'
alias vimrc='vim /home/adin/.rc/vimrc'

# WSL Ubuntu Aliases
alias "C:"='cd /mnt/c/Users/adinb/'
alias openboi='cmd.exe /C start'

# Hyper Aliases
alias hyper='cmd.exe /c hyper'

# Drexel Aliases
alias tux='ssh abs358@tux.cs.drexel.edu'
function tux-fetch {
	mkdir -p from_tux
	sftp abs358@tux.cs.drexel.edu:/home/abs358/"$1" from_tux/
}
function tux-send {
	# TODO: figure out how to makedir from_me if it's not there
	echo "put $1 /home/abs358/from_me/" | sftp abs358@tux.cs.drexel.edu 
}

# Safety Aliases
function backup {
	cp $1 "$1".backup_$(date +%F_%T)
}
function backup-restore {
	for backup in $(ls -A1 "$1".backup_*); do
		mv $backup $1
	done
}
alias backup-clear='ls -A1 | grep ".backup_" | xargs rm'

# General  Aliases
alias ll='ls -lp1h'
alias la='ls -A1ph'

# Python Aliases
alias python='python3'
alias pip='pip3'
function py-venv {
	[ -z $1 ] $$ deactivate
	case "$1" in
		QC)
			source /home/adin/Drexel/QuantumComputing/venv-QC/bin/activate
			return
			;;
		*)
			# TODO: make venv and add it to the gitignore if it's inside /home/adin/Drexel
			;;
	esac
}

