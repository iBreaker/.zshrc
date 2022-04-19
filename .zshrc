#!/usr/bin/env zsh
# 
#  @author: Breaker
#  @date: 2022/04/19 15:38
# 


ZSH_PATH="$HOME/zshrc"
ZSH_USER_PATH="$HOME/.zsh_path"

# ZSH_CUSTOM_DIR=""

[[ -f "$ZSH_USER_PATH" ]] && source "$ZSH_USER_PATH"

for config_file ("$ZSH_PATH"/lib/*.zsh); do
  custom_config_file="$ZSH_CUSTOM_DIR/lib/${config_file:t}"
  [[ -f "$custom_config_file" ]] && config_file="$custom_config_file"
  source "$config_file"
done
unset custom_config_file


plugins=(
  alias 
  autojump 
  git 
  zsh-autosuggestions 
  zsh-syntax-highlighting 
  zsh-history-substring-search
  sudo
  )
source $ZSH_PATH/plugin.sh
source $ZSH_PATH/theme.sh