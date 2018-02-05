# $OpenBSD: dot.profile,v 1.4 2005/02/16 06:56:57 matthieu Exp $
#
# sh/ksh initialization
# Set xcursor preferences
XCURSOR_THEME=redglass
XCURSOR_SIZE=64
XCURSOR_PATH=${HOME}/.icons:/usr/local/lib/X11/icons

GOPATH=${HOME}/go

PATH=${HOME}/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games
export PATH HOME TERM XCURSOR_THEME XCURSOR_SIZE XCURSOR_PATH GOPATH

export PATH=${PATH}:$(go env GOPATH)/bin

alias daos=doas
alias pgk_add=pkg_add
alias pgk_info=pkg_info
alias gti=git
alias ll='ls -l'
alias la='ls -a'
alias laf='ls -af'
alias lal='ls -al'
alias cd..='cd ..'
alias cd...='cd ../..'
alias lh='ls -hl'
alias lah='ls -ahl'
