#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

PATH=${HOME}/.local/bin:${PATH}

eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/config.omp.json)"
