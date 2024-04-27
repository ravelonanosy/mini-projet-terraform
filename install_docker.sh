sudo curl -fsSL https://get.docker.com -o install-docker.sh
sudo sh install-docker.sh --dry-run
sudo sh install-docker.sh
sudo sh -c 'docker compose -f /tmp/docker-compose.yml up -d > /dev/null'
