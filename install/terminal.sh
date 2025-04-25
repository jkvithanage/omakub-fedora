# Needed for all installers
sudo dnf check-update
sudo dnf upgrade -y
sudo dnf install -y curl git unzip zsh

# Run terminal installers
for installer in ~/.local/share/omakub/install/terminal/*.sh; do 
    echo "Running installer: $installer"
    if [[ "$installer" == *"a-shell.sh" ]]; then
        source "$installer" || { echo "Error: a-shell.sh failed, exiting..."; exit 1; }
    else
        source "$installer" || echo "Warning: Installer $installer failed, continuing..."
    fi
done
