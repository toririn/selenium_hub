ip=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' selenium-hub)
port=$(docker inspect --format='{{ if index .NetworkSettings.Ports "4444/tcp" }}{{(index (index .NetworkSettings.Ports "4444/tcp") 0).HostPort}}{{ end }}' selenium-hub)
export SELENIUM_HUB_PORT=$port
export SELENIUM_HUB_IP=$ip
echo "set: SELENIUM_HUB_PORT=$port, SELENIUM_HUB_IP=$ip"
