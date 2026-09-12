#
# ~/.bashrc
#

fastfetch --logo ~/.dotfiles/logo.txt --logo-print-remaining true

eval "$(starship init bash)"

export EDITOR='nvim'
export VISUAL='nvim'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

export YDOTOOL_SOCKET='/run/ydotoold.socket'
