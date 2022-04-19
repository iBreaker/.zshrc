#!/usr/bin/env zsh
# 
#  @author: Breaker
#  @date: 2022/04/19 15:38
# 


if [[ "$OSTYPE" = darwin* ]]; then
  alias ls='ls -G'
else
  alias ls='ls --color'
fi