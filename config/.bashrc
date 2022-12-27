# Git
alias gita='git add .'
alias gitb='git branch'
alias gitd='git diff'
alias gitl='git log'
alias gits='git status'

# General alias
alias ii='explorer.exe .'
function empty() {
        git add .
        git commit --allow-empty-message -m " "
}
alias empty=empty

