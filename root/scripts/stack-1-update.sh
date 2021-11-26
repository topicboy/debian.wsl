#!/bin/bash
cd /docker/stack-1
docker-compose down &&
	docker-compose pull radarr sonarr readarr sabnzbd jackett calibre resilio-sync flaresolverr &&
	docker-compose up -d


echo "done!"
exit 0
