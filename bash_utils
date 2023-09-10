#!/bin/bash

# catrange echoes line $1 to $2 (inclusive) of file $3
catrange(){
        head -n $2 $3 | tail -n $(( $2 - $1 + 1))
}

# Simple file backups when doing potentially unsafe things
function backup-file {
	cp $1 "$1".backup_$(date +%F_%T)
}
function backup-file-restore {
	for backup in $(ls -A1 "$1".backup_*); do
		mv $backup $1
	done
}
alias backup-file-clear='ls -A1 | grep ".backup_" | xargs rm'
