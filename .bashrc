# Lucas Micheloni's .bashrc.

# MY GOD WHERE ARE ALL YOUR FUNCS?!?!?!?
# in ~/.scripts

# Load PATH
source ~/.env_vars
source ~/.scripts/bash-wakatime.sh

# Start X if on tty1
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
fi

source ~/.funcs

#
# load *some* aliases
#
source ~/.aliases

todo
fortune | cowsay | lolcat
ls -t
