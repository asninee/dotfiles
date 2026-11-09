#!/bin/sh
# Symlink every tracked config into place. Safe to re-run.
set -e
repo="$(cd "$(dirname "$0")" && pwd)"
ghostty="$HOME/Library/Application Support/com.mitchellh.ghostty"

link() {
  mkdir -p "$(dirname "$2")"
  ln -sfn "$repo/$1" "$2"
  echo "$2 -> $1"
}

link fish/config.fish            "$HOME/.config/fish/config.fish"
link fish/conf.d/00-settings.fish "$HOME/.config/fish/conf.d/00-settings.fish"
link fish/functions/sd.fish      "$HOME/.config/fish/functions/sd.fish"
link fish/functions/search.fish  "$HOME/.config/fish/functions/search.fish"
link fish/fish_plugins           "$HOME/.config/fish/fish_plugins"
link zed/settings.json           "$HOME/.config/zed/settings.json"
link ghostty/config              "$ghostty/config"
link mise/config.toml            "$HOME/.config/mise/config.toml"
link git/gitconfig               "$HOME/.gitconfig"
link git/gitignore_global        "$HOME/.gitignore_global"
link git/gitmessage              "$HOME/.gitmessage"
link Brewfile                    "$HOME/Brewfile"
