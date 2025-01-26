cat <<EOF >~/.local/share/applications/Cursor.desktop
[Desktop Entry]
Version=1.0
Name=Cursor
StartupWMClass=cursor
Comment=Cursor
Exec=/home/$USER/.local/bin/cursor.AppImage
Terminal=false
Type=Application
Keywords=Cursor;cursor
Icon=/home/$USER/.local/share/omakub/applications/icons/Cursor.png
Categories=GTK;
StartupNotify=false
EOF
