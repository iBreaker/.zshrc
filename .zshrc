autoload colors
colors

autoload -Uz compinit
compinit


ZSH_DIR="$HOME/zshrc"
# ZSH_CUSTOM_DIR=""

for config_file ("$ZSH_DIR"/lib/*.zsh); do
  custom_config_file="$ZSH_CUSTOM/lib/${config_file:t}"
  [[ -f "$custom_config_file" ]] && config_file="$custom_config_file"
  source "$config_file"
done
unset custom_config_file


plugins=(alias autojump git)
source $ZSH_DIR/plugin.sh
source $ZSH_DIR/theme.sh