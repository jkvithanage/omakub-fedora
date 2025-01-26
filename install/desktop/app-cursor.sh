# Install LocalSend for local file sharing
cd /tmp
CURSOR_LINK=$(curl -s -X POST -H "Content-Type: application/json" -d '{"platform": 5}' "https://www.cursor.com/api/dashboard/get-download-link" | jq -r '.cachedDownloadLink')
wget -O cursor.AppImage $CURSOR_LINK
chmod +x cursor.AppImage
mkdir -p ~/.local/bin
mv cursor.AppImage ~/.local/bin/cursor

# Configure Cursor
mkdir -p ~/.config/Cursor/User
cp ~/.local/share/omakub/configs/cursor.json ~/.config/Cursor/User/settings.json

if [[ -d ~/.local/share/applications ]]; then
	source ~/.local/share/omakub/applications/Cursor.sh
fi

# Install default supported themes
# TODO: Enable this once we have a working cli
# ~/.local/bin/cursor --install-extension enkia.tokyo-night
cd -