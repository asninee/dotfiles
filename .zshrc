export ZSH="$HOME/.oh-my-zsh"

# https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="kennethreitz"

zstyle ":omz:update" mode auto

plugins=(git zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# bun completions
[ -s "/Users/nine96/.bun/_bun" ] && source "/Users/nine96/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/nine96/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# fnm
eval "$(fnm env --use-on-cd)"

# aliases
alias zshrc="zed ~/.zshrc"
alias reload="source ~/.zshrc"
alias ls="eza"
alias search="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
alias ll="eza -l -g --icons --git"
alias llt="eza -1 --icons --tree --git-ignore"
alias sd="cd \$(fd --type d | fzf)"
