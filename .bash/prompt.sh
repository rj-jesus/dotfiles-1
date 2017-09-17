# BASH PROMPT

add_venv_info () {
    if [[ "$VIRTUAL_ENV" != "" ]]; then
        PS1="(`basename \"$VIRTUAL_ENV\"`) $PS1"
    fi 
}

_prompt() {
    readonly OS_SYMBOL=''
    readonly GIT_BRANCH_SYMBOL='⎇ '
    readonly GIT_BRANCH_NORMAL_SYMBOL='✓'
    readonly GIT_BRANCH_CHANGED_SYMBOL='+'
    readonly GIT_STASH_SYMBOL="@"
    readonly GIT_PUSH_SYMBOL='↑'
    readonly GIT_PULL_SYMBOL='↓'

    _git_branch_info() {
        local branch="$(git symbolic-ref --short HEAD 2>/dev/null || git describe --tags --always 2>/dev/null)"
        [ -n "$branch" ] || return

        local marks=" $GIT_BRANCH_NORMAL_SYMBOL"

        # Check if branch is modified.
        [ -n "$(git status --porcelain)" ] && marks=" $GIT_BRANCH_CHANGED_SYMBOL"

        # Compute how many commits local branch is ahead/behind of remote branch.
        local stat="$(git status --porcelain --branch | grep '^##' | grep -o '\[.\+\]$')"
        local aheadN="$(echo $stat | grep -o 'ahead \d\+' | grep -o '\d\+')"
        local behindN="$(echo $stat | grep -o 'behind \d\+' | grep -o '\d\+')"
        [ -n "$aheadN" ] && marks+=" $GIT_PUSH_SYMBOL$aheadN"
        [ -n "$behindN" ] && marks+=" $GIT_PULL_SYMBOL$behindN"

        # Print the git branch segment without a trailing newline
        printf " $GIT_BRANCH_SYMBOL $branch$marks "
    }

    ps1() {
        if [ $? -eq 0 ]; then
            local BG_EXIT="$GREEN_BACKGROUND"
        else
            local BG_EXIT="$RED_BACKGROUND"
        fi

        PS1="\[$LIGHT_RED\]\u \[$WHITE\]at \[$LIGHT_BLUE\]\h \[$NORMAL\]" # User@host
        PS1+="\[$WHITE\]in \[$LIGHT_GREY_BACKGROUND\] \w \[$NORMAL\]" # Directory

        if [[ -z $branch ]]; then
            PS1+="\[$GOLD\]\[$GREY_BACKGROUND\]\[$BOLD\]$(_git_branch_info)\[$NORMAL\]" # Git Branch Info.
        fi

        PS1+="\n\[$BG_EXIT\] $OS_SYMBOL \[$NORMAL\] "

        add_venv_info
    }

    PROMPT_COMMAND=ps1
}

_prompt
unset _prompt
