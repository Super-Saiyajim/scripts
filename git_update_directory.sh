#! /bin/bash
echo "this script updates your directory with git"
DIRECTORY="YOUR DIRECTORY"
if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root"
else
echo "creating alias 'git up' command"
git config --global alias.up '!git remote update -p; git merge --ff-only @{u}'
cd $Directory
git checkout master
git up
fi
exit
