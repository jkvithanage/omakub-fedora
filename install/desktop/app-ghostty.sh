sudo dnf -y copr enable pgdev/ghostty
sudo dnf -y install ghostty
mkdir -p ~/.config/ghostty

cp ~/.local/share/omakub/configs/ghostty.config ~/.config/ghostty/config
cp ~/.local/share/omakub/themes/tokyo-night/ghostty.theme ~/.config/ghostty/theme
cp ~/.local/share/omakub/configs/ghostty/fonts/CaskaydiaMono.toml ~/.config/ghostty/font
cp ~/.local/share/omakub/configs/ghostty/font-size.toml ~/.config/ghostty/font-size
