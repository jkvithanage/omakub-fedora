# Install LocalSend for local file sharing
cd /tmp
LOCALSEND_VERSION=$(curl -s "https://api.github.com/repos/localsend/localsend/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
wget -O localsend.AppImage "https://github.com/localsend/localsend/releases/latest/download/LocalSend-${LOCALSEND_VERSION}-linux-x86-64.AppImage"
chmod +x localsend.AppImage
mkdir -p ~/.local/bin
mv localsend.AppImage ~/.local/bin/localsend
cd -
