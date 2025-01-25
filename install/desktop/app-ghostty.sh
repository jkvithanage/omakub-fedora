sudo dnf -y copr enable pgdev/ghostty
sudo dnf -y install ghostty
mkdir -p ~/.config/ghostty
cp ~/.local/share/omakub/configs/ghostty/config ~/.config/ghostty/config
