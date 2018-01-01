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

# set PATH so it includes user's private bin directories
GOPATH="$HOME/go"
GOROOT="$HOME/bin/go"

PATH="$GOPATH/bin:$HOME/bin:$HOME/.local/bin:$HOME/.cargo/bin:$GOROOT/bin:$HOME/.npm-global/bin:$PATH"

export PATH GOPATH GOROOT

export PATH="$HOME/.cargo/bin:$PATH"
