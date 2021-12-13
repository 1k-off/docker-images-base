#!/usr/bin/env bash
sudo service docker start
sudo service docker status
git config --global user.email "buildagent@teamcity"
git config --global user.name "TC BuildAgent"
yes | sdkmanager --sdk_root=/opt/android/ --licenses
exec $@
