if [ -f "$HOME/.profile" ]; then
    . "$HOME/.profile"
fi

if [ -d "$HOME/.local/bin" ]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

alias much=git
alias many=git
alias such=git
alias wow=git status