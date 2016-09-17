# Colors
. "$HOME/.bash/colors.sh"

# Aliases
. "$HOME/.bash/aliases.sh"

# Command Prompt (http://jonisalonen.com/2012/your-bash-prompt-needs-this)
. "$HOME/.bash/prompt.sh"

export PATH="/usr/local/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/Cellar/coreutils/8.25/bin/"

# Sugestion in case using a command not found
if brew command command-not-found-init > /dev/null; then
    eval "$(brew command-not-found-init)";
fi

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

# Add tab completion for many Bash commands
if which brew > /dev/null && [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
    source "$(brew --prefix)/share/bash-completion/bash_completion";
elif [ -f /etc/bash_completion ]; then
    source /etc/bash_completion;
fi;
