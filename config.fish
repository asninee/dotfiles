if status is-interactive
  # Commands to run in interactive sessions can go here
end

# fzf
fzf --fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# pnpm
set -gx PNPM_HOME "/Users/nine96/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

# aliases
alias fishrc="zed ~/.config/fish/config.fish"
alias reload="source ~/.config/fish/config.fish"
alias ls="eza"
alias search="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' | xargs zed"
alias ll="eza -l -g --git"
alias llt="eza -1 --tree --git-ignore"
alias sd="cd ~ && cd (fd --type d | fzf)"

# theming
set hydro_color_pwd FFC799
set hydro_color_git FFFFFF
set hydro_color_error ff8080
set hydro_color_prompt A0A0A0
set hydro_color_duration 99FFE4
set -g fish_greeting
set --global fish_prompt_pwd_dir_length 0
