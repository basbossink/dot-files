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
if [ -d "$HOME/.cabal/bin" ] ; then
    PATH="$HOME/.cabal/bin:$PATH"
fi
if [ -d "$HOME/.gem/ruby/1.8/bin" ] ; then
    PATH="$HOME/.gem/ruby/1.8/bin:$PATH"
fi
if [ -d "$HOME/.gem/ruby/1.9.0/bin" ] ; then
    PATH="$HOME/.gem/ruby/1.9.0/bin:$PATH"
fi
export PATH=/var/lib/gems/1.8/bin:$PATH
SSH_ENV="$HOME/.ssh/environment"

# start the ssh-agent
function start_agent {
  echo "Initializing new SSH agent..."
  /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
  echo succeeded
  chmod 600 "${SSH_ENV}"
  . "${SSH_ENV}" > /dev/null
  /usr/bin/ssh-add;
}

# Source SSH settings, if applicable
if [ -f "${SSH_ENV}" ]; then
  . "${SSH_ENV}" > /dev/null
  #ps ${SSH_AGENT_PID} doesn't work under cywgin
  ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
    start_agent;
  }
else
  start_agent;
fi
xrdb -merge ~/.Xresources
setxkbmap us dvorak ctrl:swapcaps terminate:ctrl_alt_bksp

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export EDITOR=vim
export VISUAL=$EDITOR
export GOPATH=~/go
export PATH=~/.cabal/bin:$PATH:~/go/bin:~/bin:~/.gem/ruby/2.1.0/bin