if command -v ~/.local/bincursor &>/dev/null; then
  ~/.local/bin/cursor --install-extension $VSC_EXTENSION >/dev/null
  sed -i "s/\"workbench.colorTheme\": \".*\"/\"workbench.colorTheme\": \"$VSC_THEME\"/g" ~/.config/Cursor/User/settings.json
fi
