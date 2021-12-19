#!/bin/bash
cd /docker/stack-1
docker-compose down &&
docker-compose pull radarr sonarrime sonarr readarr lazylib sabnzbd jackett calibre resilio flaresolverr &&
docker-compose up -d &&
docker image prune -f &&
docker volume prune -f

if [ "$1" = "cron" ]; then
        echo "crontab $(date '+%F %T')" >> /root/scripts/stack-1-update.log
fi

echo "done!"
exit 0
