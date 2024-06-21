#!/bin/bash

docker compose --ansi never run sslbot renew --dry-run && docker compose --ansi never kill -s SIGHUP nginx
docker system prune -af