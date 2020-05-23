#!/bin/bash

# __usage() {
#     echo "Usage: ${BASH_SOURCE[0]##*/} environment name | optional, default='venv'" 1>&2;
#     exit 1;
# }

# to make this work I have added an alias to it in my .bashrc ie.
# alias a=". ~/development/linux-crystals/development/activate_env.sh"

#location of repos
. ${@:-venv}/bin/activate