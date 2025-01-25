# Add Signal repository for Fedora
sudo dnf config-manager --add-repo https://updates.signal.org/desktop/rpm/repodata/repomd.xml
sudo rpm --import https://updates.signal.org/desktop/rpm/keys.asc
sudo dnf install -y signal-desktop
