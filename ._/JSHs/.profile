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
if [  -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [  -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes FRTools bin if it exists
if [  -d "/home/._0/bin" ] ; then
    PATH="/home/._0/bin:$PATH"
fi

# set the Server Identity 
export  THE_SERVER="fr231d_ub20-FRApps-Dev01 (127.0.0.1)"

# set Node Vesion
export  NVS_HOME="/home/._0/.nvs"
source $NVS_HOME/nvs.sh 18 

export  PATH

echo "" 
 