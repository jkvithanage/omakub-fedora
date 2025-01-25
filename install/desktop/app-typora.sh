# Add Typora repository for Fedora
sudo dnf config-manager --add-repo https://typora.io/linux/Typora-fedora.repo
sudo dnf install -y typora

# Add iA Typora theme
mkdir -p ~/.config/Typora/themes
cp ~/.local/share/omakub/configs/typora/ia_typora.css ~/.config/Typora/themes/
cp ~/.local/share/omakub/configs/typora/ia_typora_night.css ~/.config/Typora/themes/
