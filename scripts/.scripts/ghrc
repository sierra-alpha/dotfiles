#!/bin/bash

# ghrc = git hub repo create
# uses github api to create a new repo using https
# some files need to be comitted to the local for push command to succeed

function welcome () {
    echo "Welcome to the GitHub Repository Creator"
    echo -e "This will create a new repo on GitHub for you\n"
}

function help_me() {
    echo -e "Usage: ghrc <username> <reponame> -p -d <description>\n"
    echo "-p                = use this option to set github repo as private"
    echo "-d (optional)     = a description and requires a description after it\n"
    echo "-h                = Displays this help message"
}

function github_repo_create() {
    local arg_len user dirty reponame private description curltext OPTIND=1

    arg_len=$#

    user=$1
    reponame=$2
    shift 2
    private=""
    description=""

    while getopts ':d:hp' options; do
	case $options in
	    p )
		if [[ $arg_len -ge 2 ]]; then
		    private=", \"private\":\"true\""
		fi
		;;
	    d )
		if [[ $arg_len -ge 2 ]]; then
		    echo "${OPTARG}"
		    description=", \"description\":\"${OPTARG}\""
		fi
		;;
	    h )
		welcome
		help_me
		return
		;;
	    \? )
		if [[ $arg_len -ge 2 ]]; then
		    echo "Unrecognised options"
		    help_me
		    return
		fi
		;;
	    : )
		if [[ $arg_len -ge 2 ]]; then
		    echo "Invalid option: $OPTARG requires an argument"
		    help_me
		    return
		fi
		;;
	esac
    done

    if [[ $arg_len -lt 2 ]]; then
	echo "Not enough arguments passed"
	help_me
	return
    fi

    echo "User: $user Repo Name: $reponame options: $private $description"
    echo "Private token for GitHub user"
    read -s dirty
    curltext="curl -u '${user}':'${dirty}' https://api.github.com/user/repos -d '{\"name\":\"${reponame}\"${private}${description} }'"
    echo -e "Curling now:\n"#$curltext # Uncomment this to see whats curling for debugging
    eval $curltext
}

github_repo_create "$@"
