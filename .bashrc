#
# ~/.bashrc
#

# If not running interactively, don't do anything
 
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#xbacklight -set 50

screenfetch

alias pm='sudo pacman -Syu '
alias ref='sudo reflector -c "GB" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist'
bind '"\eOP":"clear\n"'
bind '"\eOQ":"sh ./system_info.sh\n"'
bind '"\eOR":"sh ./menu.sh\n"'
bind '"\eOS":"sh ./menu2.sh\n"'
bind '"\e[15~":"sh ./menu3.sh\n"'
bind '"\e[17~":"sudo sensors; sudo hddtemp /dev/sda1\n"'
bind '"\e[18~":"sudo systemd-analyze\n"'
bind '"\e[19~":"sudo systemd-analyze blame\n"'
bind '"\e[20~":"screenfetch\n"'
bind '"\e[24~":"sudo pacman -Syu\n"'




  
