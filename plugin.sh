#!/usr/bin/env zsh
# 
#  @author: Breaker
#  @date: 2022/04/19 15:38
# 

for plugin ($plugins); do
  if [[ -f "$ZSH_CUSTOM_PATH/plugins/$plugin.zsh" ]]; then
    source "$ZSH_CUSTOM_PATH/plugins/$plugin.zsh"
  elif [[ -f "$ZSH_CUSTOM_PATH/plugins/$plugin/$plugin.zsh" ]]; then
    source "$ZSH_CUSTOM_PATH/plugins/$plugin/$plugin.zsh"
  elif [[ -f "$ZSH_PATH/plugins/$plugin.zsh" ]]; then
    source "$ZSH_PATH/plugins/$plugin.zsh"
  elif [[ -f "$ZSH_PATH/plugins/$plugin/$plugin.zsh" ]]; then
    source "$ZSH_PATH/plugins/$plugin/$plugin.zsh"
  fi
done
unset plugin