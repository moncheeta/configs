#!/usr/bin/env fish

# adjustments
## fish
set fish_greeting
set -g hydro_symbol_prompt "\$"
set -g hydro_symbol_git_dirty "*"
set -g hydro_symbol_git_ahead ">"
set -g hydro_symbol_git_behind "<"

## xdg
if test -z "$XDG_RUNTIME_DIR"
    set -g XDG_RUNTIME_DIR $(mktemp -d /tmp/$(id -u)-runtime-dir.XXX)
end

## gpg
set -g GPG_TTY $(tty)

# aliases
## system
alias bri "light -SO"
alias vol "volume"
alias net "nmtui"
alias blue "bluetuith"
alias slp "swaylock --fingerprint &; sudo su -c \"echo 'freeze' > /sys/power/state\""
alias res "loginctl reboot"
alias shut "loginctl poweroff"

## files
alias up "cd .."
alias ls "eza --git"
alias l "eza -l --git"
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
alias ed "$EDITOR"
alias web "$BROWSER"

### system
alias top "htop"
alias dsk "duf"

## development
alias zig "/home/moncheeta/sdk/zig-bootstrap/out/zig-native-linux-gnu-native/zig"

### desktop environment
alias wm "dbus-launch --exit-with-session river"

### office
#alias mail "himalaya"
alias vw "glow"
alias pst "present"
alias ss "sc-im"

### media
alias mus "cmus"
alias play "playerctl play"
alias pause "playerctl pause"
alias skip "playerctl next"
alias rewind "playerctl previous"

## git
alias clone "gh repo clone"
alias state "git status"
alias dif "git diff"
alias add "git add"
alias commit "git commit"
alias push "git push"
alias pull "git pull"
alias merge "git merge"
alias rebase "git rebase"
alias branch "git branch"
alias change "git checkout"
alias worktree "git worktree"

### github
alias dash "gh dash"
alias repo "gh repo"
alias issue "gh issue"
alias pr "gh pr"
alias release "gh release"

# init
zoxide init fish | source

