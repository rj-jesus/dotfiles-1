# Aliases
alias finder="open -a Finder"
alias cask="brew cask"
alias lla='ls -la'
alias mkdir='mkdir -pv'
alias psp='ps aux | grep'
alias gcca='gcc -ansi -Wall'
alias reload='source ~/.bashrc' 
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Shortcuts
alias ua="cd ~/Documents/UA"
alias proj="cd ~/Documents/Projects"
alias viegy="cd ~/Documents/Projects/viegy"
alias cv="cd ~/Documents/UA/4_year/cv"
alias ara="cd ~/Documents/UA/4_year/ara"
alias aca="cd ~/Documents/UA/4_year/aca"
alias seg="cd ~/Documents/UA/4_year/security"
alias edc="cd ~/Documents/UA/4_year/edc"

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

# Airport utility
alias airport-bssid="$HOME/.utils/airport-bssid-master/Build/Release/airport-bssid"
alias sardoal-floor="$HOME/.utils/airport-bssid-master/Build/Release/airport-bssid en0 9c:97:26:e5:08:05 234598508"
alias sardoal-first="$HOME/.utils/airport-bssid-master/Build/Release/airport-bssid en0 94:44:52:c2:33:ba 234598508"
