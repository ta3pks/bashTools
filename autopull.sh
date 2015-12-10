#!/bin/bash
#check if git is installed
$(hash git) &>/dev/null
if [[ $? != 0 ]];then
printf "\033[31mGit is not installed.Please install to continue\033[0m\n"
exit
#else
#printf "\033[32mAll dependencies are satisfied\033[0m\n"
fi;

while [[ $# >0 ]] ;do
if [[ -d $1 ]];then
cd $1
echo -e "\033[32mPulling repo for $1\033[0m"
git pull
else
echo -e "\033[31No such file:\033[0m$1"
shift
done
