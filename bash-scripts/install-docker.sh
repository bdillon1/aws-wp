sudo apt-get update
sudo apt-get install \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual -y
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce -y
sudo sh -c 'curl -L https://github.com/docker/compose/releases/download/1.12.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose'
sudo chmod +x /usr/local/bin/docker-compose
sudo groupadd docker
sudo usermod -aG docker $USER
