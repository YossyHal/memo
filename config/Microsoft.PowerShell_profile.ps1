# code $PROFILE

# set-alias vi  "C:\Program Files (x86)\vim82-kaoriya-win64\vim.exe"
# set-alias vim "C:\Program Files (x86)\vim82-kaoriya-win64\vim.exe" 
Set-Alias which "gcm"

function gita() {
    git add .
}
function gitb() {
    git branch
}
function gitd() {
    git diff
}
function gits() {
    git status
}

function la() {
    Get-ChildItem -Force
}

function activate() {
    .venv\Scripts\activate.ps1
}

function all() {
    git pull
    if (!$?) {
        return
    }
    git add .
    if (!$?) {
        return
    }
    git commit --allow-empty-message -m " "
    if (!$?) {
        return
    }
    git push
}

function empty() {
    git add .
    git commit --allow-empty-message -m " "
}
