#!/usr/bin/env zsh
# 
#  @author: Breaker
#  @date: 2022/04/19 15:36
# 


# 设置颜色
autoload colors
colors

# 导入 compinit
autoload -Uz compinit
compinit

# PROMPT 函数调用, 开启后PROMPT中的函数才会被调用
setopt PROMPT_SUBST