# # ~/.bashrc: executed by bash(1) for non-login shells.
# # see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# # for examples
#
# # If not running interactively, don't do anything
# case $- in
#     *i*) ;;
#       *) return;;
# esac
#
# # don't put duplicate lines or lines starting with space in the history.
# # See bash(1) for more options
# HISTCONTROL=ignoreboth
#
# # append to the history file, don't overwrite it
# shopt -s histappend
#
# # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
# HISTSIZE=1000
# HISTFILESIZE=2000
#
# # check the window size after each command and, if necessary,
# # update the values of LINES and COLUMNS.
# shopt -s checkwinsize
#
# # If set, the pattern "**" used in a pathname expansion context will
# # match all files and zero or more directories and subdirectories.
# #shopt -s globstar
#
# # make less more friendly for non-text input files, see lesspipe(1)
# [ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
#
# # set variable identifying the chroot you work in (used in the prompt below)
# if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
#     debian_chroot=$(cat /etc/debian_chroot)
# fi
#
# # set a fancy prompt (non-color, unless we know we "want" color)
# case "$TERM" in
#     xterm-color|*-256color) color_prompt=yes;;
# esac
#
# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
######################################################################################
# * SHOW COLORS IN TERMINAL
# This section is edited once you uncomment the
# force_color_prompt=yes line which is commented
# by default
######################################################################################
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
if [ "$TERM" = linux ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[s\033[0;0H\033[0;43;30m\033[K`tty`	`/home/$USER/.netconnect_titlebar`\033[0;43;30m	     \A     	\d	     AISWARYA\033[0m\033[u\]\[\033[K\033[1;32m\]\u \[\033[0;39m\]-\[\033[01;33m\] \w\[\033[0;35m\] \$\[\033[0;39m\]\033[00m '
    printf "\033]P00A0000\033]P1FF0000\n"
    clear
    printf "\n"
    export DISPLAY=:0
else
	PS1='${debian_chroot:+($debian_chroot)}\[\033[1;32m\]\u\[\033[00m\] - \[\033[01;34m\]\w\[\033[00m\] \$ '
fi
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt
######################################################################################
# # If this is an xterm set the title to user@host:dir
# case "$TERM" in
# xterm*|rxvt*)
#     PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#     ;;
# *)
#     ;;
# esac
#
# # enable color support of ls and also add handy aliases
# if [ -x /usr/bin/dircolors ]; then
#     test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
#     alias ls='ls --color=auto'
#     #alias dir='dir --color=auto'
#     #alias vdir='vdir --color=auto'
#
#     alias grep='grep --color=auto'
#     alias fgrep='fgrep --color=auto'
#     alias egrep='egrep --color=auto'
# fi
#
# # colored GCC warnings and errors
# #export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
#
# # some more ls aliases
# # alias ll='ls -lF'
# alias la='ls -A'
# alias l='ls -CF'
#
# # Add an "alert" alias for long running commands.  Use like so:
# #   sleep 10; alert
# alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
#
######################################################################################
# * USEFUL ALIASES
# As mentioned below this section, they can be added into ~/.bash_aliases
# keeps this file concise
# not all of them maybe useful for you do edit and filter before using
######################################################################################
alias ll='ls -lFh' # show file sizes and list
alias wget='wget -c' # always use continue option to resume if incomplete download exists
alias rsync='rsync -v' # always use verbose mode
alias vpn_start='sudo openconnect vpn.something.foo.bars -u <username>' # regularly used vpn
alias ssh_remote='ssh remote@xx.xx.xx.xx' # regularly used remote server
alias copy_remote='rsync remote@xx.xx.xx.xx:$1 $2' # regularly used remote server
#                                                 # usage: copy_remote ":<source path>" "<dest path>"
######################################################################################
#
# # Alias definitions.
# # You may want to put all your additions into a separate file like
# # ~/.bash_aliases, instead of adding them here directly.
# # See /usr/share/doc/bash-doc/examples in the bash-doc package.
#
# if [ -f ~/.bash_aliases ]; then
#     . ~/.bash_aliases
# fi
#
# # enable programmable completion features (you don't need to enable
# # this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# # sources /etc/bash.bashrc).
# if ! shopt -oq posix; then
#   if [ -f /usr/share/bash-completion/bash_completion ]; then
#     . /usr/share/bash-completion/bash_completion
#   elif [ -f /etc/bash_completion ]; then
#     . /etc/bash_completion
#   fi
# fi
######################################################################################
# * EDIT PS2 PROMPT
# This line edits PS2 which is the prompt that is displayed when a line
# is not complete and terminal is wating for input for example, if you type
# "if [ <some condition> ]; then" it will print the PS2 string and wait
######################################################################################
PS2='... '
######################################################################################
######################################################################################
# * ALERT UPON NEW REMOTE LOGIN
# This is a simple function alerts you when there is a new remote login
# when there is an active ssh terminal, or screen session for example
# it parses the string in the who -m (same as who am i) output
######################################################################################
string=`who am i`
i=$((${#string}-1))
if [ "${string:$i:1}" = ")" ]; then
	espeak -v f1 "Remote Login Detected." &
fi
# disables ixon
# if ixon ssh terminal, ^S freezes input reception until ^Q is received
stty -ixon
######################################################################################
######################################################################################
# * SHOW GIT ACTIVE GIT BRANCH
# this shows up when you enter a direstory initialized with git
#  ie. it contatins a .git dir
# if two terminals are open and git checkout is done in one the name will change
# on the other only after the PS1 is printed again eg. press enter
######################################################################################
parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/-\1/'
}
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u \[\033[01;34m\]\w\[\033[01;31m\]$(parse_git_branch)\[\033[00m\]\$ \n'
######################################################################################
# * SHOW CONDA ENVIRONMENT
# This section is made when conda is set up
# make sure this is written after the git edit else conda set up changes are lost
# conda deactivate makes sure that each terminal does not enter base upon intit
######################################################################################
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/aiswarya/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/aiswarya/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/aiswarya/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/aiswarya/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
conda deactivate
######################################################################################
######################################################################################
# * SHOW SCREEN SESSIONS
# Display information about screen sessions upon startup
# useful if you have installed screen
######################################################################################
printf "$(screen -ls)\n"
######################################################################################
