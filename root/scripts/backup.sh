#!/bin/bash

### ~/scripts/backup.sh ###

## DIRS ##
wsl=/root/git/debian.wsl
home=/root
wsl_home="$wsl$home"

## BASH ##
shopt -s expand_aliases
source /root/.bashrc
source /etc/profile
eval $(ssh-agent)

## SSH-AGENT ##
ssh-add ~/.ssh/BACKUP_ed25519

## COPY ##

# crontab #
crontab -l > $wsl/crontab/crontab.bak

# fstab #
cat /etc/fstab > $wsl/etc/fstab

# bash files #
install -DC $home/.bashrc $wsl_home/.bash.bak/.bashrc."$(date '+%F')".bak
find $wsl_home/.bash.bak/ -mindepth 1 -mtime +14 -delete
install -DC $home/.bashrc $wsl_home/
install -DC /etc/profile.d/* $wsl/etc/profile.d/

# scripts #
rsync -a --delete $home/scripts/ $wsl_home/scripts/
install -DC $home/.local/share/lscolors.sh $wsl_home/.local/share/

## GIT PUSH ##
cd $wsl
git pull
rm -f ./root/scripts/.backup.sh.swp ./root/scripts/..bash_aliases.swp
gogit backup.sh
rm -f ~/scripts/..bash_aliases.swp

## CRON REPORT ##
if [ "$1" = "cron" ]; then
        echo "crontab $(date '+%F %T')" >> /root/scripts/backup.log
fi

## EOF ##
