# Created by newuser for 5.7.1
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

POWERLEVEL9K_COLOR_SCHEME='dark'
POWERLEVEL9K_USER_DEFAULT_BACKGROUND='83'
POWERLEVEL9K_USER_DEFAULT_FOREGROUND='0'
POWERLEVEL9K_STATUS_OK_BACKGROUND='238'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='6'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='8'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='10'
POWERLEVEL9K_TIME_BACKGROUND="242"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="240"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0
POWERLEVEL9K_CUSTOM_PYTHON="echo -n '\uf81f' Python"
POWERLEVEL9K_CUSTOM_PYTHON_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_PYTHON_BACKGROUND="blue"
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="black"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="84"

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time time)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs)

EDITOR="vim"
alias vi="vim"
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'
alias less="bat"
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
alias clearcmuscache="rm /home/arskiy/.config/cmus/cache"
function weather(){ curl -s "wttr.in"}
function extract () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xvjf $1    ;;
      *.tar.gz)    tar xvzf $1    ;;
      *.tar.xz)    tar Jxvf $1    ;;
      *.bz2)       bunzip2 $1     ;;
      *.rar)       rar x $1       ;;
      *.gz)        gunzip $1      ;;
      *.tar)       tar xvf $1     ;;
      *.tbz2)      tar xvjf $1    ;;
      *.tgz)       tar xvzf $1    ;;
      *.zip)       unzip -d `echo $1 | sed 's/\(.*\)\.zip/\1/'` $1;;
      *.Z)         uncompress $1  ;;
      *.7z)        7z x $1        ;;
      *)           echo "don't know how to extract '$1'" ;;
    esac
  else
    echo "'$1' is not a valid file!"
  fi
}
alias paset="ponymix set-volume"
todo
PATH=$PATH:/home/arskiy/.local/bin