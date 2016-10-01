docker pull selenium/hub:2.53.1
docker pull selenium/node-chrome-debug:2.53.1
docker run -d -P --name selenium-hub selenium/hub:2.53.1
docker run -d -P --name sekeniun-chrome --link selenium-hub:hub selenium/node-chrome-debug:2.53.1
ip=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' selenium-hub)
port=$(docker inspect --format='{{ if index .NetworkSettings.Ports "4444/tcp" }}{{(index (index .NetworkSettings.Ports "4444/tcp") 0).HostPort}}{{ end }}' selenium-hub)
export SELENIUM_HUB_PORT=$port
export SELENIUM_HUB_IP=$ip
