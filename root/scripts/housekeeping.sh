#!/bin/bash
if [ "$1" = "cron" ]; then
	echo "crontab $(date '+%F %T')" >> /root/scripts/housekeeping.log
fi
sudo apt update && sudo apt upgrade -y
