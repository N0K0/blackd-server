# BlackD server

Python linter Black server container

Just a dead simple container image with what you need to run the python black linter daemon, blackd

```
podman run -d -p 45474:45474 --name blackd n0k0/blackd-server
podman generate systemd blackd --new --name > /tmp/blackd.service

sudo mv /tmp/blackd.service /etc/systemd/system/

podman stop blackd
podman rm blackd

sudo systemctl daemon-reload
sudo systemctl enable blackd
sudo systemctl start blackd


```