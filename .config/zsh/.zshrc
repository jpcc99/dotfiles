#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|

# Prompt
eval "$(starship init zsh)"
RPROMPT='%T'

# Term title
function precmd() {
	print -Pn '\e]2;%n@%m %~\a'
}
function chpwd() {
	print -Pn '\e]2;%n@%m %~\a'
}

# History
HISTFILE=~/.cache/zsh/zhistfile
HISTSIZE=100000
SAVEHIST=$HISTSIZE

# Autocompletion
autoload -Uz compinit
compinit
zmodload -i zsh/complist
zstyle ":completion:*" menu select

# Options
setopt appendhistory 
setopt autocd 
setopt notify
setopt correct
setopt histignoredups
setopt histignorespace
setopt noclobber

# Vi mode
bindkey -v
export KEYTIMEOUT=1

# Aliases
source ~/.config/aliasrc

# asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash


# Antibody (Plugins)
source <(antibody init)
antibody bundle < ~/.config/zsh/zsh_plugins.txt
