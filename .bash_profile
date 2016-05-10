export PATH="/usr/local/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$(brew --prefix coreutils)/libexec/gnubin"

# Aliases to use gcc instead of clang
export CC=/usr/local/bin/gcc-5
export CXX=/usr/local/bin/g++-5
export CPP=/usr/local/bin/cpp-5
export LD=/usr/local/bin/gcc-5
alias c++=/usr/local/bin/c++-5
alias g++=/usr/local/bin/g++-5
alias gcc=/usr/local/bin/gcc-5
alias cpp=/usr/local/bin/cpp-5
alias ld=/usr/local/bin/gcc-5
alias cc=/usr/local/bin/gcc-5

# Uncomment the following if you want to use clang
#export CC=/usr/bin/gcc
#export CXX=/usr/bin/g++
#export CPP=/usr/bin/cpp
#export LD=/usr/bin/ld
#alias c++=/usr/bin/c++
#alias g++=/usr/bin/g++
#alias gcc=/usr/bin/gcc
#alias cpp=/usr/bin/cpp
#alias cc=/usr/bin/gcc
#alias ld=/usr/bin/ld

# Aliases
alias finder="open -a Finder"
#alias openterminal="cd "$(osascript -e 'tell app "Finder" to POSIX path of (insertion location as alias)')""
alias cask="brew cask"
alias lla='ls -la'
alias mkdir='mkdir -pv'
alias psp='ps aux | grep'
alias gcca='gcc -ansi -Wall'
alias reload='source ~/.bashrc' 

# Shortcuts
alias ua="cd ~/Documents/UA"
alias proj="cd ~/Documents/Projects"
alias ac2="cd ~/Documents/UA/Ano_2/AC2"
alias lfa="cd ~/Documents/UA/Ano_2/LFA"
alias algc="cd ~/Documents/UA/Ano_2/AlgC"

# Easier navigation
alias 1.="cd .."
alias 2.="cd ../.."
alias 3.="cd ../../.."
alias 4.="cd ../../../.."

# Get rid of those pesky .DS_Store files recursively
alias dsclean='find . -type f -name .DS_Store -delete'

# Flush your dns cache
alias flush='dscacheutil -flushcache'

# Show/hide hidden files
alias showhidden="defaults write com.apple.finder AppleShowAllFiles TRUE"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles FALSE"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
    source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

# Edit terminal prompt
GIT_PS1_SHOWDIRTYSTATE=true
GIT_CHAR="⎇  "
GIT_BEHIND_CHAR="↓ "
P_BOLD="\[$(tput bold)\]"
P_RESET="\[$(tput sgr0)\]"
C_BLUE="\[\e[0;34m\]"
C_YELLOW="\[\e[38;5;220m\]"
C_RED="\[\e[38;5;124m\]"
C_RESET="\[\e[0m\]"
BACK_GREY="\e[48;5;240m\]"
BACK_LGREY="\e[48;5;245m\]"
BACK_BLUE="\e[48;5;39m\]"

# Add name, host to terminal prompt
export PS1="$C_BLUE$P_BOLD\u@\h $C_RESET"

# Add git support to terminal prompt
export PS1="$PS1$BACK_GREY$C_YELLOW$P_BOLD"'$([[ ! -z "$(git symbolic-ref HEAD 2>/dev/null)" ]] && echo " $GIT_CHAR$(git symbolic-ref --short HEAD 2>/dev/null) ")$([[ ! -z "$(git status --porcelain 2>/dev/null)" ]] && echo "$GIT_BEHIND_CHAR")'"$C_RESET" 

# Add directory and new line to terminal prompt
 export PS1="$PS1$BACK_LGREY$P_BOLD \w $C_RESET\n$C_BLUE$P_BOLD \$ $C_RESET"

# Add colors to terminal commands
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
