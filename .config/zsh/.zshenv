# Proifile file. Runs on login.
export ZDOTDIR="$HOME/.config/zsh/"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$PATH:$HOME/go/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.node_modules/bin:$PATH"
export EDITOR="nvim"
export SUDO_EDITOR=nvim
export TERMINAL="kitty"
export BROWSER="firefox"
export READER="zathura"
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# Man Colors
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Loads the Display Manager 
#if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
#  exec startx
#fi
