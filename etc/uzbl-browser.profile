# Firejail profile for uzbl-browser
# This file is overwritten after every install/update
# Persistent local customizations
include uzbl-browser.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/uzbl
noblacklist ${HOME}/.gnupg
noblacklist ${HOME}/.local/share/uzbl

# Allow python (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/python2*
noblacklist ${PATH}/python3*
noblacklist /usr/lib/python2*
noblacklist /usr/lib/python3*
noblacklist /usr/local/lib/python2*
noblacklist /usr/local/lib/python3*

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-programs.inc

mkdir ${HOME}/.config/uzbl
mkdir ${HOME}/.gnupg
mkdir ${HOME}/.local/share/uzbl
mkdir ${HOME}/.password-store
whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/uzbl
whitelist ${HOME}/.gnupg
whitelist ${HOME}/.local/share/uzbl
whitelist ${HOME}/.password-store
include whitelist-common.inc

caps.drop all
netfilter
nodvd
nonewprivs
noroot
notv
protocol unix,inet,inet6
seccomp
tracelog
