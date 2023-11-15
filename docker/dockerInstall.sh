
#!/bin/bash

curl -fsSl https://get.docker.com -o get-docker.sh
bash get-docker.sh

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
