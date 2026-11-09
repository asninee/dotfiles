function search
    fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}' | xargs zed
end
