export EDITOR=vim
export VIEWER=vim

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
function parse_git_branch_and_add_brackets {
 git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \[\1\]/'
}
GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
YELLOW="\[$(tput setaf 3)\]"
PS1="${GREEN}\w${RESET}${YELLOW}\$(parse_git_branch_and_add_brackets)${RESET} \$ "
