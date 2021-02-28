#!/bin/zsh

__usage() {
    echo "Usage: ${BASH_SOURCE[0]##*/} [--r <repo_dir> | optional, default=~/development] [--i <ide_command> | optional, default=code]" 1>&2;
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

function projects {
    print -l $repo_path*(/:t)| grep -v -e ".archived"
}

#add aliases to all projects
while IFS= read -r d; do 
    cur_dir="${d##*/}"
    alias "${cur_dir}"="$ide $d | cd $d"
done <<<$(print -l $repo_path*(/) | grep -v -e ".archived")