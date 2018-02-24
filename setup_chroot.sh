#!/bash/bin
apt-get update
apt-get upgrade
mkdir -p $HOME/Downloads
wget --output-document=$HOME/Downloads/go.tar.gz https://dl.google.com/go/go1.10.linux-amd64.tar.gz
wget --output-document=$HOME/Downloads/code.deb https://go.microsoft.com/fwlink/?LinkID=760868
apt-get install vim -y
apt-get install git -y
dpkg -i $HOME/Downloads/code.deb
apt-get install -f
tar -C /usr/local -xzf $HOME/Downloads/go.tar.gz
apt-get purge -y lxc-docker* && apt-get -y purge docker.io*
apt-get update -y && apt-get install -y apt-transport-https ca-certificates
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list
apt-get update -y
apt-cache policy docker-engine
apt-get install -y linux-image-extra-$(uname -r)
apt-get install docker-engine -y
