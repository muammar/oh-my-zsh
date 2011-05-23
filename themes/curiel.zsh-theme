# ZSH Theme - Preview: 
#
function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '%%'
}

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n@%m%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%}${PWD/#$HOME/~}%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'
local current_char='$(prompt_char)%{$reset_color%}'

PROMPT="╭─${user_host} ${current_dir} ${git_branch}
╰─%B${current_char}%b "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
