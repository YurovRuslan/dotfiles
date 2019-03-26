# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

ssh-add /home/yurov/id_rsa
setxkbmap -layout "us,ru" -option "grp:caps_toggle,grp_led:scroll,compose:ralt"

# Useful for debugging
alias debug="set -o xtrace"

DPDK_PATH=/home/yurov/cpp/dpdk-17.08/build/
export P7_DIR=/home/yurov/netdike/common/libP7

# Proxy
if [ -f $HOME/.proxy ]; then
    . $HOME/.proxy
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

export PATH=$PATH:/usr/sbin
export GOPATH=$HOME/go

alias gitlog='git log --graph --oneline --decorate --date=relative --all'

alias hibernate='sudo systemctl hibernate'
alias nut='cd /home/yurov/netdike/main/nut'
alias click='cd /home/yurov/netdike/main/click'
alias configs='cd /home/yurov/netdike/main/configs'
