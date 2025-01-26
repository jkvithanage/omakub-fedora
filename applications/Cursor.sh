cat <<EOF >~/.local/share/applications/Cursor.desktop
[Desktop Entry]
Version=1.0
Name=Cursor
Comment=Cursor
Exec=/home/$USER/.local/cursor
Terminal=false
Type=Application
Icon=/home/$USER/.local/share/omakub/applications/icons/Cursor.png
Categories=GTK;
StartupNotify=false
EOF
