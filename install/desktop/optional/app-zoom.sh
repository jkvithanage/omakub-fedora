# Make video calls using https://zoom.us/
cd /tmp
wget https://zoom.us/client/latest/zoom_x86_64.rpm
sudo dnf install -y ./zoom_x86_64.rpm
rm zoom_x86_64.rpm
cd -
