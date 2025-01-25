# Browse the web with the most popular browser. See https://www.google.com/chrome/
cd /tmp
sudo dnf config-manager --add-repo https://dl.google.com/linux/chrome/rpm/stable/x86_64
sudo dnf install -y google-chrome-stable
xdg-settings set default-web-browser google-chrome.desktop
cd -
