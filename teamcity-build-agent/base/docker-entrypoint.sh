#!/usr/bin/env bash

sudo service docker start
sudo service docker status
# configure git
git config --global user.email "buildagent@teamcity"
git config --global user.name "TC BuildAgent"
# disable known hosts checks # https://www.jetbrains.com/help/teamcity/ssh-agent.html#Disabling+SSH+Host+Key+Checking
mkdir -p ~/.ssh
cat << EOF > ~/.ssh/config
Host *
    StrictHostKeyChecking no
EOF
exec $@
