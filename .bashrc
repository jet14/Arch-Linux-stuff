#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -f /usr/bin/screenfetch ]; then screenfetch; fi

alias pm='sudo pacman -Syu '
alias ref='sudo reflector -c "GB" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist '
bind '"\e[24~":"sudo pacman -Syu\n"'
bind '"\e[20~":"screenfetch\n"'
