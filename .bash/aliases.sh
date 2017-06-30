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
alias iia="cd ~/Documents/UA/3_year/iia"
alias so="cd ~/Documents/UA/3_year/so"
alias ams="cd ~/Documents/UA/3_year/ams"
alias _ar="cd ~/Documents/UA/3_year/ar"
alias ihc="cd ~/Documents/UA/3_year/ihc"
alias pei="cd ~/Documents/UA/3_year/pei"

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
