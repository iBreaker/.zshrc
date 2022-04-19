
for plugin ($plugins); do
  if [[ -f "$ZSH_CUSTOM_DIR/plugins/$plugin.zsh" ]]; then
    source "$ZSH_CUSTOM_DIR/plugins/$plugin.zsh"
  elif [[ -f "$ZSH_DIR/plugins/$plugin.zsh" ]]; then
    source "$ZSH_DIR/plugins/$plugin.zsh"
  fi
done
unset plugin