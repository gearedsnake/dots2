#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias smci='sudo make clean install'
alias tsh='mv -t ~/.trash'
export PF_COL1=1
export PF_COL2=15
export PF_COL3=1
pfetch
export PATH="$HOME/bin:$PATH"
PS1='[\u@\h \W]\$ '
