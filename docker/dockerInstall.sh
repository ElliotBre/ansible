
#!/bin/bash

echo running
curl -fsSl https://get.docker.com -o get-docker.sh
echo running docker script
bash get-docker.sh

sudo groupadd docker
sudo usermod -aG docker $USER
echo modded user
newgrp docker
docker run hello-world
if ! [$? -ne 0]; then
  echo success;
fi

docker rm hello-world
echo removed hello world
