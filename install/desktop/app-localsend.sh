# Install LocalSend for local file sharing
cd /tmp
LOCALSEND_VERSION=$(curl -s "https://api.github.com/repos/localsend/localsend/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
wget -O localsend.rpm "https://github.com/localsend/localsend/releases/latest/download/LocalSend-${LOCALSEND_VERSION}-linux-x86-64.rpm"
sudo dnf install -y ./localsend.rpm
rm localsend.rpm
cd -
