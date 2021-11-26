#!/bin/bash
cd /docker/stack-1
docker-compose down &&
	docker-compose pull radarr sonarr readarr sabnzbd jackett calibre resilio-sync flaresolverr &&
	docker-compose up -d
if [ "$1" = "cron" ]; then
        echo "crontab $(date '+%F %T')" >> /root/scripts/stack-1-update.log
fi
echo "done!"
exit 0
