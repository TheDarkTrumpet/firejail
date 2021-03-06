# Firejail profile for mousepad
# Description: Simple Xfce oriented text editor
# This file is overwritten after every install/update
# Persistent local customizations
include mousepad.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/Mousepad

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc

include whitelist-var-common.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
protocol unix
seccomp
shell none
tracelog

private-bin mousepad
private-dev
private-lib
private-tmp
