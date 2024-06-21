export NGINX_TEMPLATE_DIR=./nginx-ssl
export CERTBOT_COMMAND_FLAG=force-renewal

docker compose pull
docker compose down
docker compose rm -f
docker volume rm -f $(docker volume ls -q | grep frontend)
docker compose up -d
