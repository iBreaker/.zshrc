#!/usr/bin/env zsh
# 
#  @author: Breaker
#  @date: 2022/04/19 15:38
# 

for plugin ($plugins); do
  if [[ -f "$ZSH_CUSTOM_DIR/plugins/$plugin.zsh" ]]; then
    source "$ZSH_CUSTOM_DIR/plugins/$plugin.zsh"
  elif [[ -f "$ZSH_CUSTOM_DIR/plugins/$plugin/$plugin.zsh" ]]; then
    source "$ZSH_CUSTOM_DIR/plugins/$plugin/$plugin.zsh"
  elif [[ -f "$ZSH_DIR/plugins/$plugin.zsh" ]]; then
    source "$ZSH_DIR/plugins/$plugin.zsh"
  elif [[ -f "$ZSH_DIR/plugins/$plugin/$plugin.zsh" ]]; then
    source "$ZSH_DIR/plugins/$plugin/$plugin.zsh"
  fi
done
unset plugin