#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.config/aliasrc    ]] && source ~/.config/aliasrc
[[ -f ~/.config/functionrc ]] && source ~/.config/functionrc

PS1='[\u@\h \W]\$ '
