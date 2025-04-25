set -e

ascii_art='________                  __        ___.
\_____  \   _____ _____  |  | ____ _\_ |__
 /   |   \ /     \\__   \ |  |/ /  |  \ __ \
/    |    \  Y Y  \/ __ \|    <|  |  / \_\ \
\_______  /__|_|  (____  /__|_ \____/|___  /
        \/      \/     \/     \/         \/
'

echo -e "$ascii_art"
echo "=> Omakub is for fresh Fedora installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo dnf check-update >/dev/null
sudo dnf install -y git >/dev/null

# echo "Copying Omakub files..."
# rm -rf ~/.local/share/omakub
# mkdir -p ~/.local/share/omakub
# cp -r ./* ~/.local/share/omakub/

echo "Cloning Omakub..."
rm -rf ~/.local/share/omakub
git clone https://github.com/jkvithanage/omakub-fedora.git ~/.local/share/omakub >/dev/null
if [[ $OMAKUB_REF != "master" ]]; then
	cd ~/.local/share/omakub
	git fetch origin "${OMAKUB_REF:-stable}" && git checkout "${OMAKUB_REF:-stable}"
	cd -
fi

echo "Installation starting..."
source ~/.local/share/omakub/install.sh

echo "Omakub installation complete!"