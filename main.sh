#!/bin/bash

# export LC_CTYPE="UTF-8"

echo '[+] Initializing local clock'
ntpdate -B -q 0.debian.pool.ntp.org
source /usr/local/rvm/scripts/rvm
echo '[+] Initializing postgres'
service postgresql start
echo '[+] Initializing tor'
service tor start

#echo '[+] Updating msf'
#/opt/msf/msfupdate --git-branch master

echo '[+] Well done, enjoy your shell'
#tmux new-session  "msfconsole; read"
msfconsole; read

