# Colors
. "$HOME/.bash/colors.sh"

# Aliases
. "$HOME/.bash/aliases.sh"

# Command Prompt (http://jonisalonen.com/2012/your-bash-prompt-needs-this)
. "$HOME/.bash/prompt.sh"

export PATH="/usr/local/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/Cellar/coreutils/8.25/bin:/usr/local/opt/curl/bin:/usr/local/sbin"
export MANPATH="$MANPATH:/usr/local/man/"
export VLC_PLUGIN_PATH="/Applications/VLC.app/Contents/MacOS/plugins"

# Homebrew privacy
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha

# Sugestion in case using a command not found
if brew command command-not-found-init > /dev/null; then
    eval "$(brew command-not-found-init)";
fi

# Aliases to use gcc instead of clang
export CC=/usr/local/bin/gcc-7
export CXX=/usr/local/bin/g++-7
export CPP=/usr/local/bin/cpp-7
export LD=/usr/local/bin/gcc-7
alias c++=/usr/local/bin/c++-7
alias g++=/usr/local/bin/g++-7
alias gcc=/usr/local/bin/gcc-7
alias cpp=/usr/local/bin/cpp-7
alias ld=/usr/local/bin/gcc-7
alias cc=/usr/local/bin/gcc-7

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

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
    source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;

