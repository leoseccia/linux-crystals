# LINUX Crystals

## Installation

Each script can be run directly using `source ~/path_to_this_project/script_name.sh`.

To run all scripts, just run `source ~/path_to_this_project/run_all.sh`

### Autorun 

To run automatically at startup just add `source ~/path_to_this_project/run_all.sh` or each script you would like to run, to your `~/.bashrc` or other shell startup script.

## Scripts

### Alias to your repos

`alias_for_projects.sh`

This script creates an alias for each repo directory in `repo_dir`, so that each one can then be launched by directory name.

It also adds the `projects` command, which lists all aliases created.

#### Usage

`alias_for_projects.sh [--r repo_dir | optional, default=~/development] [--i ide_command | optional, default=code]`

#### Parameters

`repo_dir` => directory where you keep all your repositories | default is `~/development`

`ide_command` => the command to run your code editor | default is `code` for VSCode
