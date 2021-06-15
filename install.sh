#!/bin/sh

# see https://github.com/thoughtbot/laptop/blob/master/mac
fancy_echo() {
  local fmt="$1"; shift

  # shellcheck disable=SC2059
  printf "\\n$fmt\\n" "$@"
}

if ! command -v brew >/dev/null; then
  fancy_echo "Installing Homebrew ..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

fancy_echo "Updating Homebrew formulae..."

brew update
brew bundle --file=- <<EOF

tap "homebrew/cask-fonts"
tap "neovim/neovim"
tap "thoughtbot/formulae"

brew "bat"
brew "diff-so-fancy"
brew "exa"
brew "fish"
brew "gh"
brew "git"
brew "git-delta"
brew "git-extras"
brew "neovim", args: ["HEAD"]
brew "rcm"
brew "reattach-to-user-namespace"
brew "rg"
brew "tmux"
brew "tree"
brew "yarn"
brew "zoxide", args: ["force"]

cask "discord"
cask "docker"
cask "slack"
cask "spotify"

cask "font-fira-code-nerd-font"
EOF

brew cleanup

# TODO: We need to change the shell to fish to access the omf command.
# We might want to run this after the initial install
# if ! command -v omf >/dev/null; then
#   fancy_echo "Installing oh-my-fish..."
#   curl -L https://get.oh-my.fish | fish
#   omf install https://github.com/jhillyerd/plugin-git
# fi

fancy_echo "Linking iCloud Drive..."
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/ ~/iCloud
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/Downloads/ ~/Downloads

fancy_echo "Linking dotfiles..."
rcup -d ~/dotfiles -v

fancy_echo "Configuring asdf version manager..."

add_or_update_asdf_plugin() {
  local name="$1"

  if ! asdf plugin-list | grep -Fq "$name"; then
    asdf plugin-add "$name"
  else
    asdf plugin-update "$name"
  fi
}

add_or_update_asdf_plugin "golang"
add_or_update_asdf_plugin "java"
add_or_update_asdf_plugin "nodejs"

# This will install languages based on .tool-versions
asdf install

fancy_echo "Configuring MacOS..."
# This will set Safe Sleep to only occur when your battery is critically low.
# It will also make sure the Safe Sleep timer implemented to comply with EU
# power standards is disabled just in case.
# @see https://www.reddit.com/r/mac/comments/2ehsjh/how_do_i_turn_off_safe_sleep_mode/
sudo pmset -a hibernatemode 3 && sudo pmset -a autopoweroff 0
