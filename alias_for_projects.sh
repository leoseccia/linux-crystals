#!/bin/bash

__usage() {
    echo "Usage: ${BASH_SOURCE[0]##*/} [--r <repo_dir> | optional, default=~/development] [--i <ide_command> | optional, default=code]" 1>&2;
    exit 1;
}

#location of repos
declare repo_path=~/development/
#editor command
declare ide=code

while getopts ":r:i:h" arg; do
    case "${arg}" in
        r)
            repo_path=${OPTARG}
            ;;
        i)
            ide=${OPTARG}
            ;;
        h)
            __usage
            ;;
    esac
done
shift $((OPTIND-1))


shopt -s dotglob #Use shopt -u dotglob to exclude hidden directories

function projects {
    find "${repo_path}"* -maxdepth 1 -printf '%f\n' -prune -type d
}

#add aliases to all projects
while IFS= read -r d; do 
    cur_dir="${d##*/}"
    alias "${cur_dir}"="$ide $d"
done <<<$(find "${repo_path}"* -prune -type d)