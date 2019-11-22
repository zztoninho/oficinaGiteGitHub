# Enable tab completion
source ~/git-completion.bash

# colors!
reset="\[\033[0m\]"

# Regular Colors
black="\[\033[0;30m\]"        # Black
red="\[\033[0;31m\]"          # Red
green="\[\033[0;32m\]"        # Green
yellow="\[\033[0;33m\]"       # Yellow
blue="\[\033[0;34m\]"         # Blue
purple="\[\033[0;35m\]"       # Purple
cyan="\[\033[0;36m\]"         # Cyan
white="\[\033[0;37m\]"        # White

# Bold
bblack="\[\033[1;30m\]"       # Black
bred="\[\033[1;31m\]"         # Red
bgreen="\[\033[1;32m\]"       # Green
byellow="\[\033[1;33m\]"      # Yellow
bblue="\[\033[1;34m\]"        # Blue
bpurple="\[\033[1;35m\]"      # Purple
bcyan="\[\033[1;36m\]"        # Cyan
bwhite="\[\033[1;37m\]"       # White

# High Intensty
iblack="\[\033[0;90m\]"       # Black
ired="\[\033[0;91m\]"         # Red
igreen="\[\033[0;92m\]"       # Green
iyellow="\[\033[0;93m\]"      # Yellow
iblue="\[\033[0;94m\]"        # Blue
ipurple="\[\033[0;95m\]"      # Purple
icyan="\[\033[0;96m\]"        # Cyan
iwhite="\[\033[0;97m\]"       # White

# Change command prompt
source ~/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
# '\T' adds time 12h
export PS1="$ipurple\u$green\$(__git_ps1)$blue \W $ $reset"

export GIT_SSL_NO_VERIFY=true
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"