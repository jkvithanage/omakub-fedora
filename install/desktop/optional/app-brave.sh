# Add Brave browser repository for Fedora
sudo dnf config-manager addrepo --from-repofile=https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo

# Install Brave browser
sudo dnf install -y brave-browser
