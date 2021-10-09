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

# jdk config
export JAVA_HOME=/home/zp/Documents/java/jdk1.7.0_60/
export JRE_HOME=/home/zp/Documents/java/jdk1.7.0_60/jre
export CLASSPATH=.:$CLASSPATH:$JAVA_HOME/lib:$JRE_HOME/lib
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH
export ANDROID_SDK=/home/zp/Documents/java/android/adt-bundle-linux-x86_64-20131030/sdk
export ECLIPSE=/home/zp/Documents/java/android/adt-bundle-linux-x86_64-20131030/eclipse
export PATH=$PATH:$ECLIPSE:$ANDROID_SDK

