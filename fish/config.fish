fish_add_path "$HOME/.local/bin"

status is-interactive; or return

mise activate fish | source
source "$__fish_config_dir/fzf.fish"

abbr -a fishrc 'nano ~/.config/fish/config.fish'
abbr -a reload 'source ~/.config/fish/config.fish'
abbr -a ls eza
abbr -a ll 'eza -l -g --git'
abbr -a llt 'eza -1 --tree --git-ignore'

set -g fish_greeting
