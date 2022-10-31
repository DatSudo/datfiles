# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

PLUGINS="$ZDOTDIR/plugins"
PROMPTS="$ZDOTDIR/prompts"

# Import files
[ -f "$ZDOTDIR/.zshenv"         ]; source $ZDOTDIR/.zshenv
[ -f "$HOME/.config/aliasrc"    ]; source $HOME/.config/aliasrc
[ -f "$HOME/.config/functionrc" ]; source $HOME/.config/functionrc

# -- Lines configured by zsh-newuser-install
HISTFILE=~/.local/state/zsh/history/.histfile
HISTSIZE=10000
SAVEHIST=10000

# Change dir just by typing dirname
setopt autocd

# Turn off error beep
unsetopt beep

# Set Vi keymap
bindkey -v
# -- End of lines configured by zsh-newuser-install

# -- The following lines were added by compinstall
zstyle :compinstall filename '/home/datsudo/.config/zsh/.zshrc'

autoload -Uz compinit
compinit
# -- End of lines added by compinstall

# -- Add plugins
[ -f "$PLUGINS/dirhistory.zsh" ] && source $PLUGINS/dirhistory.zsh
[ -f "$PLUGINS/fzf-tab/fzf-tab.plugin.zsh" ] && source $PLUGINS/fzf-tab/fzf-tab.plugin.zsh 
[ -f "$PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
[ -f "$PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f "$PLUGINS/powerlevel10k/powerlevel10k.zsh-theme" ]; source $PLUGINS/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh
