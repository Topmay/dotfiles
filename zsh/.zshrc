#Export
export EDITOR="nvim"
export VISUAL="nvim"

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=300
SAVEHIST=1000
setopt autocd
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arnav/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#Plugins
 source ~/git/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
 source ~/git/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
 source ~/git/zsh/powerlevel10k/powerlevel10k.zsh-theme
source  ~/git/zsh/ohmyzsh/plugins/sudo/sudo.plugin.zsh
#To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

#Aliases
alias ls='exa -la --color=always --group-directories-first'
alias vim='nvim'
alias brave='brave-browser'
alias cd..='cd ..'
alias inst='sudo dnf install'
alias uninst='sudo dnf remove'
alias upd='flatpak update && sudo dnf up'
alias clean='sudo dnf autoremove && sudo dnf clean all && flatpak remove --unused'
alias pfetch='~/pfetch'
alias enter='distrobox enter'
alias stop='distrobox stop'
