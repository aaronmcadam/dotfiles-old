# General
alias ... "cd ../../.."
alias c "clear"
alias co "code"
alias l "ls -lah"
alias r "rm"
alias rr "rm -rf"
alias v "nvim"
alias v. "nvim ."
alias fr "fish"
alias change-bindings "v ~/.config/omf/key_bindings.fish"
alias cat "bat"
alias ag "rg"

# JavaScript
abbr -a n "npm install"
abbr -a nt "npm test"
abbr -a ntw "npm test -- --watch"
abbr -a y "yarn"
abbr -a yc "yarn typecheck"
abbr -a ys "yarn start"
abbr -a ysb "yarn storybook"
abbr -a yt "yarn test"
abbr -a ytw "yarn test --watch"
abbr -a yta "yarn test:all"
abbr -a yv "yarn validate"
abbr -a yvc "yarn validate:ci"

# Git
alias gdb "git branch | fzf -m | xargs -n 1 git branch -D"
abbr -a grbi git rebase --interactive
abbr -a grbim git rebase --interactive master
abbr -a grbil git rebase --interactive HEAD~2
abbr -a s "git status -s"
abbr -a h "gh"
abbr -a hb "gh repo view --web"
abbr -a hc "gh repo clone"

# Tools
abbr -a ydl "youtube-dl"
alias tat "~/.bin/tat"

# Hydra and Golem
abbr -a build-golem-win "GOOS=windows GOARCH=x64 go build -o golem.exe"
