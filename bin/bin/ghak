#!/bin/bash

# ghak = git hub add key (public) 
# uses github api to add a public key to GH

function welcome () {
    echo "Welcome to the GitHub public key adder"
    echo -e "This will add a new public key to GH for you"
}

function help_me() {
    echo -e "Usage: ghak <username> <public key file>\n" 
}

function github_add_key() {
    local user dirty pubkey OPTIND=1

    arg_len=$#

    user=$1
    pubkey=$2

    if [[ $arg_len -lt 2 ]]; then
	      echo "Not enough arguments passed"
	      help_me
	      return
    fi

    echo "Private token for GitHub user"
    read -s dirty
    curl -u "$user":"$dirty" -X POST -H "Accept: application/vnd.github.v3+json" https://api.github.com/user/keys -d '{"tile":"devtest", "key":"'"$(cat "$pubkey")"'"}'
}

github_add_key "$@"
