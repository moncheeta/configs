#!/usr/bin/env fish

# adjustments
## fish
set fish_greeting

## gpg
set -g GPG_TTY $(tty)

# aliases
## system
alias bri "brightness"
alias vol "volume"
alias slp "loginctl suspend"
alias res "loginctl reboot"
alias shut "loginctl poweroff"

## file
alias ls "eza -A --git"
alias ll "eza -lA --git"
alias cp "cp -rv"
alias mv "mv -v"
alias rm "trash"
alias empty "trash-empty"
alias comp "ouch compress"
alias dcomp "ouch decompress"

## terminal
alias x "exit"
alias clr "clear"

## programs
### system
alias top "htop"
alias dsk "duf"
alias mus "cmus"

### office
alias ed "$EDITOR"
alias web "$BROWSER"
#alias mail "himalaya"
alias vw "glow"
alias pst "present"
alias ss "sc-im"

## git
alias clone "git clone"
alias dif "git status"
alias add "git add"
alias commit "git commit"
alias push "git push"
alias pull "git pull"
alias merge "git merge"
alias rebase "git rebase"
alias branch "git branch"
alias checkout "git checkout"
alias worktree "git worktree"

### github
alias dash "gh dash"
alias repo "gh repo"
alias issue "gh issue"
alias pr "gh pr"
alias release "gh release"

# init
eval $(zoxide init fish)

