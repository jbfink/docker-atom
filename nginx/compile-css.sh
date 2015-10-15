add-apt-repository ppa:chris-lea/node.js
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get -y install nodejs make
npm install -g "less@<2.0.0"
cd /usr/share/nginx/atom/plugins/arDominionPlugin/
make # At this point the files still belong to root
