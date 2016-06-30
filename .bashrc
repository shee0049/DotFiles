#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# bash alias's 
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias grep='grep --color=auto'
alias c='clear'

# root alias's
if [ $UID -ne 0 ]; then
	alias reboot='sudo reboot'
	alias pacS='sudo pacman -S'
	alias pacU='sudo pacman -Syu' # update alias
	alias pacR='sudo pacman -R'
    alias start='systemctl start'
    alias stop='systemctl stop'
    alias restart='systemctl restart'
    alias status='systemctl status'
    alias ftplog='sudo cat /var/log/vsftpd.log'
    alias sshlog='journalctl -u sshd.service'
fi

# auto cd when entering a path
shopt -s autocd

PS1='[\u@\h \W]\$ '
PATH=$PATH:/home/brett/.bin
